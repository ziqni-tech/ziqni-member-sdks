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
    instance = new ZiqniMemberApi.ActionTypeAdjustmentFactor();
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

  describe('ActionTypeAdjustmentFactor', function() {
    it('should create an instance of ActionTypeAdjustmentFactor', function() {
      // uncomment below and update the code to test ActionTypeAdjustmentFactor
      //var instance = new ZiqniMemberApi.ActionTypeAdjustmentFactor();
      //expect(instance).to.be.a(ZiqniMemberApi.ActionTypeAdjustmentFactor);
    });

    it('should have the property adjustmentFactor (base name: "adjustmentFactor")', function() {
      // uncomment below and update the code to test the property adjustmentFactor
      //var instance = new ZiqniMemberApi.ActionTypeAdjustmentFactor();
      //expect(instance).to.be();
    });

    it('should have the property actionTypeId (base name: "actionTypeId")', function() {
      // uncomment below and update the code to test the property actionTypeId
      //var instance = new ZiqniMemberApi.ActionTypeAdjustmentFactor();
      //expect(instance).to.be();
    });

  });

}));