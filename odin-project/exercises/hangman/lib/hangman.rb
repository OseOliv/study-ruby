require 'set'
require 'json'

class HangmanGame
  attr_accessor :secret_word, :guessed_letters, :incorrect_guesses, :max_incorrect_guesses

  def initialize(secret_word = nil, guessed_letters = Set.new, incorrect_guesses = Set.new, max_incorrect_guesses = 6)
    @dictionary = load_dictionary
    @secret_word = secret_word || choose_word
    @guessed_letters = guessed_letters
    @incorrect_guesses = incorrect_guesses
    @max_incorrect_guesses = max_incorrect_guesses
  end

  def load_dictionary
    File.readlines('google-10000-english-no-swears.txt').map(&:chomp).select { |word| word.length.between?(5, 12) }
  end

  def choose_word
    @dictionary.sample
  end

  def display
    display_word = @secret_word.chars.map { |char| @guessed_letters.include?(char) ? char : '_' }.join
    puts "Word: #{display_word}"
    puts "Incorrect guesses: #{@incorrect_guesses.to_a.join(', ')}"
    puts "Remaining guesses: #{@max_incorrect_guesses - @incorrect_guesses.size}"
  end

  def guess(letter)
    letter.downcase!
    if @guessed_letters.include?(letter) || @incorrect_guesses.include?(letter)
      puts "You already guessed that letter."
    elsif @secret_word.include?(letter)
      @guessed_letters.add(letter)
    else
      @incorrect_guesses.add(letter)
    end
  end

  def save_game(filename = 'saved_game.json')
    game_state = {
      secret_word: @secret_word,
      guessed_letters: @guessed_letters.to_a,
      incorrect_guesses: @incorrect_guesses.to_a,
      max_incorrect_guesses: @max_incorrect_guesses
    }
    File.open(filename, 'w') { |file| file.write(JSON.pretty_generate(game_state)) }
  end

  def self.load_game(filename = 'saved_game.yml')
    game_state = JSON.parse(File.read(filename))
    new(
      game_state['secret_word'],
      Set.new(game_state['guessed_letters']),
      Set.new(game_state['incorrect_guesses']),
      game_state['max_incorrect_guesses']
    )
  end

  def won?
    @secret_word.chars.all? { |char| @guessed_letters.include?(char) }
  end

  def lost?
    @incorrect_guesses.size >= @max_incorrect_guesses
  end
end

def play_game
  puts "Do you want to (n)ew game or (l)oad game?"
  choice = gets.chomp.downcase
  game = choice == 'l' ? HangmanGame.load_game : HangmanGame.new

  until game.won? || game.lost?
    game.display
    puts "Enter a letter to guess or (s)ave game:"
    user_input = gets.chomp.downcase

    if user_input == 's'
      game.save_game
      puts "Game saved!"
      break
    elsif user_input.length == 1 && user_input =~ /[a-z]/
      game.guess(user_input)
    else
      puts "Invalid input. Please enter a single letter."
    end
  end

  if game.won?
    puts "Congratulations! You've guessed the word: #{game.secret_word}"
  elsif game.lost?
    puts "Game over! The word was: #{game.secret_word}"
  end
end

play_game if __FILE__ == $PROGRAM_NAME
