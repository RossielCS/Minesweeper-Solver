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

  describe 'solve_board' do
    subject(:arr_problem) do
      [['+', '-', '-', '-', '-', '-', '+'],
       ['|', '*', '*', '*', '*', '*', '|'],
       ['|', '*', ' ', '*', '*', ' ', '|'],
       ['|', ' ', ' ', ' ', '*', ' ', '|'],
       ['|', '*', ' ', '*', '*', '*', '|'],
       ['|', '*', '*', '*', ' ', ' ', '|'],
       ['+', '-', '-', '-', '-', '-', '+']]
    end

    it 'returns an Array' do
      expect(helper.solve_board(arr_problem)).to be_an_instance_of(Array)
    end

    it 'returns the solution to the problem' do
      arr_solution = [
        ['+', '-', '-', '-', '-', '-', '+'],
        ['|', '*', '*', '*', '*', '*', '|'],
        ['|', '*', '5', '*', '*', '4', '|'],
        ['|', '2', '4', '5', '*', '4', '|'],
        ['|', '*', '5', '*', '*', '*', '|'],
        ['|', '*', '*', '*', '4', '2', '|'],
        ['+', '-', '-', '-', '-', '-', '+']]
      expect(helper.solve_board(arr_problem)).to eq(arr_solution)
    end

    it 'replaces all the white spaces' do
      expect(helper.solve_board(arr_problem).flatten).not_to include(' ')
    end

    it 'changes the white spaces for integers' do
      expect(helper.solve_board(arr_problem).flatten).to include('2', '4', '5')
    end

    it 'returns the same array it received if there are no white spaces' do
      arr = [
        ['+', '-', '-', '-', '-', '-', '+'],
        ['|', '*', '*', '*', '*', '*', '|'],
        ['|', '*', '*', '*', '*', '*', '|'],
        ['|', '*', '*', '*', '*', '*', '|'],
        ['+', '-', '-', '-', '-', '-', '+']]
      expect(helper.solve_board(arr)).to eq(arr)
    end
  end
end
