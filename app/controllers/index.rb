get '/' do
  redirect '/login'
end

get '/login' do
  erb :'index'
end

post '/' do
  session[:user_id] = nil
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
