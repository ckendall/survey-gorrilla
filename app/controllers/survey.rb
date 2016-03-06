get '/surveys' do

	@surveys = Survey.all.each

	erb :'/surveys/index'

end

get '/surveys/new' do
  erb :'surveys/new'
end

post '/surveys' do
  p params
  survey = Survey.create(survey_name: params[:survey_name])
  question = Question.create(survey_id: survey.id, question_name: params[:question])
  Choice.create(question_id: question.id, choice_name: params[:choice])
end

get '/surveys/:id' do
end

get 'surveys/:id/edit' do
end

put 'surveys/:id' do
end

delete 'survey/:id' do


end

