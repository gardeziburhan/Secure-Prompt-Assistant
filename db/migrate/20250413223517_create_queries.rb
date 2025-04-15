class CreateQueries < ActiveRecord::Migration[7.1]
  def change
    create_table :queries do |t|
      t.text :content
      t.text :response
      t.references :user, null: false, foreign_key: true
      t.references :organization, null: false, foreign_key: true
      t.integer :status
      t.json :metadata, default: {}

      t.timestamps
    end
  end
end
