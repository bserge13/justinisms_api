require 'rails_helper'

RSpec.describe 'Justinisms Index' do 
  describe 'GET request' do 
    it 'returns a GET request with an index of sayings' do 
      header = { CONTENT_TYPE: 'application/json',
      ACCEPT: 'application/json' }
      get '/api/v0/justinisms', headers: header 
  
      expect(response).to be_successful
      expect(response.status).to eq(200)
      
      sayings = JSON.parse(response.body, symbolize_names: true)

    end
  end
end