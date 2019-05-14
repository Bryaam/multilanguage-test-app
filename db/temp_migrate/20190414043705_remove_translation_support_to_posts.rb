class RemoveTranslationSupportToPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :translation_support
  end
end
