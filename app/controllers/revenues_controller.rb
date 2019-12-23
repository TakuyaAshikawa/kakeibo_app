class IncomesController < ApplicationController

	def index
	  @revenues = Revenue.order(created_at: :asc)
	end

	def show
	  @revenue = Revenue.find(params[:id])
	end

	def new
	  @revenue = Revenue.new()
	end

	def edit
	  @revenue = Revenue.find(params[:id])
	end

	def create
	  @revenue = Revenue.new(params[:revenue])
		if @revenue.save
			redirect_to @revenue, notice: "収入科目を登録しました"
		else
			render "new"
		end
	end

	def update
	  @revenue = Revenue.find(params[:id])
		@revenue.assign_attributes(params[:revenue])
		if @revenue.save
			redirect_to @revenue, notice: "収入科目を登録しました"
		else
			render "new"
		end
	end

	def destroy
	  @revenue = Revenue.find(params[:id])
		@revenue.destroy
		redirect_to :revenues, notice: "科目を削除しました。"
	end

end