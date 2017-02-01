class Admin::SubCategoryController < AdminController
def index
		@sub_category = Admin::Subcategory.all
	end
end
