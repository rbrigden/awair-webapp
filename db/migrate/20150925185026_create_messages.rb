class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
    	t.belongs_to :locale
      t.text :body
      t.datetime :transcribed_at
      t.string :type
      t.timestamps null: false
    end
  end
end
