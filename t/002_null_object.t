use strict;
use warnings;

use Test::More tests => 10;

my $CLASS = 'Tree::Simple';
use_ok( $CLASS );

my $NULL_CLASS = $CLASS . '::Null';

my $obj = $NULL_CLASS->new;
isa_ok( $obj, $NULL_CLASS );
isa_ok( $obj, $CLASS );

ok( !$obj, "The null object is false" );
TODO: {
    local $TODO = "Need to figure out a way to have an object evaluate as undef";
    ok( !defined $obj, " ... and undefined" );
}
ok( $obj eq "", " .. and stringifies to the empty string" );
ok( $obj == 0, " ... and numifies to zero" );

can_ok( $obj, 'some_random_method' );
my $val = $obj->some_random_method;
is( $val, $obj, "The return value of any method call on the null object is the null object" );

is( $obj->method1->method2, $obj, "Method chaining works" );
