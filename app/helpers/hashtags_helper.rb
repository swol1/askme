module HashtagsHelper
  def all_hashtags
    Hashtag.all.order(updated_at: :desc)
  end
end
