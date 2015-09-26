class AddConfidenceToMessages < ActiveRecord::Migration
  def change
  	add_column :messages, :confidence, :string
  end
end
