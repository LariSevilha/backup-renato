
RailsAdmin.config do |config|
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user) 

  config.show_gravatar = false
  
  config.actions do
     ### User ###
     config.model "User" do
      navigation_label "Gerenciar Usuários"
      list do
        field :id
        field :name  
        field :email 
      end
      edit do
        field :name 
        field :email  
        field :password  
      end
    end
    
    config.model "Header" do
      navigation_label "Topo"
      list do
        field :id 
      end
      edit do 
        field :description, :wysihtml5   
      end
    end
    
    config.model "Video" do
      navigation_label "Videos"
      list do
        field :id
        field :title  
      end
      edit do
        field :title  
        field :url 
      end
    end 
    
    config.model "About" do
      navigation_label "Sobre mim"
      list do
        field :id
        field :description  
      end
      edit do
        field :description, :wysihtml5
      end
    end 
    dashboard
    show  

    delete  

    edit

    index

    new  
 
    end
end  