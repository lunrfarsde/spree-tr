turkey = Spree::Zone.create!(name: "Turkey")

turkey.zone_members.create!(zoneable: Spree::Country.find_by!(name: "Turkey"))
