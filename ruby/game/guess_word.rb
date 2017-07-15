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
  attr_accessor :is_over, :player2_progress
  attr_reader :word, :guess_count

  def initialize(word)
    @word = word
    @is_over = false
    @player2_progress = Array.new(word.length, "_")
    @guess_count = word.length
  end


end

# word = GuessWord.new('cat')
# puts word.word