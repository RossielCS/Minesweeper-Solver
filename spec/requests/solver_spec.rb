require 'rails_helper'

RSpec.describe 'Requests', type: :request do
  before { get '/solver' }

  describe 'GET /solver' do
    it 'returns a :success status code' do
      expect(response).to have_http_status(:success)
    end

    it 'returns the problem and solution' do
      json = JSON.parse(response.body)
      expect(json.length).to eq(2)
    end

    it 'returns two properties with an Array as value' do
      json = JSON.parse(response.body)
      expect(json['problem']).to be_an_instance_of(Array)
      expect(json['solution']).to be_an_instance_of(Array)
    end

    it 'returns status equal to two hundred' do
      expect(response.status).to eql(200)
    end
  end
end
