class Reserva < ActiveRecord::Base
	belongs_to :sala
	belongs_to :user
end
