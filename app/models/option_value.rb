class OptionValue < ActiveRecord::Base
  has_many :options
  has_many :products, through: :options
end
