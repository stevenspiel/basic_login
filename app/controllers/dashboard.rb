get '/dashboard' do
  if User.session(session[:value])
    erb :dashboard
  else
    redirect to('/')
  end

end
