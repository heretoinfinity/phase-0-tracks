require_relative 'guess_word'

describe GuessWord do
  let(:game) { GuessWord.new("cattle") }

  it "checks the word given on initiailizing" do
    expect(game.word).to eq "cattle"
  end

  it "checks length of word" do
    expect(game.guess_count).to eq 0
  end

  it "checks if game is over" do
    expect(game.is_over).to eq false
  end

  it "changes is_over to true" do
    expect(game.is_over=(true)).to eq true
  end

  it "checks player 2's progress" do
    expect(game.player2_progress).to eq ["_", "_", "_", "_", "_", "_"]
  end

  it "check guessed letter that isn't in word" do
    expect(game.check_letter('x')).to eq false
  end

  it "check guessed letter that is in word" do
    expect(game.check_letter('a')).to eq true
  end


end