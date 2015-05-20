Spree::Sample.load_sample("tax_categories")
Spree::Sample.load_sample("shipping_categories")

clothing = Spree::TaxCategory.find_by_name!("Giyim")
shipping_category = Spree::ShippingCategory.find_by_name!("Varsayılan")

default_attrs = {
  description: FFaker::Lorem.paragraph,
  available_on: Time.zone.now
}

products = [
  {
    :name => "Ruby on Rails Torbası",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 15.99,
  },
  {
    :name => "Ruby on Rails Çantası",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 22.99,
  },
  {
    :name => "Ruby on Rails Beyzbol Forması",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 19.99,
  },
  {
    :name => "Ruby on Rails Jr. Spagetti",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 19.99,

  },
  {
    :name => "Ruby on Rails Ringer Tişörtü",
    :shipping_category => shipping_category,
    :tax_category => clothing,
    :price => 19.99,
  },
  {
    :name => "Ruby Beyzbol Forması",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 19.99,
  },
  {
    :name => "Apache Beyzbol Forması",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 19.99,
  },
  {
    :name => "Spree Beyzbol Forması",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 19.99,
  },
  {
    :name => "Spree Jr. Spagetti",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 19.99,
  },
  {
    :name => "Spree Ringer Tişörtü",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 19.99,
  },
  {
    :name => "Spree Torbası",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 15.99,
  },
  {
    :name => "Spree Çantası",
    :tax_category => clothing,
    :shipping_category => shipping_category,
    :price => 22.99,
  },
  {
    :name => "Ruby on Rails Kupası",
    :shipping_category => shipping_category,
    :price => 13.99,
  },
  {
    :name => "Ruby on Rails Bira Bardağı",
    :shipping_category => shipping_category,
    :price => 16.99,
  },
  {
    :name => "Spree Bira Bardağı",
    :shipping_category => shipping_category,
    :price => 16.99,
  },
  {
    :name => "Spree Kupası",
    :shipping_category => shipping_category,
    :price => 13.99,
  }
]

products.each do |product_attrs|
  Spree::Config[:currency] = "TRY"
  Spree::Product.create!(default_attrs.merge(product_attrs))
end
