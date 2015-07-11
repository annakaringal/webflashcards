get '/' do
  erb :'user/home'
end

get '/users/login' do
  erb :'user/login'
end

post '/users/login' do
  user = User.find_by_user_name(params[:user_name])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect "/users/#{user.user_name}"
  else
    redirect "/"
  end
end

get '/users/logout' do
  session[:user_id] = nil
  redirect '/'
end

get '/users/signup' do
  erb :'user/signup'
end

post '/users/signup' do
  user = User.new(params[:user])
  if user.save
    session[:user_id] = user.id
    redirect "/users/#{user.user_name}"
  else
    redirect '/'
  end
end

get '/users/:user_name' do
  user = User.find_by_user_name(params[:user_name])
  @decks = Deck.all
  erb :'/user/profile'
end

