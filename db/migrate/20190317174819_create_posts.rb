class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :code, null: false
      t.text :caption, null: false
      t.jsonb :helper_options
      t.integer :likes, default: 0, null: false
      t.string :display_src, null: false

      t.timestamps
    end
  end
end
