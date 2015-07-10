post '/guess' do
  card = params[:guess[:card_id]]
  guess = Guess.new(params[:guess])
  if guess.user_answer == card.answer
    guess.correct = true
  end
  guess.save!

end
