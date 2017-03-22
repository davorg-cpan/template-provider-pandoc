#!/usr/bin/env perl
use strict;
use warnings;
use Template;
use Template::Provider::Markdown::Pandoc;
use FindBin '$Bin';
 
use Test::More tests => 1;
 
my $tt = Template->new(
  LOAD_TEMPLATES => [
    Template::Provider::Markdown::Pandoc->new( INCLUDE_PATH => "$Bin/../t/templates" ),
  ],
);
my $template = 'My name is [% author %]';
my $out;
$tt->process('basic.md', { author => "Charlie" }, \$out);
 
is($out, "<p>My name is Charlie</p>", "Basic conversion");

