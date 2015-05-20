Spree::Gateway::Bogus.create!(
  {
    name: "Kredi Kartı",
    description: "Test ödeme geçidi.",
    active: true
  }
)

Spree::PaymentMethod::Check.create!(
  {
    name: "Çek",
    description: "Çekle ödeme.",
    active: true
  }
)
