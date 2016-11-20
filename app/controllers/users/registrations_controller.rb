class Users::RegistrationsController < Devise::RegistrationsController
   
  def create
    resource.save
  end
  

end