
use strict;
use warnings;

BEGIN { require 5.006; }

use ExtUtils::MakeMaker 6.31;

use File::ShareDir::Install;
install_share module => "Dist::Zilla::MintingProfile::IDOPEREL", "profiles";


my %WriteMakefileArgs = (
  'ABSTRACT' => 'IDOPEREL\'s plugin bundle for Dist::Zilla.',
  'AUTHOR' => 'Ido Perlmuter <ido@ido50.net>',
  'BUILD_REQUIRES' => {
    'Test::More' => '0'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31',
    'File::ShareDir::Install' => '0.03',
    'version' => '0.77'
  },
  'DISTNAME' => 'Dist-Zilla-PluginBundle-IDOPEREL',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'Dist::Zilla::PluginBundle::IDOPEREL',
  'PREREQ_PM' => {
    'Dist::Zilla::Plugin::AutoPrereqs' => '0',
    'Dist::Zilla::Plugin::CheckChangesHasContent' => '0',
    'Dist::Zilla::Plugin::DistManifestTests' => '0',
    'Dist::Zilla::Plugin::GithubMeta' => '0',
    'Dist::Zilla::Plugin::InstallGuide' => '0',
    'Dist::Zilla::Plugin::MetaJSON' => '0',
    'Dist::Zilla::Plugin::MinimumPerl' => '0',
    'Dist::Zilla::Plugin::NextRelease' => '0',
    'Dist::Zilla::Plugin::Prereqs' => '0',
    'Dist::Zilla::Plugin::ReadmeFromPod' => '0',
    'Dist::Zilla::Plugin::Signature' => '0',
    'Dist::Zilla::Plugin::TestRelease' => '0',
    'Dist::Zilla::Plugin::VersionFromModule' => '0',
    'Dist::Zilla::PluginBundle::Classic' => '0',
    'Dist::Zilla::PluginBundle::Filter' => '0',
    'Dist::Zilla::PluginBundle::Git' => '0',
    'Dist::Zilla::Role::MintingProfile::ShareDir' => '0',
    'Dist::Zilla::Role::PluginBundle::Easy' => '0',
    'Moose' => '0',
    'namespace::autoclean' => '0',
    'version' => '0.77'
  },
  'VERSION' => 'v0.600.3',
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

package
MY;
use File::ShareDir::Install qw(postamble);


