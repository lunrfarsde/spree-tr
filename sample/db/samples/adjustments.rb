Spree::Sample.load_sample("orders")

first_order = Spree::Order.find_by_number!("R123456789")
last_order = Spree::Order.find_by_number!("R987654321")

