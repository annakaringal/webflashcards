get '/' do
  erb :'user/home'
end

get '/users/login' do
  @user = User.new
  erb :'user/login'
end

post '/users/login' do
  @user = User.find_by_user_name(params[:user_name])
  if @user && @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect "/users/#{@user.user_name}"
  else
    redirect "/users/password_error"
  end
end

get '/users/password_error' do
  erb :'user/password_error'
end


get '/users/logout' do
  session[:user_id] = nil
  redirect '/'
end

get '/users/signup' do
  erb :'user/signup'
end

post '/users/signup' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect "/users/#{@user.user_name}"
  else
    redirect '/users/signup'
  end
end

get '/users/:user_name' do
  require_login
  @user = User.find_by_user_name(params[:user_name])
  @user = User.find_by_user_name(params[:user_name])
  @decks = Deck.all
  erb :'/user/profile'
end

get '/users/:user_name/edit' do
  require_login
  @user = User.find_by_user_name(params[:user_name])
  erb :'/user/edit'
end

put '/users/:user_name' do
  @user = User.find_by_user_name(params[:user_name])
  @user.update(params[:user])
  redirect "/users/#{@user.user_name}"
end

get '/users/authentication/error' do
  erb :'/user/error'
end

post '/users/authentication/error' do
  user = User.find_by_user_name(params[:user_name])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect "/users/#{user.user_name}"
  else
    redirect "/"
  end
end

delete '/users/:user_name' do
  User.find_by_user_name(params[:user_name]).destroy
  session[:user_id] = nil
  redirect '/'
end
