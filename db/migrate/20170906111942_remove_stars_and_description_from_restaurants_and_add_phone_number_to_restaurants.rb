class RemoveStarsAndDescriptionFromRestaurantsAndAddPhoneNumberToRestaurants < ActiveRecord::Migration[5.0]
  def change
  	remove_column :restaurants, :description
  	remove_column :restaurants, :stars
  	add_column :restaurants, :phone_number, :string
  end
end
