# spec../lib/game_logic.rb

require_relative '../lib/game_logic'
# require '../bin/main'

winning_numbers = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
  [1, 5, 9],
  [3, 5, 7],
  [1, 4, 7],
  [2, 5, 8],
  [3, 6, 9]
]
player_arr = [1, 2, 3]
slots = [1, 2, 3, 4, 5, 6, 7, 8, 9]

describe '#design_board' do
  # describe "a" do
  it 'will return the board' do
    des_board = "    ¤---¤---¤---¤
    ¦ 1 ¦ 2 ¦ 3 ¦
    ¤---¤---¤---¤
    ¦ 4 ¦ 5 ¦ 6 ¦
    ¤---¤---¤---¤
    ¦ 7 ¦ 8 ¦ 9 ¦
    ¤---¤---¤---¤"

    expect(design_board(slots)).to eql(des_board)
  end
end

describe '#check_win' do
  it 'returns if any player is a winner' do
    expect(check_win(player_arr, winning_numbers)).to eql(true)
  end
end

describe Game do
  let(:game) { Game.new('Nikos', 'Jose') }
  let(:player) { Player.new('Name') }
  describe '#winner' do
    it 'returns which player is a winner' do
      expect(game.winner(player, player_arr, winning_numbers)).to eql(true)
    end
  end

  describe '#tie' do
    it 'returns Tie if all slots are not an integer' do
      slots = %w[o o o o o o o o o]
      expect(game.tie(slots)).to eql(true)
    end
  end
end
