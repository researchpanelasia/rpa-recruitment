use strict;
use utf8;
use warnings;
use Test::More;

use_ok 'MyGreeter::Client';

subtest 'Test instance' => sub {
    my $res = MyGreeter::Client->new;

    isa_ok $res, 'MyGreeter::Client';
};

subtest 'Test get_greeting' => sub {
    my $res = MyGreeter::Client->new;

    subtest 'Returns something with length' => sub {
        ok length $res->get_greeting > 0;
    };
};

done_testing;
