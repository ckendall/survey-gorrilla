class Choices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.integer :question_id
      t.string :choice_name

      t.timestamps null: false
    end

  end
end
