get '/surveys' do

# Cody's local code  @users = User.all
# 	erb :'/surveys/index'
# end
  @survey = Survey.all
  @author = User.find_by(id: @survey.user_id)
	erb :'/surveys/index'
end


get '/surveys/new' do
  erb :'surveys/new'
end

post '/surveys' do
  survey = Survey.create(survey_name: params[:survey_name])
  question = Question.create(survey_id: survey.id, question_name: params[:question])
  Choice.create(question_id: question.id, choice_name: params[:choice])
  redirect '/surveys'
end

get '/surveys/:id' do

  @survey = Survey.find(params[:id])
  @question = Question.find_by(survey_id: @survey.id)
  @choice = Choice.find_by(question_id: @question.id)
  @hey = Surveyship.find_by(author_id: @survey.user_id)
  @user = User.find_by(id: @hey.author_id)
  erb :'surveys/show'
end

get 'surveys/:id/edit' do
end

put 'surveys/:id' do
end

delete 'survey/:id' do


end

