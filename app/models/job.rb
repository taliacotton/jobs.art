class Job < ActiveRecord::Base
  validates :Title, presence: true
  validates :Organization, presence: true
  validates :Location, presence: true
  validates :Date, presence: true
  validates :Description, presence: true
  # validates :url, presence: true, uniqueness: true
end

def self.search(search)
  where("name LIKE ? OR Description LIKE ? OR Organization LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
end
