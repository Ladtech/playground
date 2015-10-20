Bundler.require
$LOAD_PATH.unshift("#{__dir__}/lib")
require 'app'

Sinatra::Base.set :root, __dir__

map '/login' do
  run Login
end

map '/bill' do
  run Bill
end
