class SolverController < ApplicationController
  def index
    render(json: { 'problem': [], 'solution': [] })
  end
end
