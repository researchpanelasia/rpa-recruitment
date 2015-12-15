use v6;
use lib 'lib';
use MyGreeter;
use Test;

subtest {
    my MyGreeter $greeter .= new;

    isa-ok $greeter, 'MyGreeter';

}, 'Test instance';

subtest {
    my MyGreeter $greeter .= new;

    subtest {
        my Str $res = $greeter.get_greeting;

        ok $res.chars > 0;

    }, 'Returns a string with length';

}, 'Test get_greeting';

done-testing;
