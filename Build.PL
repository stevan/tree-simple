use 5.006;
use strict;
use warnings;

use Module::Build;

# ----------------

my $class = Module::Build->subclass(code => <<'EOF');

sub ACTION_authortest
{
	my($self) = @_;

	$self->depends_on('build');
	$self->depends_on('manifest');
	$self->depends_on('distmeta');

	$self->test_files( qw< t xt/author > );
	$self->recursive_test_files(1);

	$self->depends_on('test');

	return;
}
EOF

$class -> new
(
	dist_abstract  => 'A simple tree object',
	dist_author    => 'Stevan Little <stevan@cpan.org>',
	license        => 'perl',
	module_name    => 'Tree::Simple',
	build_requires =>
	{
		'Test::Exception' => '0.15',
		'Test::More' => 1.001014,
	},
	configure_requires =>
	{
		'Module::Build' => 0.4211,
	},
	requires =>
	{
		'constant' => 0,
		'Scalar::Util' => '1.18',
		'strict' => 0,
		'warnings' => 0,
	},
	meta_merge => {
		resources => {
		'repository' => 'https://github.com/stevan/tree-simple',
		'bugtracker' => 'https://github.com/stevan/tree-simple/issues',
		'license' => 'https://www.gnu.org/licenses/license-list.html#PerlLicense',
		},
	},
) -> create_build_script;
