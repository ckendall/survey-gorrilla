get '/surveys' do

end

get '/surveys/new' do
  erb :'surveys/new'
end

post '/surveys' do
  Survey.create(survey_name: params[:survey_name])
  Question.create(question_name: params[:question_name])
end

get '/surveys/:id' do
end

get 'surveys/:id/edit' do
end

put 'surveys/:id' do
end

delete 'survey/:id' do
end
