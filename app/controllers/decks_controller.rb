require 'pry'
 get '/decks/:deck_id' do

    deck = Deck.find_by(id: params[:deck_id])
    round = Round.new(deck_id: params[:deck_id],
              user_id: session[:user_id])
    round.save

    deck.cards.each do |card|
      round.guesses << Guess.new(card_id: card.id)
    end

    guess = round.guesses.find_by(attempts: 0)
    redirect "/rounds/#{round.id}/#{guess.card_id}"

 end
