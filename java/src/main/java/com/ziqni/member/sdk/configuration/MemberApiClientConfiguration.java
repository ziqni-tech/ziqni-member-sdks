/*
 * Copyright (c) 2022. ZIQNI LTD registered in England and Wales, company registration number-09693684
 */
package com.ziqni.member.sdk.configuration;

        import com.fasterxml.jackson.databind.ObjectMapper;
        import com.ziqni.member.sdk.JSON;
        import com.ziqni.member.sdk.security.IdentityAuthorisationException;
        import com.ziqni.member.sdk.security.IdentityAuthorization;

        import java.util.Objects;

public class MemberApiClientConfiguration {

    private  Boolean loaded = false;

    //todo - replace this with member client
    private  String memberClientServerHost;
    private  Integer memberClientServerPort;
    private  String memberClientServerScheme;

    private  String identityAuthorizationToken;
    private IdentityAuthorization identityAuthorization;

    private  boolean isSecure;

    public  void load() {
        if (loaded) return;


        loaded = true;
    }

    public  String getMemberClientServerHost() {
        load();
        return memberClientServerHost;
    }

    public  Integer getMemberClientServerPort() {
        load();
        return memberClientServerPort;
    }

    public  String getMemberClientServerScheme() {
        load();
        return memberClientServerScheme;
    }

    public  boolean isSecure() {
        load();
        return isSecure;
    }

    public  IdentityAuthorization getIdentityAuthorization() {
        if(identityAuthorization == null) {
            identityAuthorizationToken = ConfigurationLoader.getParameter("member.client.access-token").orElse("");
            identityAuthorization = () -> identityAuthorizationToken;
        }
        return identityAuthorization;
    }

    public  void setIdentityAuthorization(IdentityAuthorization identityAuthorization) {
        this.identityAuthorization = identityAuthorization;
    }

    public Boolean getLoaded() {
        return loaded;
    }

    public MemberApiClientConfiguration setLoaded(Boolean loaded) {
        this.loaded = loaded;
        return this;
    }

    public MemberApiClientConfiguration setMemberClientServerHost(String memberClientServerHost) {
        this.memberClientServerHost = memberClientServerHost;
        return this;
    }

    public MemberApiClientConfiguration setMemberClientServerPort(Integer memberClientServerPort) {
        this.memberClientServerPort = memberClientServerPort;
        return this;
    }

    public MemberApiClientConfiguration setMemberClientServerScheme(String memberClientServerScheme) {
        this.memberClientServerScheme = memberClientServerScheme;
        return this;
    }

    public String getIdentityAuthorizationToken() {
        return identityAuthorizationToken;
    }

    public MemberApiClientConfiguration setIdentityAuthorizationToken(String identityAuthorizationToken) {
        this.identityAuthorizationToken = identityAuthorizationToken;
        return this;
    }

    public MemberApiClientConfiguration setSecure(boolean secure) {
        isSecure = secure;
        return this;
    }

    public  String getMemberBearerToken() throws IdentityAuthorisationException {
        return getIdentityAuthorization().getBearerToken();
    }

    public ObjectMapper createDefaultObjectMapper() {
        return JSON.getDefault().getMapper();
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof MemberApiClientConfiguration)) return false;
        MemberApiClientConfiguration that = (MemberApiClientConfiguration) o;
        return isSecure() == that.isSecure() && getLoaded().equals(that.getLoaded()) && getMemberClientServerHost().equals(that.getMemberClientServerHost()) && getMemberClientServerPort().equals(that.getMemberClientServerPort()) && getMemberClientServerScheme().equals(that.getMemberClientServerScheme()) && getIdentityAuthorizationToken().equals(that.getIdentityAuthorizationToken()) && getIdentityAuthorization().equals(that.getIdentityAuthorization());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getLoaded(), getMemberClientServerHost(), getMemberClientServerPort(), getMemberClientServerScheme(), getIdentityAuthorizationToken(), getIdentityAuthorization(), isSecure());
    }
}
