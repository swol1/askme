module UsersHelper
  def user_avatar(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      asset_path 'avatar.jpg'
    end
  end

  def color_list
    colors = {
      "Стандартный" => "#2e2f41",
      "Чёрный" => "#000000",
      "Оранжевый" => "#ffa500",
      "Синий" => "#42aaff",
      "Зеленый" => "#008000",
      "Фиолетовый" => "#8b00ff",
      "Жёлтый" => "#ffff00",
      "Красный" => "#ff0000"
    }
    colors.each_key { |color| color }
  end
end
