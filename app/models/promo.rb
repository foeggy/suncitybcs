
class Promo < ActiveRecord::Base
	validates_presence_of :title, :description, :start, :end
end
