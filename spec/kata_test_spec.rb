require 'rspec'
require './weather_data'

describe 'weather_data' do
 let (:data)  { WeatherData.new(file) }

  it 'can create an object exists' do
    expect(data).not_to be_nil 
  end

  it 'reads a file' do
    file = mock('file')
    File.should_recieve(:read).with('filename').and_yield(file)
  end 

end