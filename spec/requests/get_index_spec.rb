require 'rails_helper'

RSpec.describe 'Justinisms Index' do 
  describe 'GET request- happy path' do 
    it 'returns a GET request with query-specific number of sayings' do 
      saying1 = Justinism.create!(saying: "Jack shit!")
      saying2 = Justinism.create!(saying: "What up, Snickers")

      header = { CONTENT_TYPE: 'application/json',
      ACCEPT: 'application/json' }
      num_sayings = 1
      get "/api/v0/justinisms?limit=#{num_sayings}", headers: header 
  
      expect(response).to be_successful
      expect(response.status).to eq(200)
      
      sayings = JSON.parse(response.body, symbolize_names: true)
      expect(sayings[:data].count).to eq 1 
      
      ism = sayings[:data][0]
      expect(ism).to have_key :id
      expect(ism).to have_key :type
      expect(ism[:type]).to eq "justinism"
      expect(ism).to have_key :attributes
      expect(ism[:attributes]).to be_a Hash 
      expect(ism[:attributes]).to have_key :saying
      expect(ism[:attributes][:saying]).to be_a String
    end
  end

  describe 'GET request- sad path'do 
    it 'does not return an object without the query param' do 
      saying1 = Justinism.create!(saying: "Jack shit!")
      saying2 = Justinism.create!(saying: "What up, Snickers")

      header = { CONTENT_TYPE: 'application/json',
      ACCEPT: 'application/json' }
      get '/api/v0/justinisms', headers: header 
  
      expect(response).to_not be_successful
      expect(response.status).to eq(400)

      error = JSON.parse(response.body, symbolize_names: true)
      expect(error).to be_a Hash 
      expect(error).to have_key :errors 
      expect(error[:errors]).to be_an Array 
      expect(error[:errors][0]).to be_a Hash
      expect(error[:errors][0]).to have_key :detail
      expect(error[:errors][0][:detail]).to be_a String 
      expect(error[:errors][0][:detail]).to eq("Couldn't find saying without parameters")
    end
  end
end