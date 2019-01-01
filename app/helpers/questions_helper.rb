module QuestionsHelper
  def all_hashtags
    hashtags = []

    questions = Question.all.order(updated_at: :desc)

    questions.each do |question|
      question.hashtags.each do |hashtag|
        hashtags << hashtag.name
      end
    end

    hashtags.uniq!
  end
end