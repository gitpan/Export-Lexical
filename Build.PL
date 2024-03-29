#!perl

use 5.010;
use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name       => 'Export::Lexical',
    license           => 'perl',
    dist_author       => 'Chris Grau <cgrau@cpan.org>',
    dist_version_from => 'lib/Export/Lexical.pm',
    build_requires    => {
        'Test::More'      => 0,
        'Test::Exception' => 0,
        'Test::Warn'      => 0,
    },
    add_to_cleanup => ['Export-Lexical-*'],
);

$builder->create_build_script;
