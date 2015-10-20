require 'bundler'
Bundler.require

$LOAD_PATH.unshift("#{__dir__}/../lib")
require 'support/views'
require 'support/shared_contexts/haml_context'
require 'support/shared_contexts/sinatra_application_context'

