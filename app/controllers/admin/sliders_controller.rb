class Admin::SlidersController < AdminController
before_action :set_admin_slider, only: [:update, :show, :destroy, :edit]

def index
	@admin_sliders = Admin::Slider.all
end
######################

def new
	@admin_slider = Admin::Slider.new
	end
######################

def create
	@admin_slider = Admin::Slider.new(slider_params)
    respond_to do |format|
      if @admin_slider.save
        format.html { redirect_to admin_sliders_path, notice: 'Slider was successfully created.' }
    else
        format.html { render :new }
        format.json { render json: @admin_slider.errors, status: :unprocessable_entity }
    end
end
end
######################

def edit
end
######################

def update
	respond_to do |format|
      if @admin_slider.update(slider_params)
        format.html { redirect_to admin_sliders_path, notice: 'Slider was successfully updated.' }
      else
        format.html { render :edit }
        format.json { render json: @admin_slider.errors, status: :unprocessable_entity }
      end
    end
end
######################

def show
end
######################

def destroy
  @admin_slider = Admin::Slider.find(params[:id])
  @admin_slider.destroy
  redirect_to admin_sliders_path
end



private

def set_admin_slider
		@admin_slider = Admin::Slider.find(params[:id])
end

def slider_params
	params.require(:admin_slider).permit(:text, :avatar)
end
#####################

end