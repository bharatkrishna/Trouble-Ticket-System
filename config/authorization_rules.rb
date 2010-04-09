authorization do  
  role :admin do  
    has_permission_on [:articles, :comments], :to => [:index, :show, :new, :create, :edit, :update, :destroy]  
  end  
    
  role :guest do  
    has_permission_on :articles, :to => [:index, :show]  
    has_permission_on :comments, :to => [:new, create]  
  end  
end  
