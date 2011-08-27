require File.expand_path("../../lib/rubillow", __FILE__)
require "bourne"

Dir[File.expand_path("../support/**/*.rb", __FILE__)].each do |file|
  require file
end

RSpec.configure do |config|
  config.mock_with :mocha
end

def get_xml(file)
  File.open(File.expand_path("../xml/" + file, __FILE__)).read
end