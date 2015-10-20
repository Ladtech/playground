require 'page_magic'
Dir["#{__dir__}/views/*.rb"].each do |view_file|
  require view_file
end