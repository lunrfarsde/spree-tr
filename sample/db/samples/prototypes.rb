prototypes = [
  {
    :name => "Gömlek",
    :properties => ["Üretici", "Marka", "Model", "Gömlek Tipi", "Kol Tipi", "Materyal", "Fit", "Cinsiyet"]
  },
  {
    :name => "Çanta",
    :properties => ["Tip", "Boyut", "Materyal"]
  },
  {
    :name => "Kupalar",
    :properties => ["Boyut", "Tip"]
  }
]

prototypes.each do |prototype_attrs|
  prototype = Spree::Prototype.create!(:name => prototype_attrs[:name])
  prototype_attrs[:properties].each do |property|
    prototype.properties << Spree::Property.where(name: property).first
  end
end
