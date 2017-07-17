=begin
class name : Guess

Initializing
 initialize with player 1's word as argument
  Save the number current guess and max # of guesses
  Obtain the maximum guess number from the word length
 keep track of the guesses of player 2 but start off with just blanks
 boolean to see if the game is over

Allow access to read and write to player 2's guesses, is_over boolean

Only allow read access to player 1's word & maximum number of guesses

Method to check if letter is in word
  increment guess count by 1
  IF guess correct
    find instances in word
    fill in those instances in player 2's guesses
    keep track of boolean that guess is correct
  ELSE
    keep track of boolean that guess is NOT correct

  IF guess count has reached maximum
    is_over changed to true
    return the boolean of whether guess was correct


=end

class GuessWord
  attr_accessor :is_over
  attr_reader :word, :guess_count, :player2_progress

  def initialize(word)
    @word = word
    @is_over = false
    @player2_progress = Array.new(word.length, "_")
    @guess_count = 0
  end

  def update_player_progress(indices, letter)
    # handle empty array and when index is out of bounds
    if indices.empty? || indices.max + 1 > @player2_progress.length
      return false
    else
      indices.each{ |ind|
        @player2_progress[ind] = letter
      }
      return true
    end
  end

  def check_letter(letter)
    @guess_count += 1

    if @guess_count < @word.length
      indices = (0...@word.length).find_all do |i|
        @word[i, 1] == letter
      end
      correct = update_player_progress(indices, letter)
    end

    if @guess_count == @word.length
      @is_over = true
    end

    return correct
  end
end

game = GuessWord.new('cattle')
#puts word.word
#puts word.check_letter('t')

while !game.is_over
  puts "Guess letter"
  guess = gets.chomp

  if game.check_letter(guess)
    puts "Correct guess"
    puts "Your progress #{game.player2_progress}"
    if game.player2_progress.index("_") == nil
      puts "You win"
      game.is_over = true
    end
  else
    puts "Wrong guess. "
    puts "Your progress #{game.player2_progress}"
  end
  #game.is_over = true
end

