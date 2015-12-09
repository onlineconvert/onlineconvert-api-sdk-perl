use strict;
use warnings;
use utf8; 
use Data::Dumper;

use WWW::SwaggerClient::InformationApi;

my $info = WWW::SwaggerClient::InformationApi->new();

my $data = $info->statuses_get();
print "------------------------\n";
print "Sample: Statuses get information\n";
print "------------------------\n";
print "Code | Info\n";
print "-----------\n";
for my $el (@$data) {
  printf "%s | %s\n", $el->code, $el->info;
}
print "-----------\n";

$data = $info->conversions_get();
print "------------------------\n";
print "Sample: Conversions get information\n";
print "------------------------\n";
print "ID | Category | Target | Options\n";
print "--------------------------------\n";
for my $el (@$data) {
  printf "%s | %s | %s | %s\n", $el->id, $el->category, $el->target, $el->options;
}
print "--------------------------------\n";