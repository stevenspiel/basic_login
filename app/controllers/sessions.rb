require 'pry'

post '/login' do
  user = User.authenticate(params["email"], params["password"])

  if user
    session[:value] = user.id
    session[:email] = user.email
    @user = user
    redirect('/')
  else
    @invalid = true
    erb :login
  end
end

get '/login' do
  erb :login
end

get '/signup' do
  erb :signup
end

get '/logout' do
  session.clear
  redirect to('/login')
end

post '/newuser' do
  User.signup(params)
  redirect to('/login')
end
