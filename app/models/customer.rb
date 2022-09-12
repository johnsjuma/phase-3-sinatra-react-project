class Customer < ActiveRecord::Base
    belongs_to :service
    has_many :spaAttendants, through: :service
end