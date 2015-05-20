Spree::Sample.load_sample("variants")

country =  Spree::Country.find_by(iso: 'TR')
location = Spree::StockLocation.first_or_create! name: 'default', address1: 'Örnek Cadde', city: 'Ankara', zipcode: '06000', country: country, state: country.states.find_by(name: 'Ankara')

location.active = true
location.save!

Spree::Variant.all.each do |variant|
  variant.stock_items.each do |stock_item|
    Spree::StockMovement.create(:quantity => 10, :stock_item => stock_item)
  end
end
