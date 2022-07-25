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
    instance = new ZiqniTechGamificationApiClient.MemberOptinRequest();
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

  describe('MemberOptinRequest', function() {
    it('should create an instance of MemberOptinRequest', function() {
      // uncomment below and update the code to test MemberOptinRequest
      //var instance = new ZiqniTechGamificationApiClient.MemberOptinRequest();
      //expect(instance).to.be.a(ZiqniTechGamificationApiClient.MemberOptinRequest);
    });

    it('should have the property entityId (base name: "entityId")', function() {
      // uncomment below and update the code to test the property entityId
      //var instance = new ZiqniTechGamificationApiClient.MemberOptinRequest();
      //expect(instance).to.be();
    });

    it('should have the property entityType (base name: "entityType")', function() {
      // uncomment below and update the code to test the property entityType
      //var instance = new ZiqniTechGamificationApiClient.MemberOptinRequest();
      //expect(instance).to.be();
    });

    it('should have the property action (base name: "action")', function() {
      // uncomment below and update the code to test the property action
      //var instance = new ZiqniTechGamificationApiClient.MemberOptinRequest();
      //expect(instance).to.be();
    });

  });

}));
