class Post < ApplicationRecord
  translates :caption, fallbacks_for_empty_translations: true

  validates_presence_of :caption

  before_create :set_display_src, :set_code

  private

  def set_code
    self.code = Digest::SHA1.hexdigest([Time.now, rand].join)
  end

  def set_display_src
    identifier = rand(10) * 85
    self.display_src = "https://picsum.photos/400/400/?image=#{identifier}"
  end

end
