require 'rails_helper'

describe SolverHelper do
  describe 'receive_data' do
    it 'returns a RestClient::Response object if the request is successful' do
      result = helper.receive_data('http://example.com')
      expect(result).to be_an_instance_of(RestClient::Response)
    end

    it 'returns a message if there is an error while retrieving the data' do
      result = helper.receive_data('http://example.com/notfound')
      expect(result).to eq('Could not retrieve the data.')
    end
  end
end
