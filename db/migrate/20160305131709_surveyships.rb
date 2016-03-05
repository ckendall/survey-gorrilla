class Surveyships < ActiveRecord::Migration
  def change
    create_table :surveyships do |t|
      t.integer :author_id
      t.integer :taker_id

      t.timestamps null: false
    end
  end
end
