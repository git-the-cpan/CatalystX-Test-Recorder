
use strict;
use warnings;



use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'CatalystX-Test-Recorder',
  NAME      => 'CatalystX::Test::Recorder',
  AUTHOR    => "Moritz\ Onken\ \<onken\@netcubed\.de\>",
  ABSTRACT  => "Generate\ tests\ from\ HTTP\ requests",
  VERSION   => '0.992',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'bsd') : ()),
  PREREQ_PM    => {
    "Moose::Role" => '0',
    "WWW::Mechanize" => '1.60',
    "Perl::Tidy" => '0',
    "List::Util" => '0',
    "Test::More" => '0.94',
    "Test::WWW::Mechanize::Catalyst" => '0.51',
    "Moose" => '0',
    "Template::Alloy" => '0',
  },
  test => {TESTS => 't/*.t'}
);

