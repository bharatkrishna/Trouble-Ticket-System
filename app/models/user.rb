class User < ActiveRecord::Base  
  acts_as_authentic  
def role_symbols  
  roles.map do |role|  
    role.name.underscore.to_sym  
  end  
end    
end  
