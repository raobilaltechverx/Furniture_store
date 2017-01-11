class Admin::CmsPagesController < AdminController
before_action :set_cms_page, only: [:show, :update, :edit, :destroy]
def index
	@cms_pages = Admin::CmsPage.all
end


def new
@cms_page = Admin::CmsPage.new
end


def create
@cms_page = Admin::CmsPage.new(cms_pages_params)
 respond_to do |format|
      if @cms_page.save
        format.html { redirect_to admin_cms_pages_path, notice: 'CMS Page was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @cms_page.errors, status: :unprocessable_entity }
      end
    end
end


def edit
end

def show
end

def update
respond_to do |format|
      if @cms_page.update(cms_pages_params)
        format.html { redirect_to admin_cms_pages_path, notice: 'CMS Page was successfully updated.' }
             else
        format.html { render :edit }
        format.json { render json: @cms_page.errors, status: :unprocessable_entity }
      end
    end
end


def destroy
	@cms_page = Admin::CmsPage.find(params[:id])
	@cms_page.destroy
	redirect_to admin_cms_pages_path
end

private

def set_cms_page
@cms_page = Admin::CmsPage.find(params[:id])
end


def cms_pages_params
 	params.require(:admin_cms_page).permit(:title, :description, :avatar)
end

end
