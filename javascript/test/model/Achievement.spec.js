/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.17
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
    instance = new ZiqniMemberApi.Achievement();
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

  describe('Achievement', function() {
    it('should create an instance of Achievement', function() {
      // uncomment below and update the code to test Achievement
      //var instance = new ZiqniMemberApi.Achievement();
      //expect(instance).to.be.a(ZiqniMemberApi.Achievement);
    });

    it('should have the property id (base name: "id")', function() {
      // uncomment below and update the code to test the property id
      //var instance = new ZiqniMemberApi.Achievement();
      //expect(instance).to.be();
    });

    it('should have the property spaceName (base name: "spaceName")', function() {
      // uncomment below and update the code to test the property spaceName
      //var instance = new ZiqniMemberApi.Achievement();
      //expect(instance).to.be();
    });

    it('should have the property created (base name: "created")', function() {
      // uncomment below and update the code to test the property created
      //var instance = new ZiqniMemberApi.Achievement();
      //expect(instance).to.be();
    });

    it('should have the property customFields (base name: "customFields")', function() {
      // uncomment below and update the code to test the property customFields
      //var instance = new ZiqniMemberApi.Achievement();
      //expect(instance).to.be();
    });

    it('should have the property tags (base name: "tags")', function() {
      // uncomment below and update the code to test the property tags
      //var instance = new ZiqniMemberApi.Achievement();
      //expect(instance).to.be();
    });

    it('should have the property metadata (base name: "metadata")', function() {
      // uncomment below and update the code to test the property metadata
      //var instance = new ZiqniMemberApi.Achievement();
      //expect(instance).to.be();
    });

    it('should have the property name (base name: "name")', function() {
      // uncomment below and update the code to test the property name
      //var instance = new ZiqniMemberApi.Achievement();
      //expect(instance).to.be();
    });

    it('should have the property description (base name: "description")', function() {
      // uncomment below and update the code to test the property description
      //var instance = new ZiqniMemberApi.Achievement();
      //expect(instance).to.be();
    });

    it('should have the property termsAndConditions (base name: "termsAndConditions")', function() {
      // uncomment below and update the code to test the property termsAndConditions
      //var instance = new ZiqniMemberApi.Achievement();
      //expect(instance).to.be();
    });

    it('should have the property constraints (base name: "constraints")', function() {
      // uncomment below and update the code to test the property constraints
      //var instance = new ZiqniMemberApi.Achievement();
      //expect(instance).to.be();
    });

    it('should have the property maxNumberOfIssues (base name: "maxNumberOfIssues")', function() {
      // uncomment below and update the code to test the property maxNumberOfIssues
      //var instance = new ZiqniMemberApi.Achievement();
      //expect(instance).to.be();
    });

    it('should have the property scheduling (base name: "scheduling")', function() {
      // uncomment below and update the code to test the property scheduling
      //var instance = new ZiqniMemberApi.Achievement();
      //expect(instance).to.be();
    });

    it('should have the property status (base name: "status")', function() {
      // uncomment below and update the code to test the property status
      //var instance = new ZiqniMemberApi.Achievement();
      //expect(instance).to.be();
    });

    it('should have the property statusCode (base name: "statusCode")', function() {
      // uncomment below and update the code to test the property statusCode
      //var instance = new ZiqniMemberApi.Achievement();
      //expect(instance).to.be();
    });

    it('should have the property memberTagsFilter (base name: "memberTagsFilter")', function() {
      // uncomment below and update the code to test the property memberTagsFilter
      //var instance = new ZiqniMemberApi.Achievement();
      //expect(instance).to.be();
    });

    it('should have the property achievementDependencies (base name: "achievementDependencies")', function() {
      // uncomment below and update the code to test the property achievementDependencies
      //var instance = new ZiqniMemberApi.Achievement();
      //expect(instance).to.be();
    });

    it('should have the property productTagsFilter (base name: "productTagsFilter")', function() {
      // uncomment below and update the code to test the property productTagsFilter
      //var instance = new ZiqniMemberApi.Achievement();
      //expect(instance).to.be();
    });

    it('should have the property products (base name: "products")', function() {
      // uncomment below and update the code to test the property products
      //var instance = new ZiqniMemberApi.Achievement();
      //expect(instance).to.be();
    });

    it('should have the property iconLink (base name: "iconLink")', function() {
      // uncomment below and update the code to test the property iconLink
      //var instance = new ZiqniMemberApi.Achievement();
      //expect(instance).to.be();
    });

    it('should have the property bannerLink (base name: "bannerLink")', function() {
      // uncomment below and update the code to test the property bannerLink
      //var instance = new ZiqniMemberApi.Achievement();
      //expect(instance).to.be();
    });

    it('should have the property bannerLowResolutionLink (base name: "bannerLowResolutionLink")', function() {
      // uncomment below and update the code to test the property bannerLowResolutionLink
      //var instance = new ZiqniMemberApi.Achievement();
      //expect(instance).to.be();
    });

    it('should have the property bannerHighResolutionLink (base name: "bannerHighResolutionLink")', function() {
      // uncomment below and update the code to test the property bannerHighResolutionLink
      //var instance = new ZiqniMemberApi.Achievement();
      //expect(instance).to.be();
    });

    it('should have the property strategies (base name: "strategies")', function() {
      // uncomment below and update the code to test the property strategies
      //var instance = new ZiqniMemberApi.Achievement();
      //expect(instance).to.be();
    });

    it('should have the property optInStatus (base name: "optInStatus")', function() {
      // uncomment below and update the code to test the property optInStatus
      //var instance = new ZiqniMemberApi.Achievement();
      //expect(instance).to.be();
    });

  });

}));
