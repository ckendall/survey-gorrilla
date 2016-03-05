require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt
  # Remember to create a migration!
  has_many :survey_takers, foreign_key: :author_id, class_name: Surveyship
  has_many :takers, through: :survey_takers, source: :taker
  has_many :survey_authors, foreign_key: :taker_id, class_name: Surveyship
  has_many :authors, through: :survey_authors, source: :author

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(password)
    self.password == password
  end

end
