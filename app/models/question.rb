class Question < ApplicationRecord
  belongs_to :user
  belongs_to :author, class_name: 'User', optional: true
  has_and_belongs_to_many :hashtags

  validates :text, presence: true
  validates :text, length: { maximum: 255 }

  after_create do
    text_field
    answer_field unless self.answer.nil?
  end

  before_update do
    self.hashtags.clear
    text_field
    answer_field unless self.answer.nil?
  end

  def text_field
    tags = self.text.scan(/#+[[[:word:]]-]+/)
    fields_scan(tags)
  end

  def answer_field
    tags = self.answer.scan(/#+[[[:word:]]-]+/)
    fields_scan(tags)
  end

  def fields_scan(tags)
    tags.uniq.map do |tag|
      hashtag = Hashtag.find_or_create_by(name: tag.downcase.delete('#'))
      self.hashtags << hashtag
    end
  end
end
