class AddDateTakenToDollphotos < ActiveRecord::Migration
  def change
    add_column :dollfotos, :date_taken, :date
  end
end
