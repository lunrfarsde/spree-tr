taxonomies = [
  { name: "Kategoriler" },
  { name: "Markalar" }
]

taxonomies.each do |taxonomy_attrs|
  Spree::Taxonomy.create!(taxonomy_attrs)
end
