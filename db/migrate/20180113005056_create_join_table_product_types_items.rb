class CreateJoinTableProductTypesItems < ActiveRecord::Migration[5.1]
  def change
    create_join_table :product_types, :items do |t|
      # t.index [:product_type_id, :item_id]
      # t.index [:item_id, :product_type_id]
    end
  end
end
