class Surveyship < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :author, foreign_key: :author_id, class_name: User
  belongs_to :taker, foreign_key: :taker_id, class_name: User
end
