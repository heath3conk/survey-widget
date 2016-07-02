class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :survey_id
      t.string :question_text, null: false
      t.string :choice_one, null: false
      t.string :choice_two, null: false
      t.string :choice_three
      t.string :choice_four

      t.timestamps null: false
    end
  end
end
