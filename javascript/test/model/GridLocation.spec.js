/**
 * ZIQNI Member API
 * The ZIQNI Member-API is the primary resource used to build services and widgets for your members [customers, players, patients, etc]. The service is Stomp websokets with SOCK.js even though the system is decribed using OpenApi schema for convenience.
 *
 * The version of the OpenAPI document: 1.0.11
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
    instance = new ZiqniMemberApi.GridLocation();
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

  describe('GridLocation', function() {
    it('should create an instance of GridLocation', function() {
      // uncomment below and update the code to test GridLocation
      //var instance = new ZiqniMemberApi.GridLocation();
      //expect(instance).to.be.a(ZiqniMemberApi.GridLocation);
    });

    it('should have the property row (base name: "row")', function() {
      // uncomment below and update the code to test the property row
      //var instance = new ZiqniMemberApi.GridLocation();
      //expect(instance).to.be();
    });

    it('should have the property col (base name: "col")', function() {
      // uncomment below and update the code to test the property col
      //var instance = new ZiqniMemberApi.GridLocation();
      //expect(instance).to.be();
    });

  });

}));