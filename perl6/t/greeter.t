use v6;
use lib 'lib';
use MyGreeter::Client;
use Test;

subtest {
    my MyGreeter::Client $greeter .= new;

    isa-ok $greeter, 'MyGreeter::Client';

}, 'Test instance';

subtest {
    my MyGreeter::Client $greeter .= new;

    subtest {
        my Str $res = $greeter.get-greeting;

        ok $res.chars > 0;

    }, 'Returns a string with length';

}, 'Test get-greeting';

done-testing;
