class Admin::BlogsController < AdminController
before_action :set_blog, only: [:show, :update, :edit, :destroy]

def index
@admin_blogs = Admin::Blog.all
end


def new 
@admin_blog = Admin::Blog.new
end



def create
	
	@admin_blog = Admin::Blog.new(admin_blog_params)
 respond_to do |format|
      if @admin_blog.save
        format.html { redirect_to admin_blogs_path, notice: 'Blog create successfully.' }
      else
        format.html { render :new }
        format.json { render json: @admin_blog.errors, status: :unprocessable_entity }
      end
    end
end

def edit
end

def show
end


def update
respond_to do |format|
      if @admin_blog.update(admin_blog_params)
        format.html { redirect_to admin_blogs_path, notice: 'CMS Page was successfully updated.' }
             else
        format.html { render :edit }
        format.json { render json: @admin_blog.errors, status: :unprocessable_entity }
      end
    end
end


def destroy
	@admin_blog = Admin::Blog.find(params[:id])
    @admin_blog.destroy
    redirect_to admin_blogs_path
end

private

def set_blog
@admin_blog = Admin::Blog.find(params[:id])
end


def admin_blog_params
params.require(:admin_blog).permit(:title, :description, :avatar)
end

end
