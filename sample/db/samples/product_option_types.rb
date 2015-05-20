Spree::Sample.load_sample("products")

size = Spree::OptionType.find_by_presentation!("Boyut")
color = Spree::OptionType.find_by_presentation!("Renk")

ror_baseball_jersey = Spree::Product.find_by_name!("Ruby on Rails Beyzbol Forması")
ror_baseball_jersey.option_types = [size, color]
ror_baseball_jersey.save!

spree_baseball_jersey = Spree::Product.find_by_name!("Spree Beyzbol Forması")
spree_baseball_jersey.option_types = [size, color]
spree_baseball_jersey.save!
