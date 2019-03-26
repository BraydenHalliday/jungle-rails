require 'rails_helper'
RSpec.feature "Visitor can view indivdual products", type: :feature, js: true do
#setup
  before :each do
    @category = Category.create! name: 'Apparel'

   # 10.times do |n|
      @category.products.create!(
       # name:  Faker::Hipster.sentence(3),
       name: 'thing',
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
   # end
  end

  scenario "users can click on an item and see its indvidual view paige" do
    visit root_path
    click_on 'thing'
    # commented out b/c it's for debugging only
    #sleep 5
    has_css? 'products-show'
    save_screenshot
    
    
    end


end
