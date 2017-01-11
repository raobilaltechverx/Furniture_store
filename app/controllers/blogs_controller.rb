class BlogsController < ApplicationController
def index
@admin_blogs = Admin::Blog.all
end

def show
	end
end
