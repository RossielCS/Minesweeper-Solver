class SolverController < ApplicationController
  def index
    response = receive_data('https://mine-sweeper-generator.herokuapp.com/solver')
    if response.code == 200
      render(json: response)
    else
      render(json: response)
    end
  end
end
