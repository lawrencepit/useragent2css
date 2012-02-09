# encoding: utf-8
$LOAD_PATH.unshift File.dirname(__FILE__) + '/../lib'
$LOAD_PATH.unshift File.dirname(__FILE__)

require 'rubygems'
require 'test/unit'
require 'rspec'

require 'action_controller'
require 'action_view'
puts "Testing with ActionPack #{ActionPack::VERSION::STRING}"

require 'useragent2css'

