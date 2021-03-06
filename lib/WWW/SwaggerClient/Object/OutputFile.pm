package WWW::SwaggerClient::Object::OutputFile;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use base "WWW::SwaggerClient::Object::BaseObject";

#
#
#
#NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
#

__PACKAGE__->class_documentation({description => '',
                                  class => 'OutputFile',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'id' => {
    	datatype => 'string',
    	base_name => 'id',
    	description => 'Unique identifier for the file.',
    	format => '',
    	read_only => '',
    		},
    'source' => {
    	datatype => 'OutputFile_source',
    	base_name => 'source',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'uri' => {
    	datatype => 'string',
    	base_name => 'uri',
    	description => 'Url for downloading the file.',
    	format => '',
    	read_only => '',
    		},
    'size' => {
    	datatype => 'int',
    	base_name => 'size',
    	description => 'Size of the file in bytes.',
    	format => '',
    	read_only => '',
    		},
    'checksum' => {
    	datatype => 'string',
    	base_name => 'checksum',
    	description => 'Checksum of the file',
    	format => '',
    	read_only => '',
    		},
    'created_at' => {
    	datatype => 'DateTime',
    	base_name => 'created_at',
    	description => 'Date and time when the job was created.',
    	format => '',
    	read_only => '',
    		},
    
});

__PACKAGE__->swagger_types( {
    'id' => 'string',
    'source' => 'OutputFile_source',
    'uri' => 'string',
    'size' => 'int',
    'checksum' => 'string',
    'created_at' => 'DateTime'
} );

__PACKAGE__->attribute_map( {
    'id' => 'id',
    'source' => 'source',
    'uri' => 'uri',
    'size' => 'size',
    'checksum' => 'checksum',
    'created_at' => 'created_at'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});

1;
