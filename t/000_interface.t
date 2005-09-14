use strict;
use warnings;

use Test::More tests => 4;

my $CLASS = 'Tree::Simple';
use_ok( $CLASS )
    or Test::More->builder->BAILOUT( "Cannot load $CLASS" );

# These tests verify that the API conforms to spec.

my %methods = (
    class => [ qw(
        new
    )],
    public => [ qw(
        is_root
    )],
#    private => [],
#    book_keeping => [],
);

# These are the class methods
can_ok( $CLASS, @{ $methods{class} } );

my $tree = $CLASS->new();
isa_ok( $tree, $CLASS );

can_ok( $tree, @{ $methods{public} } );
#can_ok( $tree, @{ $methods{private} } );
#can_ok( $tree, @{ $methods{book_keeping} } );
