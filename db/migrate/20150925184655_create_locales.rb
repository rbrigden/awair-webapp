class CreateLocales < ActiveRecord::Migration
  def change
    create_table :locales do |t|
      t.string :city
      t.string :state

      t.timestamps null: false
    end
  end
end
