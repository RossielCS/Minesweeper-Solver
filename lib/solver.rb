require 'rest-client'

module Solver
  def solve_board(data)
    problem = Marshal.load(Marshal.dump(data))
    count = 0
    problem.each_with_index do |_, i|
      problem.each_with_index do |_, j|
        if problem[i][j] == ' '
          count += problem[i - 1][j - 1..j + 1].select { |x| x == '*' }.length
          count += problem[i][j - 1..j + 1].select { |x| x == '*' }.length
          count += problem[i + 1][j - 1..j + 1].select { |x| x == '*' }.length
          problem[i][j] = count.to_s
        end
        count = 0
      end
    end
    problem
  end

  def return_result(response)
    prob = JSON.parse(response)
    { 'problem': prob, 'solution': solve_board(prob) }
  end

  def receive_data(link)
    RestClient.get link
  rescue RestClient::Exception => e
    e.response = 'Could not retrieve the data.'
  end
end
