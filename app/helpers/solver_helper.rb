require 'rest-client'

module SolverHelper
  def receive_data(link)
    RestClient.get link
  rescue RestClient::Exception => e
    e.response = 'Could not retrieve the data.'
  end
end
