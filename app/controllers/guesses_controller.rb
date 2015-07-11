put '/guesses/:guess_id' do
  guess = Guess.find_by(id: params[:guess_id])

  guess.update(user_answer: params[:user_answer])

  if guess.user_answer == guess.card.answer
    guess.correct = true
  end

  guess.attempts += 1
  guess.save!

  round = guess.round
  next_guess = round.guesses.find_by(attempts: 0)

  if next_guess
    redirect "/rounds/#{round.id}/#{next_guess.card_id}"
  else
    redirect "/rounds/#{round.id}/summary"
  end

end