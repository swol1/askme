class CreateQuestionsHashtags < ActiveRecord::Migration[5.2]
  def change
    create_table :questions_hashtags, id: false do |t|
      t.belongs_to :question, foreign_key: true
      t.belongs_to :hashtag, foreign_key: true
    end
  end
end
