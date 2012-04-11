class Sala < ActiveRecord::Base
	acts_as_voteable
	has_and_belongs_to_many :instrumentos

	def self.search(nombre)
	  if nombre
	    find(:all, :conditions => ['nombre LIKE ?', "%#{nombre}%"])
	  else
	    find(:all)
	  end
	end
end