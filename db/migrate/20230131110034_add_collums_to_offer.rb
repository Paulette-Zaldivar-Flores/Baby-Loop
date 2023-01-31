class AddCollumsToOffer < ActiveRecord::Migration[7.0]
  def change
    add_column :offers, :rating, :integer
  end
end
