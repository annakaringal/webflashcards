require 'pry'

get '/rounds/:round_id/summary' do
  @round = Round.find_by(id: params[:round_id])
  erb :'round/show'
end


get '/rounds/:round_id/:card_id' do
  @card = Card.find_by(id: params[:card_id])
  @round = Round.find_by(id: params[:round_id])
  @guess = @round.guesses.find_by(card_id: @card.id)
  erb :'card/show'
end
