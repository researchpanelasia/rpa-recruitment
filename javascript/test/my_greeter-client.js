'use strict';

var assert = require('assert');

it('instance', function() {
  var greeter = new MyGreeter.Client();
  assert.ok(greeter instanceof MyGreeter.Client);
});

it('instance', function() {
  var greeter = new MyGreeter.Client();
  assert.strictEqual(greeter.getGreeting(), 'Good morning');
});
