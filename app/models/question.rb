class Question < ApplicationRecord
  belongs_to :user
  belongs_to :author, class_name: 'User', optional: true
  has_and_belongs_to_many :hashtags

  validates :text, presence: true
  validates :text, length: { maximum: 255 }

  after_create do
    question = Question.find_by(id: self.id)
    tags = self.text.scan(/#+[[\w]-]+/)
    tags.uniq.map do |tag|
      hashtag = Hashtag.find_or_create_by(name: tag.downcase.delete('#'))
      question.hashtags << hashtag
    end
  end
end
