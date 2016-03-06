get '/users/new' do
  erb :'users/new'
end

post '/users/new' do
  if params[:verify_password] != params[:password]
    redirect '/users/new'
  else
    @user = User.create(username: params[:username], password: params[:password])
    redirect '/login'
  end
end
