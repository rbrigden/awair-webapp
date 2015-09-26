class AddLinksToLocales < ActiveRecord::Migration
  def change
  	add_column :locales, :img_url, :string
  end
end
