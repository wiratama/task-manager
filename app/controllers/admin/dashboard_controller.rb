module Admin
	class DashboardController < Admin::AdminAppsController
		# before_action :set_board, only: [:show, :edit, :update, :destroy]

		def index
			# @boards = Board.all
			puts 'dashboard'
		end

		# def new
		# 	@board = Board.new
		# end

		# def edit
		# end

		# def create
		# 	@board = Board.new(board_params)

		# 	respond_to do |format|
		# 		if @board.save
		# 			format.html { redirect_to @board, notice: 'Board was successfully created.' }
		# 			format.json { render :show, status: :created, location: @board }
		# 		else
		# 			format.html { render :new }
		# 			format.json { render json: @board.errors, status: :unprocessable_entity }
		# 		end
		# 	end
		# end

		# def update
		# 	respond_to do |format|
		# 		if @board.update(board_params)
		# 			format.html { redirect_to @board, notice: 'Board was successfully updated.' }
		# 			format.json { render :show, status: :ok, location: @board }
		# 		else
		# 			format.html { render :edit }
		# 			format.json { render json: @board.errors, status: :unprocessable_entity }
		# 		end
		# 	end
		# end

		# def destroy
		# 	@board.destroy
		# 	respond_to do |format|
		# 		format.html { redirect_to boards_url, notice: 'Board was successfully destroyed.' }
		# 		format.json { head :no_content }
		# 	end
		# end

		# private
		# 	def set_board
		# 		@board = Board.find(params[:id])
		# 	end

		# 	def board_params
		# 		params.fetch(:board, {})
		# 	end
	end
end