class Product < ActiveRecord::Base
  has_many :categorizations
  has_many :categories, through: :categorizations

  has_many :options
  has_many :option_values, through: :options

  has_one :type
  has_one :types, through: :product_types


  has_attached_file :image,
                    styles: { mini: '48x48>', small: '100x100>', medium: '300x300>', large: '500x500>' },
                    default_style: :medium,
                    url: '/products/:id/:style/:basename.:extension',
                    path: ':rails_root/public/products/:id/:style/:basename.:extension'

  validates :name,          presence: true, length: { :maximum => 120 }
  validates :description,   length: { :maximum => 2255 }
  validates :permalink,     presence: true, uniqueness: true, length: { :maximum => 120 }
  validates :sku,           presence: true, length: { :maximum => 50 }
  validates :price,         presence: true
  validates :cost,          presence: true

  before_validation :sanitize_data

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
