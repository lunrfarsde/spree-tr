turkey = Spree::Zone.find_by_name!("Turkey")
clothing = Spree::TaxCategory.find_by_name!("Giyim")
tax_rate = Spree::TaxRate.create(
  :name => "Turkey",
  :zone => turkey,
  :amount => 0.05,
  :tax_category => clothing)
tax_rate.calculator = Spree::Calculator::DefaultTax.create!
tax_rate.save!
