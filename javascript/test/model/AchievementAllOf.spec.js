/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
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
    factory(root.expect, root.ZiqniMemberApi);
  }
}(this, function(expect, ZiqniMemberApi) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new ZiqniMemberApi.AchievementAllOf();
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

  describe('AchievementAllOf', function() {
    it('should create an instance of AchievementAllOf', function() {
      // uncomment below and update the code to test AchievementAllOf
      //var instance = new ZiqniMemberApi.AchievementAllOf();
      //expect(instance).to.be.a(ZiqniMemberApi.AchievementAllOf);
    });

    it('should have the property name (base name: "name")', function() {
      // uncomment below and update the code to test the property name
      //var instance = new ZiqniMemberApi.AchievementAllOf();
      //expect(instance).to.be();
    });

    it('should have the property description (base name: "description")', function() {
      // uncomment below and update the code to test the property description
      //var instance = new ZiqniMemberApi.AchievementAllOf();
      //expect(instance).to.be();
    });

    it('should have the property termsAndConditions (base name: "termsAndConditions")', function() {
      // uncomment below and update the code to test the property termsAndConditions
      //var instance = new ZiqniMemberApi.AchievementAllOf();
      //expect(instance).to.be();
    });

    it('should have the property constraints (base name: "constraints")', function() {
      // uncomment below and update the code to test the property constraints
      //var instance = new ZiqniMemberApi.AchievementAllOf();
      //expect(instance).to.be();
    });

    it('should have the property maxNumberOfIssues (base name: "maxNumberOfIssues")', function() {
      // uncomment below and update the code to test the property maxNumberOfIssues
      //var instance = new ZiqniMemberApi.AchievementAllOf();
      //expect(instance).to.be();
    });

    it('should have the property scheduling (base name: "scheduling")', function() {
      // uncomment below and update the code to test the property scheduling
      //var instance = new ZiqniMemberApi.AchievementAllOf();
      //expect(instance).to.be();
    });

    it('should have the property dependantOn (base name: "dependantOn")', function() {
      // uncomment below and update the code to test the property dependantOn
      //var instance = new ZiqniMemberApi.AchievementAllOf();
      //expect(instance).to.be();
    });

    it('should have the property status (base name: "status")', function() {
      // uncomment below and update the code to test the property status
      //var instance = new ZiqniMemberApi.AchievementAllOf();
      //expect(instance).to.be();
    });

    it('should have the property statusCode (base name: "statusCode")', function() {
      // uncomment below and update the code to test the property statusCode
      //var instance = new ZiqniMemberApi.AchievementAllOf();
      //expect(instance).to.be();
    });

    it('should have the property memberTagsFilter (base name: "memberTagsFilter")', function() {
      // uncomment below and update the code to test the property memberTagsFilter
      //var instance = new ZiqniMemberApi.AchievementAllOf();
      //expect(instance).to.be();
    });

  });

}));
