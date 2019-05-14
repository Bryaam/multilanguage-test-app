class AddTranslationsToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :translations, :jsonb, default: {}

    Post.all.each do |post|
      caption = post["caption"]
      helper_options = post["helper_options"]

      post.update(caption: caption, helper_options: helper_options)
    end
  end
end
