use strict;
use warnings;

use Test::More tests => 6;

my $CLASS = 'Tree::Simple';
use_ok( $CLASS );

# Test plan:
# 1) Create with an empty new().
# 2) Create with an explicit undef
# 3) Create with passing ROOT in

my $tree = $CLASS->new();
isa_ok( $tree, $CLASS );

ok( $tree->is_root, "Node without a parent knows it's a root" );
