class Category < ActiveRecord::Base
  has_many :categorizations
  has_many :products, through: :categorizations

  before_validation :sanitize_data

  validates :name,        presence: true, length: { :maximum => 50 }
  validates :permalink,   presence: true, uniqueness: true, length: { :maximum => 50 }

  private
    # if the permalink is not filled in set it equal to the name
    def sanitize_data
      sanitize_permalink
      sanitize_name
    end

    def sanitize_permalink
      self.permalink = name if permalink.blank? && name
      self.permalink = permalink.squeeze(" ").strip.gsub(' ', '-') if permalink
      self.permalink = permalink.downcase
    end

    def sanitize_name
      self.name = name.titleize
    end
end
