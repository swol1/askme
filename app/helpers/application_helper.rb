module ApplicationHelper
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

  def fa_icon(icon_class)
    content_tag 'span', '', class: "fa fa-#{icon_class}"
  end
end
