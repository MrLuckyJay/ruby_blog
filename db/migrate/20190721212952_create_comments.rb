class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :comment
      t.references :article

      t.timestamps
    end
  end
end
