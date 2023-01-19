/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.1
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
    instance = new ZiqniMemberApi.Mission();
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

  describe('Mission', function() {
    it('should create an instance of Mission', function() {
      // uncomment below and update the code to test Mission
      //var instance = new ZiqniMemberApi.Mission();
      //expect(instance).to.be.a(ZiqniMemberApi.Mission);
    });

    it('should have the property entries (base name: "entries")', function() {
      // uncomment below and update the code to test the property entries
      //var instance = new ZiqniMemberApi.Mission();
      //expect(instance).to.be();
    });

    it('should have the property id (base name: "id")', function() {
      // uncomment below and update the code to test the property id
      //var instance = new ZiqniMemberApi.Mission();
      //expect(instance).to.be();
    });

    it('should have the property name (base name: "name")', function() {
      // uncomment below and update the code to test the property name
      //var instance = new ZiqniMemberApi.Mission();
      //expect(instance).to.be();
    });

    it('should have the property description (base name: "description")', function() {
      // uncomment below and update the code to test the property description
      //var instance = new ZiqniMemberApi.Mission();
      //expect(instance).to.be();
    });

    it('should have the property termsAndConditions (base name: "termsAndConditions")', function() {
      // uncomment below and update the code to test the property termsAndConditions
      //var instance = new ZiqniMemberApi.Mission();
      //expect(instance).to.be();
    });

    it('should have the property availableFrom (base name: "availableFrom")', function() {
      // uncomment below and update the code to test the property availableFrom
      //var instance = new ZiqniMemberApi.Mission();
      //expect(instance).to.be();
    });

    it('should have the property availableUntil (base name: "availableUntil")', function() {
      // uncomment below and update the code to test the property availableUntil
      //var instance = new ZiqniMemberApi.Mission();
      //expect(instance).to.be();
    });

    it('should have the property isCompleted (base name: "isCompleted")', function() {
      // uncomment below and update the code to test the property isCompleted
      //var instance = new ZiqniMemberApi.Mission();
      //expect(instance).to.be();
    });

    it('should have the property optInStatus (base name: "optInStatus")', function() {
      // uncomment below and update the code to test the property optInStatus
      //var instance = new ZiqniMemberApi.Mission();
      //expect(instance).to.be();
    });

  });

}));