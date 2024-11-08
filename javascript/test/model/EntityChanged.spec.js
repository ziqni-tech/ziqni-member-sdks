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
    instance = new ZiqniMemberApi.EntityChanged();
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

  describe('EntityChanged', function() {
    it('should create an instance of EntityChanged', function() {
      // uncomment below and update the code to test EntityChanged
      //var instance = new ZiqniMemberApi.EntityChanged();
      //expect(instance).to.be.a(ZiqniMemberApi.EntityChanged);
    });

    it('should have the property entityId (base name: "entityId")', function() {
      // uncomment below and update the code to test the property entityId
      //var instance = new ZiqniMemberApi.EntityChanged();
      //expect(instance).to.be();
    });

    it('should have the property entityType (base name: "entityType")', function() {
      // uncomment below and update the code to test the property entityType
      //var instance = new ZiqniMemberApi.EntityChanged();
      //expect(instance).to.be();
    });

    it('should have the property changedAt (base name: "changedAt")', function() {
      // uncomment below and update the code to test the property changedAt
      //var instance = new ZiqniMemberApi.EntityChanged();
      //expect(instance).to.be();
    });

    it('should have the property typeOffChange (base name: "typeOffChange")', function() {
      // uncomment below and update the code to test the property typeOffChange
      //var instance = new ZiqniMemberApi.EntityChanged();
      //expect(instance).to.be();
    });

    it('should have the property changedBy (base name: "changedBy")', function() {
      // uncomment below and update the code to test the property changedBy
      //var instance = new ZiqniMemberApi.EntityChanged();
      //expect(instance).to.be();
    });

    it('should have the property displayName (base name: "displayName")', function() {
      // uncomment below and update the code to test the property displayName
      //var instance = new ZiqniMemberApi.EntityChanged();
      //expect(instance).to.be();
    });

    it('should have the property accountId (base name: "accountId")', function() {
      // uncomment below and update the code to test the property accountId
      //var instance = new ZiqniMemberApi.EntityChanged();
      //expect(instance).to.be();
    });

    it('should have the property sequenceNumber (base name: "sequenceNumber")', function() {
      // uncomment below and update the code to test the property sequenceNumber
      //var instance = new ZiqniMemberApi.EntityChanged();
      //expect(instance).to.be();
    });

    it('should have the property entityRefId (base name: "entityRefId")', function() {
      // uncomment below and update the code to test the property entityRefId
      //var instance = new ZiqniMemberApi.EntityChanged();
      //expect(instance).to.be();
    });

    it('should have the property entityParentId (base name: "entityParentId")', function() {
      // uncomment below and update the code to test the property entityParentId
      //var instance = new ZiqniMemberApi.EntityChanged();
      //expect(instance).to.be();
    });

    it('should have the property metadata (base name: "metadata")', function() {
      // uncomment below and update the code to test the property metadata
      //var instance = new ZiqniMemberApi.EntityChanged();
      //expect(instance).to.be();
    });

  });

}));
