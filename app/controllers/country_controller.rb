require 'faraday'
require 'json'
class CountryController < ActionController::Base
  def index
    response = Faraday.get 'http://services.groupkt.com/country/get/all'
    @res = response.body
    @res = JSON.parse(@res)
    @res = @res["RestResponse"]
    @res = @res["result"]
    #@res.each do |hash|
      #@name =  hash["name"]
      #@country_code = hash["alpha2_code"]
      #@country_code_3 = hash["alpha3_code"] 
    #end
  end
end


