class Surveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.integer :user_id
      t.string :survey_name

      t.timestamps null: false
    end
  end
end
