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

get '/users/:id' do
  @user = User.find_by_id(params[:id])
  if @user # if user exist in the database (not nil)
    if session[:user_id] != nil # Check if session id is matching with the user id
      erb :'/users/index' # This render the content for specific user. Also suggesting to change name to /users/user_homepage
    else
      # erb :'/users/index'
      redirect '/' # redirect back to home page if session id doesn't match
    end
  else
    @message = "User not found!" # Create message for what goes wrong for user when returning back to homepage
    erb :index # Render the index page with the message
  end
end
