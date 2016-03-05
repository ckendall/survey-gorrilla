class Questions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :survey_id
      t.string :question_name

      t.timestamps null: false
    end
  end
end
