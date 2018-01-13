class ProductType < ApplicationRecord
  has_and_belongs_to_many :items

  @PrintsA4 = 'Print - A4'
  @PrintsA3 = 'Print - A3'
  @PrintsA5 = 'Print - A5'
  
  @Prints = ['Print - A4', 'Print - A3', 'Print - A5']

  class << self
    attr_reader :PrintsA4, :PrintsA3, :PrintsA5, :Prints
  end

end
