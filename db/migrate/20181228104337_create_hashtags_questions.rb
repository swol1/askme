class CreateHashtagsQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :hashtags_questions do |t|
      t.belongs_to :question, foreign_key: true
      t.belongs_to :hashtag, foreign_key: true
    end
  end
end
