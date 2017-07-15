require_relative 'guess_word'

describe GuessWord do
  let(:game) { GuessWord.new("cat") }

  it "checks the word given on initiailizing" do
    expect(game.word).to eq "cat"
  end

  it "checks length of word" do
    expect(game.guess_count).to eq 3
  end

  it "checks the word given on initiailizing" do
    expect(game.word).to eq "cat"
  end

  it "checks if game is over" do
    expect(game.is_over).to eq false
  end

  it "changes is_over to true" do
    expect(game.is_over=(true)).to eq true
  end

  it "checks player 2's progress" do
    expect(game.player2_progress).to eq ["_", "_", "_"]
  end


end