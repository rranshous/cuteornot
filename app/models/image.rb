class Image < ActiveRecord::Base
  has_attached_file :image,
                    :styles => { :big => "500x500>", :medium => "300x300>",
                                 :thumb => "100x100>" },
                    :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  has_many :ratings, dependent: :destroy

  def avg_rating
    rating_count = self.ratings.length
    rating_sum = self.ratings.map(&:value).reduce(&:+)
    rating_sum.to_f / rating_count
  end
end
