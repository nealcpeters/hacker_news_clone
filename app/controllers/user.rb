get '/login' do
  if !session[:username].nil?
    redirect to('/profile')
  else
    erb :login
  end
end

post '/login' do
  if User.check(params[:username],params[:password])
    session[:username] = params[:username]
    redirect to('/profile')
  else
    puts "failed"
  end
end

get '/logout' do
  session.clear
  redirect to('/')
end

post '/resister' do

end

get '/profile' do
  erb :profile
end
