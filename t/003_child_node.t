use strict;
use warnings;

use Test::More tests => 10;

my $CLASS = 'Tree::Simple';
use_ok( $CLASS );

# Test plan:
# Add a single child, then retrieve it. 
# 1) Verify that one can retrieve a child added
# 2) Verify that the appropriate status methods reflect the change
# 

my $tree = $CLASS->new();
isa_ok( $tree, $CLASS );

my $child = $CLASS->new();
isa_ok( $child, $CLASS );

ok( $child->is_root, "The child is a root ... for now" );
ok( $child->is_leaf, "The child is also a leaf" );

is( $tree->add_child( $child ), $tree, "add_child method chains" );

ok( $tree->is_root, 'The root is still the root' );
ok( !$tree->is_leaf, 'The root is no longer a leaf' );

ok( !$child->is_root, 'The child is no longer a root' );
ok( $child->is_leaf, 'The child is still a leaf' );
