#!/usr/bin/env perl
use strict;
use warnings;
use Template;
use Template::Provider::Markdown::Pandoc;
 
use Test::More tests => 1;
 
my $tt = Template->new(
  LOAD_TEMPLATES => [
    Template::Provider::Markdown::Pandoc->new( EXTENSION => undef ),
  ],
);
my $template = 'My name is [% author %]';
my $out;
$tt->process(\$template, { author => "Charlie" }, \$out);
 
is($out, "<p>My name is Charlie</p>\n", "Basic conversion");

