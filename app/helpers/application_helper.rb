module ApplicationHelper
  def day_of_the_week_character_helper
    if Time.current.wday == 0
      image_tag("character_sun.png", size: "32x32", alt: "日曜日キャラ")
    elsif Time.current.wday == 1
      image_tag("character_mon.png", size: "32x32", alt: "月曜日キャラ")
    elsif Time.current.wday == 2
      image_tag("character_tue.png", size: "32x32", alt: "火曜日キャラ")
    elsif Time.current.wday == 3
      image_tag("character_wed.png", size: "32x32", alt: "水曜日キャラ")
    elsif Time.current.wday == 4
      image_tag("character_thu.png", size: "32x32", alt: "木曜日キャラ")
    elsif Time.current.wday == 5
      image_tag("character_fri.png", size: "32x32", alt: "金曜日キャラ")
    else
      image_tag("character_sat.png", size: "32x32", alt: "土曜日キャラ")
    end
  end
end
