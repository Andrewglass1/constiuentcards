require 'geocoder'
require 'net/http'

class Legislator
  def self.search(address)
    return {} if address.nil?
    geocode_result = Geocoder.search(address)

    latitude = geocode_result.first.latitude
    longitude = geocode_result.first.longitude

    uri = URI("http://openstates.org/api/v1/legislators/?state=ny&latitude=#{latitude}&longitude=#{longitude}&apikey=0ab78cd1a01f40628ff6e9bb0f13b703")
    response = Net::HTTP.get(uri)

    raw_legislators = JSON.parse(response)

    legislators = raw_legislators.map do |leg_hash|
      struct = OpenStruct.new
      leg_hash.each {|k, v| struct.send("#{k}=", v) }
    end
  end
end