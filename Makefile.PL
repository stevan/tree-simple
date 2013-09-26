use 5.006;
use strict;
use warnings;

use ExtUtils::MakeMaker;

my(%params) =
(
	($] ge '5.005') ?
	(
		AUTHOR   => 'Stevan Little <stevan@cpan.org>',
		ABSTRACT => 'A simple tree object',
	) : (),
	clean =>
	{
		FILES => 'blib/* Makefile MANIFEST Tree-Simple-*'
	},
	dist =>
	{
		COMPRESS => 'gzip',
		SUFFIX   => 'gz'
	},
	DISTNAME  => 'Tree-Simple',
	NAME      => 'Tree::Simple',
	PL_FILES  => {},
	PREREQ_PM =>
	{
		'constant'        => 0,
		'Scalar::Util'    => '1.18',
		'strict'          => 0,
		'Test::Exception' => '0.15',
		'Test::More'      => '0.47'
		'warnings'        => 0,
	},
	VERSION_FROM => 'lib/Tree/Simple.pm',
);

if ( ($ExtUtils::MakeMaker::VERSION =~ /^\d\.\d\d$/) && ($ExtUtils::MakeMaker::VERSION > 6.30) )
{
	$params{LICENSE} = 'artistic_2';
}

if ($ExtUtils::MakeMaker::VERSION ge '6.46')
{
	$params{META_MERGE} =
	{
		resources =>
		{
			bugtracker => 'https://rt.cpan.org/Public/Dist/Display.html?Name=GraphViz2',
			license    => 'http://www.perlfoundation.org/artistic_license_2_0',
		},
	};
}

WriteMakefile(%params);
