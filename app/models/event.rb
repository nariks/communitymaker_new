class Event < ActiveRecord::Base
  belongs_to :user
  has_many :group_events
  has_many :groups, through: :group_events
  validates :street, :suburb, :postcode, :state, :country, presence: true

  acts_as_taggable
  acts_as_votable

  geocoded_by :full_street_address
  after_validation :geocode

  def full_street_address
  	[street, suburb, postcode, state, country].compact.join(",")
  end
  


end
