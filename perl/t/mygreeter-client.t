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

    is $res->get_greeting, 'Good evening';
};

done_testing;
