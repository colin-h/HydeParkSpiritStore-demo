class Option < ActiveRecord::Base
  belongs_to :option_value
  belongs_to :product
end
