
use strict;
use warnings;

BEGIN { require 5.004; }

use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'IDOPEREL\'s plugin bundle for Dist::Zilla.',
  'AUTHOR' => 'Ido Perlmuter <ido@ido50.net>',
  'BUILD_REQUIRES' => {
    'Test::More' => '0.96'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'Dist-Zilla-PluginBundle-IDOPEREL',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'Dist::Zilla::PluginBundle::IDOPEREL',
  'PREREQ_PM' => {
    'Dist::Zilla::Plugin::AutoPrereqs' => '4.200000',
    'Dist::Zilla::Plugin::CheckChangesHasContent' => '0.003',
    'Dist::Zilla::Plugin::DistManifestTests' => '1.101420',
    'Dist::Zilla::Plugin::GithubMeta' => '0.10',
    'Dist::Zilla::Plugin::LatestPrereqs' => '0.3',
    'Dist::Zilla::Plugin::MetaJSON' => '4.200000',
    'Dist::Zilla::Plugin::MinimumPerl' => '0.02',
    'Dist::Zilla::Plugin::NextRelease' => '4.200000',
    'Dist::Zilla::Plugin::ReadmeFromPod' => '0.14',
    'Dist::Zilla::Plugin::TestRelease' => '4.200000',
    'Dist::Zilla::PluginBundle::Classic' => '4.200000',
    'Dist::Zilla::PluginBundle::Filter' => '4.200000',
    'Dist::Zilla::PluginBundle::Git' => '1.103520',
    'Dist::Zilla::Role::PluginBundle' => '4.200000',
    'Moose' => '1.21',
    'Moose::Autobox' => '0.11',
    'namespace::autoclean' => '0.11'
  },
  'VERSION' => '0.4',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



