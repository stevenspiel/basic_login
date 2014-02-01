get '/' do
  if session[:value]
    redirect to('/dashboard')
  else
    erb :index
  end
end

