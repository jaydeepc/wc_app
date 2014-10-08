class AddQuestionsAndAnswers < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :question_text
      t.timestamps
    end

    create_table :answers do |t|
      t.text :answer_text
      t.belongs_to :question
      t.timestamps
    end
  end
end
