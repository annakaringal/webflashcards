get '/' do
  erb :'user/home'
end

get '/login' do
  erb :'user/login'
end

get '/signup' do
  erb :'user/signup'
end
