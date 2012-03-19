class User < ActiveRecord::Base
has_and_belongs_to_many :roles

validates_presence_of :uid, :provider
validates_uniqueness_of :uid, :scope => :provider

def self.create_with_omniauth(auth)  
    create! do |user|  
      user.provider = auth["provider"]  
      user.uid = auth["uid"] 
      user.name = auth["user_info"]
 	  user.roles << Role.find(2)
    end  
end  
end
