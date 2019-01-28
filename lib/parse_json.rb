require 'json'
# This class will only read the json file
class ParseJSON
  attr_accessor :json_data

  def initialize(json_file)
    @json_data = JSON.parse(json_file)
  end
end
