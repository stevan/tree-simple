use 5.006;
use strict;
use warnings;

use Module::Build;

Module::Build -> new
(
	dist_abstract  => 'A simple tree object',
	dist_author    => 'Stevan Little <stevan@cpan.org>',
	license        => 'perl',
	module_name    => 'Tree::Simple',
	build_requires =>
	{
		'Test::Exception' => '0.15',
		'Test::More'      => '0.47',
	},
	configure_requires =>
	{
		'Module::Build' => 0.40,
	},
	requires =>
	{
		'constant'     => 0,
		'Scalar::Util' => '1.18',
		'strict'       => 0,
		'warnings'     => 0,
	},
	meta_merge => {
		resources => {
			repository => 'https://github.com/stevan/tree-simple',
			bugtracker => 'https://github.com/stevan/tree-simple/issues',
			license    => 'https://www.gnu.org/licenses/license-list.html#PerlLicense',
		},
	},
) -> create_build_script;
