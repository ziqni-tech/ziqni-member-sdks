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
    instance = new ZiqniMemberApi.EntityGraphNode();
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

  describe('EntityGraphNode', function() {
    it('should create an instance of EntityGraphNode', function() {
      // uncomment below and update the code to test EntityGraphNode
      //var instance = new ZiqniMemberApi.EntityGraphNode();
      //expect(instance).to.be.a(ZiqniMemberApi.EntityGraphNode);
    });

    it('should have the property name (base name: "name")', function() {
      // uncomment below and update the code to test the property name
      //var instance = new ZiqniMemberApi.EntityGraphNode();
      //expect(instance).to.be();
    });

    it('should have the property optInStatus (base name: "optInStatus")', function() {
      // uncomment below and update the code to test the property optInStatus
      //var instance = new ZiqniMemberApi.EntityGraphNode();
      //expect(instance).to.be();
    });

    it('should have the property constraints (base name: "constraints")', function() {
      // uncomment below and update the code to test the property constraints
      //var instance = new ZiqniMemberApi.EntityGraphNode();
      //expect(instance).to.be();
    });

    it('should have the property entityType (base name: "entityType")', function() {
      // uncomment below and update the code to test the property entityType
      //var instance = new ZiqniMemberApi.EntityGraphNode();
      //expect(instance).to.be();
    });

    it('should have the property entityId (base name: "entityId")', function() {
      // uncomment below and update the code to test the property entityId
      //var instance = new ZiqniMemberApi.EntityGraphNode();
      //expect(instance).to.be();
    });

    it('should have the property entityStatusCode (base name: "entityStatusCode")', function() {
      // uncomment below and update the code to test the property entityStatusCode
      //var instance = new ZiqniMemberApi.EntityGraphNode();
      //expect(instance).to.be();
    });

    it('should have the property entityStatus (base name: "entityStatus")', function() {
      // uncomment below and update the code to test the property entityStatus
      //var instance = new ZiqniMemberApi.EntityGraphNode();
      //expect(instance).to.be();
    });

    it('should have the property includes (base name: "includes")', function() {
      // uncomment below and update the code to test the property includes
      //var instance = new ZiqniMemberApi.EntityGraphNode();
      //expect(instance).to.be();
    });

  });

}));
