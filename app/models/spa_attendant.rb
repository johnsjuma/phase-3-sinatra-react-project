class SpaAttendant < ActiveRecord::Base
    belongs_to :services
    has_many :customer, through: :services


end