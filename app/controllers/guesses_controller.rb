put '/guesses/:guess_id' do
  guess = Guess.find_by(id: params[:guess_id])
  guess.update(user_answer: params[:user_answer])
  round = guess.round

  #ZM: SEE PR
  if guess.user_answer.downcase == guess.card.answer.downcase
    guess.correct = true
    round.score +=1
    round.save
  end

  guess.attempts += 1
  guess.save!
  next_guess = round.guesses.find_by(attempts: 0)

  #ZM: END SEE PR

  if next_guess
    redirect "/rounds/#{round.id}/#{next_guess.card_id}"
  else
    redirect "/rounds/#{round.id}/summary"
  end

end