/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.10
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
    instance = new ZiqniMemberApi.ProductAllOf();
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

  describe('ProductAllOf', function() {
    it('should create an instance of ProductAllOf', function() {
      // uncomment below and update the code to test ProductAllOf
      //var instance = new ZiqniMemberApi.ProductAllOf();
      //expect(instance).to.be.a(ZiqniMemberApi.ProductAllOf);
    });

    it('should have the property id (base name: "id")', function() {
      // uncomment below and update the code to test the property id
      //var instance = new ZiqniMemberApi.ProductAllOf();
      //expect(instance).to.be();
    });

    it('should have the property spaceName (base name: "spaceName")', function() {
      // uncomment below and update the code to test the property spaceName
      //var instance = new ZiqniMemberApi.ProductAllOf();
      //expect(instance).to.be();
    });

    it('should have the property created (base name: "created")', function() {
      // uncomment below and update the code to test the property created
      //var instance = new ZiqniMemberApi.ProductAllOf();
      //expect(instance).to.be();
    });

    it('should have the property name (base name: "name")', function() {
      // uncomment below and update the code to test the property name
      //var instance = new ZiqniMemberApi.ProductAllOf();
      //expect(instance).to.be();
    });

    it('should have the property description (base name: "description")', function() {
      // uncomment below and update the code to test the property description
      //var instance = new ZiqniMemberApi.ProductAllOf();
      //expect(instance).to.be();
    });

    it('should have the property adjustmentFactor (base name: "adjustmentFactor")', function() {
      // uncomment below and update the code to test the property adjustmentFactor
      //var instance = new ZiqniMemberApi.ProductAllOf();
      //expect(instance).to.be();
    });

    it('should have the property productRefId (base name: "productRefId")', function() {
      // uncomment below and update the code to test the property productRefId
      //var instance = new ZiqniMemberApi.ProductAllOf();
      //expect(instance).to.be();
    });

    it('should have the property productType (base name: "productType")', function() {
      // uncomment below and update the code to test the property productType
      //var instance = new ZiqniMemberApi.ProductAllOf();
      //expect(instance).to.be();
    });

    it('should have the property iconLink (base name: "iconLink")', function() {
      // uncomment below and update the code to test the property iconLink
      //var instance = new ZiqniMemberApi.ProductAllOf();
      //expect(instance).to.be();
    });

    it('should have the property actionTypeAdjustmentFactors (base name: "actionTypeAdjustmentFactors")', function() {
      // uncomment below and update the code to test the property actionTypeAdjustmentFactors
      //var instance = new ZiqniMemberApi.ProductAllOf();
      //expect(instance).to.be();
    });

  });

}));