sc = Spree::ShippingCategory.find_by(name: "Default")
if sc
  sc.update!(name: "Varsayılan")
else
  Spree::ShippingCategory.create!(:name => "Varsayılan")
end
