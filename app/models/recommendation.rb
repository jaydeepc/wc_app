class Recommendation
  include ActiveModel::Model

  attr_accessor :name, :price, :img, :link
  def self.find_by_answers answers
    all[answers]
  end

  def self.all
    {
      ['Small', 'Few', 'Traditional'] => Recommendation.new(name: 'American Gourmet', price: '$129.99', link: 'http://www.lowes.com/pd_551860-451-12301567_0__?Ntt=american+gourmet+grill&UserSearch=american+gourmet+grill&productId=50202851&rpp=32', img: 'american-gourmet.jpg'),
      ['Small', 'Lots', 'Traditional'] => Recommendation.new(name: '2 burner gas', price: '$189.00', link: 'http://www.charbroil.com/grills/gas-grills/charbroil-traditional-gas-grills/gas-grill-value-series-463622514.html', img: 'charbroil-2-burner.jpg'),
      ['Small', 'Few', 'New'] => Recommendation.new(name: 'Patio bistro electric', price: '$189.00', link: 'http://www.lowes.com/pd_551866-451-12601688_0__?productId=50201323&Ntt=patio+bistro+240+electric&pl=1&currentURL=%3FNtt%3Dpatio%2Bbistro%2B240%2Belectric&facetInfo=', img: 'patio-bistro-240-electric.jpg'),
      ['Small', 'Lots', 'New'] => Recommendation.new(name: 'Commercial 2 burner', price: '$269.00', link: 'http://www.lowes.com/pd_404328-82210-463241014_0__?Ntt=commercial+2+burner+gas+grill&UserSearch=commercial+2+burner+gas+grill&productId=50029234&rpp=32', img: 'commercial-2-burner.jpg'),
      ['Big', 'Few', 'Traditional'] => Recommendation.new(name: 'Classic 3 burner gas', price: '$199.99', link: 'http://www.charbroil.com/grills/gas-grills/charbroil-traditional-gas-grills/char-broil-classic-c-33g3-model-463722313.html', img: 'classic-3-burner.jpg'),
      ['Big', 'Lots', 'Traditional'] => Recommendation.new(name: 'Classic 6 burner', price: '$389.00', link: 'http://www.charbroil.com/gas-grill-k6b-650-lidded-sideburners-463230514.html', img: 'classic-6-burner.png'),
      ['Big', 'Few', 'New'] => Recommendation.new(name: 'Performance 3 burner', price: '$349.00', link: 'http://www.charbroil.com/char-broil-performance-3-burner-tru-ir-gas-grill-463270914.html', img: 'performance-3-burner.png'),
      ['Big', 'Lots', 'New'] => Recommendation.new(name: 'Performance 4 burner', price: '$549.00', link: 'http://www.charbroil.com/char-broil-performance-tru-infrared-4-burner-t-4-463271314.html', img: 'performance-4-burner.jpg')
    }
  end
end
