use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		    => 'Tree::Simple',
    'VERSION_FROM'	=> 'lib/Tree/Simple.pm',  
    'PREREQ_PM'		=> {
		'Test::More'      => 0.47,
		'Test::Exception' => 0.15,
        'Scalar::Util'    => 1.10
		}
);
