#!/usr/bin/perl

use strict;
use warnings;

use Test::More;

use Test::Requires {
    'Test::Pod::Coverage' => '1.04',
};

pod_coverage_ok(
    'Data::Random::Contact',
    'Pod coverage for Data::Random::Contact'
);

done_testing();
