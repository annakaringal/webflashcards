require 'pry'
get '/rounds/:round_id/:card_id' do
  @card = Card.find_by(id: params[:card_id])
  @round = Round.find_by(id: params[:round_id])
  @guess = @round.guesses.find_by(card_id: @card.id) if @card
  erb :'card/show'
end

get '/rounds/:round_id/summary' do
  @round = Rounds.find_by(id: params[:round_id])
  erb :'round/show'
end



