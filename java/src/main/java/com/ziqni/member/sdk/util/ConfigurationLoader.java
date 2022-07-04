/*
 * Copyright (c) 2022. ZIQNI LTD registered in England and Wales, company registration number-09693684
 */
package com.ziqni.member.sdk.util;

import org.apache.commons.configuration2.Configuration;
import org.apache.commons.configuration2.FileBasedConfiguration;
import org.apache.commons.configuration2.PropertiesConfiguration;
import org.apache.commons.configuration2.builder.FileBasedConfigurationBuilder;
import org.apache.commons.configuration2.builder.fluent.Parameters;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

public abstract class ConfigurationLoader {

    private static final String ziqniEnvironmentVariablePrefix = "ZIQNI_";
    public static String DefaultConfigFileName = "application.properties";
    private static final String configFile = null;
    private static Map<String, String> cache;
    private static final Logger logger = LoggerFactory.getLogger(ConfigurationLoader.class);

    public static void loadFromFile(Boolean doNotOverwrite) {

        Parameters params = new Parameters();
        FileBasedConfigurationBuilder<FileBasedConfiguration> builder =
                new FileBasedConfigurationBuilder<FileBasedConfiguration>(PropertiesConfiguration.class)
                        .configure(params.properties()
                                .setFileName(Optional.ofNullable(getConfigFile()).orElse(DefaultConfigFileName)));

        logger.debug("Loaded config file [{}] from location [{}]", Optional.ofNullable(getConfigFile()).orElse(DefaultConfigFileName), builder.getFileHandler().getPath());

        try {
            Configuration config = builder.getConfiguration();
            var it = config.getKeys();

            if(ConfigurationLoader.cache == null)
                ConfigurationLoader.cache = new HashMap<>();

            while (it.hasNext()){
                var key = it.next();

                if(doNotOverwrite) {
                    logger.debug("Do not overwrite value set to [{}]. Checking in cache for key [{}]", doNotOverwrite, key);
                    var configValue = config.getString(key);
                    if(ConfigurationLoader.cache.putIfAbsent(key, configValue) != null){
                        logger.debug("Not found in cache, load parameter [{}] with value [{}] from file [{}]", key, configValue, Optional.ofNullable(getConfigFile()).orElse(DefaultConfigFileName));
                    }
                }
                else {
                    var configValue = config.getString(key);
                    ConfigurationLoader.cache.put(key, configValue);
                    logger.debug("Overwriting loaded parameter [{}] with value [{}] from file [{}]", key, configValue, Optional.ofNullable(getConfigFile()).orElse(DefaultConfigFileName));
                }
            }
        }
        catch(org.apache.commons.configuration2.ex.ConfigurationException cex) {
            throw new RuntimeException(cex);
        }

        assert cache != null;
        assert cache.size() > 0;
    }

    public static String getConfigFile() {
        return configFile;
    }

    public static Map<String, String> Parameters() {
        if(ConfigurationLoader.cache == null) {
            loadFromFile(true);
            assert ConfigurationLoader.cache.size() > 0;
        }

        return ConfigurationLoader.cache;
    }

    public static Optional<String> getParameter(String name){
        var param = Parameters().get(name);
        var found = Optional.ofNullable(param==null || param.isEmpty() ? getParameterFromEnvironment(name) : Parameters().get(name));

        if(found.isEmpty())
            logger.info("Parameter NOT FOUND for " + name);

        return found;
    }

    private static String getParameterFromEnvironment(String name) {
        var variableToCheck = ziqniEnvironmentVariablePrefix + name.toUpperCase().replace('.', '_');
        var envVariableValue = System.getenv(variableToCheck);
        logger.info("Parameter [{}] value retrieved from environment variables [{}]", variableToCheck, envVariableValue != null);

        return envVariableValue;

    }
}