def logged_in?
  !!session[:user_id]
end

def require_login
  unless logged_in?
    redirect '/users/authentication/error'
  end
end