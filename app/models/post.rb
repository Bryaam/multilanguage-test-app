class Post < ApplicationRecord
  extend Mobility
  translates :caption
  translates :helper_options

  # translates :caption, type: :text
  # translates :helper_options, backend: :jsonb

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
