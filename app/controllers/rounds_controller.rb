require 'pry'

get '/rounds/:round_id/summary' do
  require_login
  @round = Round.find_by(id: params[:round_id])

  @correct_guesses = @round.guesses.where(correct: true).count
  @total_cards_played = @round.guesses.count

  erb :'round/show'
end

get '/rounds/:round_id/:card_id' do
  require_login
  @card = Card.find_by(id: params[:card_id])
  @round = Round.find_by(id: params[:round_id])
  @guess = @round.guesses.find_by(card_id: @card.id)
  erb :'card/show'
end
