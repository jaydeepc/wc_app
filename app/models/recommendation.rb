class Recommendation
  include ActiveModel::Model

  attr_accessor :name, :price, :img, :link
  @landing_page_url = 'http://localhost:3000/'
  @img_url = 'http://placehold.it/350x150'

  def self.find_by_answers answers
    all[answers]
  end

  def self.all
    {
      ['Small', 'Few', 'Traditional'] => Recommendation.new(name: 'American Gourmet', price: '$129.99', link: @landing_page_url, img: 'american-gourmet.jpg'),
      ['Small', 'Lots', 'Traditional'] => Recommendation.new(name: '2 burner gas', price: '$189.00', link: @landing_page_url, img: 'charbroil-2-burner.jpg'),
      ['Small', 'Few', 'New'] => Recommendation.new(name: 'Patio bistro electric', price: '$139.00', link: @landing_page_url, img: 'patio-bistro-240-electric.jpg'),
      ['Small', 'Lots', 'New'] => Recommendation.new(name: 'Commercial 2 burner', price: '$269.00', link: @landing_page_url, img: 'commercial-2-burner.jpg'),
      ['Big', 'Few', 'Traditional'] => Recommendation.new(name: 'Classic 3 burner gas', price: '$199.99', link: @landing_page_url, img: 'classic-3-burner.jpg'),
      ['Big', 'Lots', 'Traditional'] => Recommendation.new(name: 'Classic 6 burner', price: '$389.00', link: @landing_page_url, img: 'classic-6-burner.png'),
      ['Big', 'Few', 'New'] => Recommendation.new(name: 'Performance 3 burner', price: '$349.00', link: @landing_page_url, img: 'performance-3-burner.png'),
      ['Big', 'Lots', 'New'] => Recommendation.new(name: 'Performance 4 burner', price: '$549.00', link: @landing_page_url, img: 'performance-4-burner.jpg')
    }
  end
end
