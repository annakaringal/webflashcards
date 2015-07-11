

get '/users/:round_id/:card_id' do
  @card = Card.find_by(id: params[:card_id])
  @round = Round.find_by(id: params[:round_id])
  erb :'card/show'
end


