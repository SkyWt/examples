class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :name, null: false
      t.string :body, null: false
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end