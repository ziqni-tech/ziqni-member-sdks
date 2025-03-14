/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.19
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
    instance = new ZiqniMemberApi.MemberTokenRequest();
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

  describe('MemberTokenRequest', function() {
    it('should create an instance of MemberTokenRequest', function() {
      // uncomment below and update the code to test MemberTokenRequest
      //var instance = new ZiqniMemberApi.MemberTokenRequest();
      //expect(instance).to.be.a(ZiqniMemberApi.MemberTokenRequest);
    });

    it('should have the property apiKey (base name: "apiKey")', function() {
      // uncomment below and update the code to test the property apiKey
      //var instance = new ZiqniMemberApi.MemberTokenRequest();
      //expect(instance).to.be();
    });

    it('should have the property isReferenceId (base name: "isReferenceId")', function() {
      // uncomment below and update the code to test the property isReferenceId
      //var instance = new ZiqniMemberApi.MemberTokenRequest();
      //expect(instance).to.be();
    });

    it('should have the property origins (base name: "origins")', function() {
      // uncomment below and update the code to test the property origins
      //var instance = new ZiqniMemberApi.MemberTokenRequest();
      //expect(instance).to.be();
    });

    it('should have the property member (base name: "member")', function() {
      // uncomment below and update the code to test the property member
      //var instance = new ZiqniMemberApi.MemberTokenRequest();
      //expect(instance).to.be();
    });

    it('should have the property expires (base name: "expires")', function() {
      // uncomment below and update the code to test the property expires
      //var instance = new ZiqniMemberApi.MemberTokenRequest();
      //expect(instance).to.be();
    });

    it('should have the property disabledServices (base name: "disabledServices")', function() {
      // uncomment below and update the code to test the property disabledServices
      //var instance = new ZiqniMemberApi.MemberTokenRequest();
      //expect(instance).to.be();
    });

    it('should have the property languageKey (base name: "languageKey")', function() {
      // uncomment below and update the code to test the property languageKey
      //var instance = new ZiqniMemberApi.MemberTokenRequest();
      //expect(instance).to.be();
    });

    it('should have the property currencyKey (base name: "currencyKey")', function() {
      // uncomment below and update the code to test the property currencyKey
      //var instance = new ZiqniMemberApi.MemberTokenRequest();
      //expect(instance).to.be();
    });

    it('should have the property timeZoneOffset (base name: "timeZoneOffset")', function() {
      // uncomment below and update the code to test the property timeZoneOffset
      //var instance = new ZiqniMemberApi.MemberTokenRequest();
      //expect(instance).to.be();
    });

    it('should have the property includeActivesByEntity (base name: "includeActivesByEntity")', function() {
      // uncomment below and update the code to test the property includeActivesByEntity
      //var instance = new ZiqniMemberApi.MemberTokenRequest();
      //expect(instance).to.be();
    });

  });

}));
