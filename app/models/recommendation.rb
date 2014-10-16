class Recommendation
  include ActiveModel::Model

  attr_accessor :text, :price, :img, :link
  @landing_page_url = 'http://localhost:3000/'
  @img_url = 'http://placehold.it/350x150'

  def self.find_by_answers answers
    recommendations = {
      ['Small', 'Few', 'Traditional'] => Recommendation.new(text: 'American Gourmet', price: 129.99, link: @landing_page_url, img: @img_url),
      ['Small', 'Lots', 'Traditional'] => Recommendation.new(text: '2 burner gas', price: 189, link: @landing_page_url, img: @img_url),
      ['Small', 'Few', 'New'] => Recommendation.new(text: 'Patio bistro electric', price: 139, link: @landing_page_url, img: @img_url),
      ['Small', 'Lots', 'New'] => Recommendation.new(text: 'Commercial 2 burner', price: 269, link: @landing_page_url, img: @img_url),
      ['Big', 'Few', 'Traditional'] => Recommendation.new(text: 'Classic 3 burner gas', price: 199.99, link: @landing_page_url, img: @img_url),
      ['Big', 'Lots', 'Traditional'] => Recommendation.new(text: 'Classic 6 burner', price: 389, link: @landing_page_url, img: @img_url),
      ['Big', 'Few', 'New'] => Recommendation.new(text: 'Performance 3 burner', price: 349, link: @landing_page_url, img: @img_url),
      ['Big', 'Lots', 'New'] => Recommendation.new(text: 'Performance 4 burner', price: 549, link: @landing_page_url, img: @img_url)
    }

    recommendations[answers]
  end
end
