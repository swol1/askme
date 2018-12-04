module ApplicationHelper
  def user_avatar(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      asset_path 'avatar.jpg'
    end
  end

  def sklonenie(number, krokodil, krokodila, krokodilov)
    ostatok = number % 10
    ostatok_big = number % 100

    if ostatok_big.between?(10,14) || ostatok.between?(5,9) || ostatok == 0
      krokodilov
    elsif ostatok == 1
      krokodil
    else
      krokodila
    end
  end
end
