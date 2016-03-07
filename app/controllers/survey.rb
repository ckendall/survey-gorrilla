get '/surveys' do

# Cody's local code  @users = User.all
# 	erb :'/surveys/index'
# end
  @survey = Survey.all
  # @author = User.find_by(id: @survey.user_id)
	erb :'/surveys/index'
end


get '/surveys/new' do
  erb :'surveys/new'
end

post '/surveys' do
  puts "PARAMS"
  puts params
  puts "*" * 20
  Surveyship.create(author_id: session[:user_id])
  survey = Survey.create(user_id: session[:user_id], survey_name: params[:survey_name])
  question = Question.create(survey_id: survey.id, question_name: params[:question_name])
  Choice.create(question_id: question.id, choice_name: params[:choice_name])
  redirect '/surveys'
end

get '/surveys/:id' do
  puts "PARAMS id"
 puts params[:id]
 puts "*" * 30
  @survey = Survey.find(params[:id])
  puts "Survey"
  puts "*" * 50
  puts @survey.user_id
  puts "*" * 50

  @question = Question.find_by(survey_id: @survey.id)
  puts "Question"
  puts "*" * 50
  puts @question
  puts "*" * 50

  @choice = Choice.find_by(question_id: @question.id)
  puts "Choice"
  puts "*" * 50
  puts @choice
  puts "*" * 50

  @hey = Surveyship.find_by(author_id: @survey.user_id)
  puts "SURVEYSHIP"
    puts "*" * 50
    puts @hey.inspect
  puts "*" * 50

  @user = User.find_by(id: @hey.author_id)
  puts "USER"
    puts "*" * 50
    puts @user.inspect
  puts "*" * 50

  erb :'surveys/show'
end

get 'surveys/:id/edit' do
end

put 'surveys/:id' do
end

delete 'survey/:id' do


end

