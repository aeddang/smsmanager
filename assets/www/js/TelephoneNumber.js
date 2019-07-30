cordova.define("cordova/plugin/TelephoneNumber", function(require, exports, module) { //
//  PushNotification.js
//
// Based on the Push Notifications Cordova Plugin by Olivier Louvignes on 06/05/12.
// Modified by Max Konev on 18/05/12.
//
// Pushwoosh Push Notifications Plugin for Cordova iOS
// www.pushwoosh.com
//
// MIT Licensed

	var exec = require('cordova/exec');
    var TelephoneNumber = function () {};

    var TelephoneNumberError = function(code, message) {
        this.code = code || null;
        this.message = message || '';
    };

    TelephoneNumber.NO_TELEPHONE_NUMBER = 0;

    TelephoneNumber.prototype.get = function(success,fail) {
        exec(success,fail,"TelephoneNumber","get",[]);
    };

module.exports = new TelephoneNumber();

});

if(!window.plugins) {
    window.plugins = {};
}
if (!window.plugins.telephoneNumber) {
    var telephoneNumber = cordova.require("cordova/plugin/TelephoneNumber");
}