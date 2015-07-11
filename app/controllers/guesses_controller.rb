put '/guess/:guess_id' do
  guess = Guess.find_by(id: params[:guess_id])
  card = Card.find(guess.card_id)
  round = Round.find(guess.round_id)
  if guess.user_answer == card.answer
    guess.correct = true
  end
  guess.attempts += 1
  guess.save!
  next_guess = round.guesses.find_by(attempts: 0)

  if next_guess.nil?
    redirect "/rounds/#{round.id}/summary"
  else
    redirect "/rounds/#{round.id}/#{next_guess.card_id}"
  end

end




