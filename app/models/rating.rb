class Rating < ActiveRecord::Base
  belongs_to :image

  validates :value,
            numericality: { only_integer: true,
                            greater_than_or_equal_to: 0,
                            less_than_or_equal_to: 5 }
end
