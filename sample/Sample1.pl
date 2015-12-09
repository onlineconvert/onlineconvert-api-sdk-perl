use strict;
use warnings;
use utf8; 
use Data::Dumper;

use WWW::SwaggerClient::Object::InputFile;
use WWW::SwaggerClient::Object::Conversion;
use WWW::SwaggerClient::Object::Job;
use WWW::SwaggerClient::JobsApi;

print "--------------------------------------------------------\n";
print "Sample: Quick start: Convert one file to another format\n";
print "--------------------------------------------------------\n";

my $inputFile = WWW::SwaggerClient::Object::InputFile->new();
$inputFile->type('remote');
$inputFile->source('https://bit.ly/b2dlVA');
my $inputFileArray;
push(@$inputFileArray, $inputFile);

my $conversion = WWW::SwaggerClient::Object::Conversion->new();
$conversion->target('png');
my $conversionArray;
push(@$conversionArray, $conversion);

my $job = WWW::SwaggerClient::Object::Job->new();
$job->input($inputFileArray);
$job->conversion($conversionArray);

my $jobApi = WWW::SwaggerClient::JobsApi->new();
my $responseJob = $jobApi->jobs_post('x_oc_api_key' => '5a85b749d33340f592cbd5d6a3630908', 'body' => $job);

print "New created job object:\n";
print "-----------------------\n";
printf "ID: %s\n", $responseJob->id;
printf "Token: %s\n", $responseJob->token;
printf "Server: %s\n", $responseJob->server;
printf "Status: %s\n", $responseJob->status->code;