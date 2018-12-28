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
      "OrangeRed" => "#CD4929",
      "Aqua" => "#00C6C1",
      "PaleVioletRed" => "#A15C73",
      "Navy" => "#383C57",
      "Crimson" => "#DC143C",
      "DarkCyan" => "#008B8B"
    }
    colors.each_key { |color| color }
  end
end
