class HealthpointsController < ApplicationController
  respond_to :html, :json
 
  def show 
    @healthpoint = Healthpoint.find(params[:account_id])
  end
  
  def new
    # Form where a user can add a new interest.
    @healthpoint = Healthpoint.new
  end
 
  def update
    @healthpoint = Healthpoint.find(params[:account_id])
    # @healthpoint.update_attributes(params[:healthpoint])
    
    if @healthpoint.update_attributes(healthpoint_params)
      flash[:warning] = "Health point updated!"
      redirect_to user_path( params[:user_id] )
    else
       render action: :edit
    end
    
    respond_with @healthpoint
  end

  def destroy
    @healthpoint = Healthpoint.find(params[:account_id])
    @healthpoint.destroy
    
    redirect_to(current_user) 
    redirect_to action: :index
  end

  private
    def healthpoint_params
      params.require(:healthpoint).permit(:diary_entry, :healthpoint1, :healthpoint2, :healthpoint3, :healthpoint4, :healthpoint5)
    end

end