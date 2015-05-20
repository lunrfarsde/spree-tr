turkey = Spree::Country.find_by_name!("Turkey")
ankara = Spree::State.find_by_name!("Ankara")

# Billing address
Spree::Address.create!(
  firstname: "Mehmet",
  lastname: "Yılmaz",
  address1: "Atatürk Caddesi 7.Sokak No:6",
  address2: "Yenimahalle",
  city: ankara,
  state: ankara,
  zipcode: "06001",
  country: turkey,
  phone: "3125636363")

#Shipping address
Spree::Address.create!(
  firstname: "Ayşe",
  lastname: "Yılmaz",
  address1: "53.Cadde Merkez Site No:B4-3",
  address2: "Eryaman",
  city: ankara,
  state: ankara,
  zipcode: "06002",
  country: turkey,
  phone: "3125257526")
