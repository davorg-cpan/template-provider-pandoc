#!perl -T
 
use Test::More tests => 1;
 
BEGIN {
  use_ok( 'Template::Provider::Markdown::Pandoc' );
}
 
diag( "Testing Template::Provider::Markdown::Pandoc $Template::Provider::Markdown::Pandoc::VERSION, Perl $], $^X" );

