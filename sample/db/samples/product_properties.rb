products =
  {
    "Ruby on Rails Beyzbol Forması" =>
    {
      "Üretici" => "Wilson",
      "Marka" => "Wannabe Sports",
      "Model" => "JK1002",
      "Gömlek Tipi" => "Beyzbol Forması",
      "Kol Tipi" => "Uzun",
      "Yapıldığı Malzeme" => "100% pamuk",
      "Fit" => "Geniş",
      "Cinsiyet" => "Erkek"
    },
    "Ruby on Rails Jr. Spagetti" =>
    {
      "Üretici" => "Jerseys",
      "Marka" => "Resiliance",
      "Model" => "TL174",
      "Gömlek Tipi" => "Jr. Spaghetti T",
      "Kol Tipi" => "Yok",
      "Yapıldığı Malzeme" => "90% pamuk, 10% naylon",
      "Fit" => "Form",
      "Cinsiyet" => "Kadın"
    },
    "Ruby on Rails Ringer Tişörtü" =>
    {
      "Üretici" => "Jerseys",
      "Marka" => "Conditioned",
      "Model" => "TL9002",
      "Gömlek Tipi" => "Ringer T",
      "Kol Tipi" => "Kısa",
      "Yapıldığı Malzeme" => "100% Vellum",
      "Fit" => "Geniş",
      "Cinsiyet" => "Erkek"
    },
    "Ruby on Rails Torbası" =>
    {
      "Tip" => "Torba",
      "Boyut" => %Q{15" x 18" x 6"},
      "Materyal" => "Kanvas"
    },
    "Ruby on Rails Çantası" =>
    {
      "Tip" => "Messenger",
      "Boyut" => %Q{14 1/2" x 12" x 5"},
      "Materyal" => "600 Denier Polyester"
    },
    "Ruby on Rails Kupası" =>
    {
      "Tip" => "Kupa",
      "Boyut" => %Q{4.5 cm. uzunluk, 3.25 cm. çap}
    },
    "Ruby on Rails Bira Bardağı" =>
    {
      "Tip" => "Stein",
      "Boyut" => %Q{6.75 cm. uzunluk, 3.75 cm. çap taban, 3 cm. çap ağız}
    },
    "Spree Bira Bardağı" =>
    {
      "Tip" => "Stein",
      "Boyut" => %Q{6.75 cm. uzunluk, 3.75 cm. çap taban, 3 cm. çap ağız}
    },
    "Spree Kupası" =>
    {
      "Tip" => "Kupa",
      "Boyut" => %Q{4.5 cm. uzunluk, 3.25 cm. çap}
    },
    "Spree Torbası" =>
    {
      "Tip" => "Torba",
      "Boyut" => %Q{15" x 18" x 6"}
    },
    "Spree Çantası" =>
    {
      "Tip" => "Messenger",
      "Boyut" => %Q{14 1/2" x 12" x 5"}
    },
    "Spree Beyzbol Forması" =>
    {
      "Üretici" => "Wilson",
      "Marka" => "Wannabe Sports",
      "Model" => "JK1002",
      "Gömlek Tipi" => "Beyzbol Forması",
      "Kol Tipi" => "Uzun",
      "Yapıldığı Malzeme" => "100% pamuk",
      "Fit" => "Geniş",
      "Cinsiyet" => "Erkek"
    },
    "Spree Jr. Spagetti" =>
    {
      "Üretici" => "Jerseys",
      "Marka" => "Resiliance",
      "Model" => "TL174",
      "Gömlek Tipi" => "Jr. Spaghetti T",
      "Kol Tipi" => "None",
      "Yapıldığı Malzeme" => "90% pamuk, 10% naylon",
      "Fit" => "Form",
      "Cinsiyet" => "Kadın"
    },
    "Spree Ringer Tişörtü" =>
    {
      "Üretici" => "Jerseys",
      "Marka" => "Conditioned",
      "Model" => "TL9002",
      "Gömlek Tipi" => "Ringer T",
      "Kol Tipi" => "Kısa",
      "Yapıldığı Malzeme" => "100% Vellum",
      "Fit" => "Geniş",
      "Cinsiyet" => "Erkek"
    },
  }

products.each do |name, properties|
  product = Spree::Product.find_by_name(name)
  properties.each do |prop_name, prop_value|
    product.set_property(prop_name, prop_value)
  end
end
