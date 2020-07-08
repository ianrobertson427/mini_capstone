class AddCountryOrigin < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :add_country_origin, :string
  end
end