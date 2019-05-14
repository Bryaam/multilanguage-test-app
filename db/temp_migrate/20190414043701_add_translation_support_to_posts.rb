class AddTranslationSupportToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :translation_support, :jsonb
  end
end
