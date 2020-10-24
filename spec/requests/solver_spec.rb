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
  end
end
