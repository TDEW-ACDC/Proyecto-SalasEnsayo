class Sala < ActiveRecord::Base
	def self.search(nombre)
	  if nombre
	    find(:all, :conditions => ['nombre LIKE ?', "%#{nombre}%"])
	  else
	    find(:all)
	  end
	end
end