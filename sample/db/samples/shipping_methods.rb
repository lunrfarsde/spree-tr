begin
  turkey = Spree::Zone.find_by_name!("Turkey")
rescue ActiveRecord::RecordNotFound
  puts "Couldn't find 'Turkey' zone. Did you run `rake db:seed` first?"
  puts "That task will set up the countries, states and zones required for Spree."
  exit
end

shipping_category = Spree::ShippingCategory.find_or_create_by!(name: 'Varsayılan')

Spree::ShippingMethod.create!([
  {
    :name => "UPS Ground (EU)",
    :zones => [turkey],
    :calculator => Spree::Calculator::Shipping::FlatRate.create!,
    :shipping_categories => [shipping_category]
  },
  {
    :name => "UPS Ground (EUR)",
    :zones => [turkey],
    :calculator => Spree::Calculator::Shipping::FlatRate.create!,
    :shipping_categories => [shipping_category]
  }
])

{
  "UPS Ground (EU)" => [5, "TRY"],
  "UPS Ground (EUR)" => [8, "TRY"]
}.each do |shipping_method_name, (price, currency)|
  shipping_method = Spree::ShippingMethod.find_by_name!(shipping_method_name)
  shipping_method.calculator.preferences = {
    amount: price,
    currency: currency
  }
  shipping_method.calculator.save!
  shipping_method.save!
end
