class AddTranslationsForPosts < ActiveRecord::Migration[5.2]
  def up
    # temp_posts = {}
    # Post.all.each do |post|
    #   temp_posts[:id] = post.id
    #   temp_posts[:caption] = post.caption
    #   post.update(caption: "")
    # end

    change_column :posts, :caption, :jsonb, using: 'caption::jsonb'
    # change_column :posts, :caption, :jsonb, default: '{}', using: 'CAST(caption as jsonb)'
    # change_column :posts, :caption, :jsonb, default: '{}', using: 'caption::text::jsonb'

    # temp_posts.all.each do |temp_post|
    #   post = Post.find(temp_post[:id])
    #   post.update(caption: temp_post[:caption])
    # end
  end

  def down
    change_column :posts, :caption, :string
  end

end
