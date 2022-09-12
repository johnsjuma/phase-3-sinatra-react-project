class Service < ActiveRecord::Base
    has_many :customer
    has_many :spaAttendants
end