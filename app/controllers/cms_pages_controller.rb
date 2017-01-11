class CmsPagesController < ApplicationController

def index
@cms_pages = Admin::CmsPage.all
end

def show
@cms_page = Admin::CmsPage.find(params[:id])
end


end
