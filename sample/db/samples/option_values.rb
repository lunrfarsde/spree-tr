Spree::Sample.load_sample("option_types")

size = Spree::OptionType.find_by_presentation!("Boyut")
color = Spree::OptionType.find_by_presentation!("Renk")

Spree::OptionValue.create!([
  {
    :name => "Small",
    :presentation => "S",
    :position => 1,
    :option_type => size
  },
  {
    :name => "Medium",
    :presentation => "M",
    :position => 2,
    :option_type => size
  },
  {
    :name => "Large",
    :presentation => "L",
    :position => 3,
    :option_type => size
  },
  {
    :name => "Extra Large",
    :presentation => "XL",
    :position => 4,
    :option_type => size
  },
  {
    :name => "Red",
    :presentation => "Kırmızı",
    :position => 1,
    :option_type => color,
  },
  {
    :name => "Green",
    :presentation => "Yeşil",
    :position => 2,
    :option_type => color,
  },
  {
    :name => "Blue",
    :presentation => "Mavi",
    :position => 3,
    :option_type => color
  }
])
