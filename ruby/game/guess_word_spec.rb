require_relative 'guess_word'

describe GuessWord do
  let(:game) { GuessWord.new("cattle") }

  it "check the word given on initiailizing" do
    expect(game.word).to eq "cattle"
  end

  it "check length of word" do
    expect(game.guess_count).to eq 0
  end

  it "check if game is over" do
    expect(game.is_over).to eq false
  end

  it "change is_over to true" do
    expect(game.is_over=(true)).to eq true
  end

  it "check player 2's progress" do
    expect(game.player2_progress).to eq ["_", "_", "_", "_", "_", "_"]
  end

  it "check guessed letter that isn't in word" do
    expect(game.check_letter('x')).to eq false
  end

  it "check guessed letter that is in word" do
    expect(game.check_letter('a')).to eq true
  end

  it "update player progress given NON-EMPTY index array and letter" do
    expect(game.update_player_progress([2, 3], "t")).to eq true
  end

  it "update player progress given an EMPTY index array and letter" do
    expect(game.update_player_progress([2, 3], "t")).to eq true
  end

  it "update player progress given index array"\
  " including-out of-bounds index and letter" do
    expect(game.update_player_progress([2, 3, 7], "t")).to eq false
  end

  it "update player progress array given index array & letter" do
    progress_array = game.update_player_progress([2, 3], "t")
    expect(game.player2_progress).to eq ["_", "_", "t", "t", "_", "_"]
  end

end