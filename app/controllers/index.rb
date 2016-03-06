get '/' do
  redirect '/login'
end

get '/login' do 
  erb :'index'
end

post '/' do
  session[:id] = nil
  redirect '/login'
end

post '/login' do 
  @user = User.find_by(username: params[:username])
  if @user && @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    redirect "/login"
  end
end

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