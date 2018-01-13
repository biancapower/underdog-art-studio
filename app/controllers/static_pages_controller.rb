class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!

  def prints
    @items = Item.joins(:product_types).where('product_types.name' => ProductType.Prints).distinct
  end

  def stickers
    @items = ProductType.find_by( name: 'Sticker') .items
  end

  def shirts
    @items = ProductType.find_by( name: 'Shirt') .items
  end
end
