'use strict';

var assert = require('assert');
var MyGreeter = require('../src/MyGreeter.js');

it('instance', function() {
    var greeter = new MyGreeter.Client();
    assert.ok(greeter instanceof MyGreeter.Client);
});

it('getGreeting', function() {
    var greeter = new MyGreeter.Client();
    assert.strictEqual(greeter.getGreeting(), 'Good morning');
});
