class CreateTaggings < ActiveRecord::Migration[5.1]
  def change
    create_table :taggings do |t|
      t.references :tag, foreign_key: {on_delete: :cascade}
      t.references :article, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
