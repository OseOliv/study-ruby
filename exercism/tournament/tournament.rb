=begin
Write your code for the 'Tournament' exercise in this file.
Make the tests in
`tournament_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/tournament` directory.
=end

class Tournament

  def self.tally(input)
    matches = input.split("\n").map { |match| match.split(";") }

    results = matches.each_with_object({}) do |match, scores|
      team1, team2, result = match
      scores[team1] ||= { w: 0, d: 0, l: 0 }
      scores[team2] ||= { w: 0, d: 0, l: 0 }
      case result
      when "win"
        scores[team1][:w] += 1
        scores[team2][:l] += 1
      when "loss"
        scores[team1][:l] += 1
        scores[team2][:w] += 1
      when "draw"
        scores[team1][:d] += 1
        scores[team2][:d] += 1
      end
    end
    results.each do |team, scores|
      results[team][:mp] = scores.values.reduce(:+)
      results[team][:p]  = (scores[:w] * 3 + scores[:d])
    end
    format_results(results)
  end

  def self.format_results(results)
    sorted_results = results.sort_by { |team, result| [-result[:p], team] }
    formatted = sorted_results.map do |team, result|
      played = result[:mp].to_s.rjust(2)
      points = result[:p ].to_s.rjust(2)
      wins   = result[:w ].to_s.rjust(2)
      draws  = result[:d ].to_s.rjust(2)
      losses = result[:l ].to_s.rjust(2)

      "#{team.ljust(30)} | #{played} | #{wins} | #{draws} | #{losses} | #{points}\n"
    end

    header = "Team                           | MP |  W |  D |  L |  P\n"
    header + formatted.join
  end
end
