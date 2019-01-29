require 'spec_helper'
describe 'riot games api' do
  before(:all) do
    @api_key = ENV['LEAGUE_API_KEY']
    @api_calling = ParseJSON.new(HTTParty::get("https://na1.api.riotgames.com/lol/summoner/v3/summoners/by-name/RiotSchmick?api_key=#{@api_key}").body).json_data
    puts @api_calling
  end

  it 'Should be a hash' do
    expect(@api_calling).to be_kind_of(Hash)
  end
  it `the player's id should be 585897` do
    expect(@api_calling['id']).to eq 585_897
  end
  it `The player's accountId should be` do
    expect(@api_calling['accountId']).to eq 316_495_72
  end
  it 'The name of the player should be' do
    expect(@api_calling['name']).to eq('RiotSchmick')
  end
  it 'the profile icon Id should be 3872' do
    expect(@api_calling['profileIconId']).to eq 3872
  end
end
