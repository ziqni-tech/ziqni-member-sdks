/**
 * Ziqni Gamification Cloud API
 * This is the gamification cloud for Ziqni
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', process.cwd()+'/src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require(process.cwd()+'/src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.ZiqniTechGamificationApiClient);
  }
}(this, function(expect, ZiqniTechGamificationApiClient) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new ZiqniTechGamificationApiClient.AchievementFilter();
  });

  var getProperty = function(object, getter, property) {
    // Use getter method if present; otherwise, get the property directly.
    if (typeof object[getter] === 'function')
      return object[getter]();
    else
      return object[property];
  }

  var setProperty = function(object, setter, property, value) {
    // Use setter method if present; otherwise, set the property directly.
    if (typeof object[setter] === 'function')
      object[setter](value);
    else
      object[property] = value;
  }

  describe('AchievementFilter', function() {
    it('should create an instance of AchievementFilter', function() {
      // uncomment below and update the code to test AchievementFilter
      //var instance = new ZiqniTechGamificationApiClient.AchievementFilter();
      //expect(instance).to.be.a(ZiqniTechGamificationApiClient.AchievementFilter);
    });

    it('should have the property productIds (base name: "productIds")', function() {
      // uncomment below and update the code to test the property productIds
      //var instance = new ZiqniTechGamificationApiClient.AchievementFilter();
      //expect(instance).to.be();
    });

    it('should have the property tags (base name: "tags")', function() {
      // uncomment below and update the code to test the property tags
      //var instance = new ZiqniTechGamificationApiClient.AchievementFilter();
      //expect(instance).to.be();
    });

    it('should have the property startDate (base name: "startDate")', function() {
      // uncomment below and update the code to test the property startDate
      //var instance = new ZiqniTechGamificationApiClient.AchievementFilter();
      //expect(instance).to.be();
    });

    it('should have the property endDate (base name: "endDate")', function() {
      // uncomment below and update the code to test the property endDate
      //var instance = new ZiqniTechGamificationApiClient.AchievementFilter();
      //expect(instance).to.be();
    });

    it('should have the property ids (base name: "ids")', function() {
      // uncomment below and update the code to test the property ids
      //var instance = new ZiqniTechGamificationApiClient.AchievementFilter();
      //expect(instance).to.be();
    });

    it('should have the property status (base name: "status")', function() {
      // uncomment below and update the code to test the property status
      //var instance = new ZiqniTechGamificationApiClient.AchievementFilter();
      //expect(instance).to.be();
    });

    it('should have the property sortBy (base name: "sortBy")', function() {
      // uncomment below and update the code to test the property sortBy
      //var instance = new ZiqniTechGamificationApiClient.AchievementFilter();
      //expect(instance).to.be();
    });

    it('should have the property skip (base name: "skip")', function() {
      // uncomment below and update the code to test the property skip
      //var instance = new ZiqniTechGamificationApiClient.AchievementFilter();
      //expect(instance).to.be();
    });

    it('should have the property limit (base name: "limit")', function() {
      // uncomment below and update the code to test the property limit
      //var instance = new ZiqniTechGamificationApiClient.AchievementFilter();
      //expect(instance).to.be();
    });

    it('should have the property statusCode (base name: "statusCode")', function() {
      // uncomment below and update the code to test the property statusCode
      //var instance = new ZiqniTechGamificationApiClient.AchievementFilter();
      //expect(instance).to.be();
    });

    it('should have the property constraints (base name: "constraints")', function() {
      // uncomment below and update the code to test the property constraints
      //var instance = new ZiqniTechGamificationApiClient.AchievementFilter();
      //expect(instance).to.be();
    });

  });

}));
