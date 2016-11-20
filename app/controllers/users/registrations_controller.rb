class Users::RegistrationsController < Devise::RegistrationsController
   
  def create
    super do |resource|
      resource.save
    end
  end
  

end