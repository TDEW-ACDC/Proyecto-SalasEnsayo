class User < ActiveRecord::Base

validates_presence_of :uid, :provider
validates_uniqueness_of :uid, :scope => :provider

def self.create_with_omniauth(auth)  
    create! do |user|  
      user.provider = auth["provider"]  
      user.uid = auth["uid"] 
      user.nick = auth["info"]["nickname"]
      user.name = auth["info"]["name"]
      user.location = auth["info"]["location"]
      user.image = auth["info"]["image"]

    end  
end  
end
