class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :name, :default => 'default'
      t.text :bio, :default => 'default'

      t.timestamps
    end
  end
end
