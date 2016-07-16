class CategoriesController < ApplicationController
	before_action :require_login_and_admin

	def index
		@categories = Category.all
		@subcategories = Subcategory.all
	end

	def update
		category = Category.find(params[:id])
		category.update!(category_params)
		redirect_to categories_path
	end

	def destroy
		Category.delete(params[:id])
		redirect_to categories_path
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)

		if @category.save
			redirect_to categories_path
		else
			render 'new'
		end
	end

	def edit
		@category = Category.find(params[:id])
	end

	private

		def require_login_and_admin
			unless user_signed_in? and current_user.has_role? :admin
				redirect_to new_user_session_path, :notice => "You do not have permission to view this page."
			end
		end

		def category_params
			params.require(:category).permit(:name)
		end
end