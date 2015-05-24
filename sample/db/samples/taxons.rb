Spree::Sample.load_sample("taxonomies")
Spree::Sample.load_sample("products")

categories = Spree::Taxonomy.find_by_name!("Kategoriler")
brands = Spree::Taxonomy.find_by_name!("Markalar")

products = {
  :ror_tote => "Ruby on Rails Torbası",
  :ror_bag => "Ruby on Rails Çantası",
  :ror_mug => "Ruby on Rails Kupası",
  :ror_stein => "Ruby on Rails Bira Bardağı",
  :ror_baseball_jersey => "Ruby on Rails Beyzbol Forması",
  :ror_jr_spaghetti => "Ruby on Rails Jr. Spagetti",
  :ror_ringer => "Ruby on Rails Ringer Tişörtü",
  :spree_stein => "Spree Bira Bardağı",
  :spree_mug => "Spree Kupası",
  :spree_ringer => "Spree Ringer Tişörtü",
  :spree_baseball_jersey =>  "Spree Beyzbol Forması",
  :spree_tote => "Spree Torbası",
  :spree_bag => "Spree Çantası",
  :spree_jr_spaghetti => "Spree Jr. Spagetti",
  :apache_baseball_jersey => "Apache Beyzbol Forması",
  :ruby_baseball_jersey => "Ruby Beyzbol Forması",
}


products.each do |key, name|
  products[key] = Spree::Product.find_by_name!(name)
end

taxons = [
  {
    :name => "Kategoriler",
    :taxonomy => categories,
    :position => 0
  },
  {
    :name => "Torbalar",
    :taxonomy => categories,
    :parent => "Kategoriler",
    :position => 1,
    :products => [
      products[:ror_tote],
      products[:ror_bag],
      products[:spree_tote],
      products[:spree_bag]
    ]
  },
  {
    :name => "Kupalar",
    :taxonomy => categories,
    :parent => "Kategoriler",
    :position => 2,
    :products => [
      products[:ror_mug],
      products[:ror_stein],
      products[:spree_stein],
      products[:spree_mug]
    ]
  },
  {
    :name => "Giyim",
    :taxonomy => categories,
    :parent => "Kategoriler"
  },
  {
    :name => "Gömlekler",
    :taxonomy => categories,
    :parent => "Giyim",
    :position => 0,
    :products => [
      products[:ror_jr_spaghetti],
      products[:spree_jr_spaghetti]
    ]
  },
  {
    :name => "Tişörtler",
    :taxonomy => categories,
    :parent => "Giyim" ,
    :products => [
      products[:ror_baseball_jersey],
      products[:ror_ringer],
      products[:apache_baseball_jersey],
      products[:ruby_baseball_jersey],
      products[:spree_baseball_jersey],
      products[:spree_ringer]
    ],
    :position => 0
  },
  {
    :name => "Markalar",
    :taxonomy => brands
  },
  {
    :name => "Ruby",
    :taxonomy => brands,
    :parent => "Markalar",
    :products => [
      products[:ruby_baseball_jersey]
    ]
  },
  {
    :name => "Apache",
    :taxonomy => brands,
    :parent => "Markalar",
    :products => [
      products[:apache_baseball_jersey]
    ]
  },
  {
    :name => "Spree",
    :taxonomy => brands,
    :parent => "Markalar",
    :products => [
      products[:spree_stein],
      products[:spree_mug],
      products[:spree_ringer],
      products[:spree_baseball_jersey],
      products[:spree_tote],
      products[:spree_bag],
      products[:spree_jr_spaghetti],
    ]
  },
  {
    :name => "Rails",
    :taxonomy => brands,
    :parent => "Markalar",
    :products => [
      products[:ror_tote],
      products[:ror_bag],
      products[:ror_mug],
      products[:ror_stein],
      products[:ror_baseball_jersey],
      products[:ror_jr_spaghetti],
      products[:ror_ringer],
    ]
  },
]

taxons.each do |taxon_attrs|
  if taxon_attrs[:parent]
    taxon_attrs[:parent] = Spree::Taxon.where(name: taxon_attrs[:parent]).first
    Spree::Taxon.create!(taxon_attrs)
  end
end
