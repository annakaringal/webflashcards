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
    redirect '/users/login'
  else
    redirect '/'
  end
end

get '/users/:user_name' do
  require_login
  @user = User.find_by_user_name(params[:user_name])
  erb :'/user/profile'
end

get '/users/:user_name/edit' do
  require_login
  @user = User.find_by_user_name(params[:user_name])
  erb :'/user/edit'
end

put '/users/:user_name' do
  @user = User.find_by_user_name(params[:user_name])
  @user.update(password: params[:password])
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