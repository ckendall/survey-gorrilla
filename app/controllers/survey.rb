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
  puts params[:question][0]
    puts params[:question][1]
      puts params[:question][2]

  puts "*" * 20
  Surveyship.create(author_id: session[:user_id])
  survey = Survey.create(user_id: session[:user_id], survey_name: params[:survey_name])
  
  # question = Question.create(survey_id: survey.id, question_name: params[:question])
  quest = params[:question]
  quest.values.each do |q|
    Question.create(survey_id: survey.id, question_name: q)
  end

  # Choice.create(question_id: question.id, choice_name: params[:choice_name])
  redirect '/surveys'
end
get '/surveys/test' do
  erb :'surveys/test'
  end 

get '/surveys/:id' do

  puts "PARAMS id"
 puts params[:id]
  @survey = Survey.find(params[:id])
  puts "Survey"

  @questions = Question.where(survey_id: @survey.id)


  # @choice = Choice.find_by(question_id: @question.id)

  @hey = Surveyship.find_by(author_id: @survey.user_id)

  @user = User.find_by(id: @hey.author_id)

  erb :'surveys/show'
end

get '/surveys/taken' do

end


get 'surveys/:id/edit' do
end

put 'surveys/:id' do
end

delete 'survey/:id' do
end


