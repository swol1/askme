class Question < ApplicationRecord
  belongs_to :user
  belongs_to :author, class_name: 'User', optional: true
  has_and_belongs_to_many :hashtags

  validates :text, presence: true
  validates :text, length: { maximum: 255 }

  before_save do
    self.hashtags.clear
    fields_scan
  end

  def fields_scan
    string = self.text + " " + self.answer.to_s
    tags = string.scan(/#+[[[:word:]]-]+/)
    tags.uniq.map do |tag|
      hashtag = Hashtag.find_or_create_by(name: tag.downcase.delete('#'))
      self.hashtags << hashtag
    end
  end
end
