class User < ActiveRecord::Base
validates_presence_of :uid, :provider
validates_uniqueness_of :uid, :scope => :provider

def self.create_with_omniauth(auth)  
    create! do |user|  
      user.provider = auth["provider"]  
      user.uid = auth["uid"] 
      user.name = auth["user"]
    end  
end  
end
