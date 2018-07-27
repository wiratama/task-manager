class BoardcommentsController < ApplicationController
  before_action :set_boardcomment, only: [:show, :edit, :update, :destroy]

  # GET /boardcomments
  # GET /boardcomments.json
  def index
    @boardcomments = Boardcomment.all
  end

  # GET /boardcomments/1
  # GET /boardcomments/1.json
  def show
  end

  # GET /boardcomments/new
  def new
    @boardcomment = Boardcomment.new
  end

  # GET /boardcomments/1/edit
  def edit
  end

  # POST /boardcomments
  # POST /boardcomments.json
  def create
    @boardcomment = Boardcomment.new(boardcomment_params)

    respond_to do |format|
      if @boardcomment.save
        format.html { redirect_to @boardcomment, notice: 'Boardcomment was successfully created.' }
        format.json { render :show, status: :created, location: @boardcomment }
      else
        format.html { render :new }
        format.json { render json: @boardcomment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boardcomments/1
  # PATCH/PUT /boardcomments/1.json
  def update
    respond_to do |format|
      if @boardcomment.update(boardcomment_params)
        format.html { redirect_to @boardcomment, notice: 'Boardcomment was successfully updated.' }
        format.json { render :show, status: :ok, location: @boardcomment }
      else
        format.html { render :edit }
        format.json { render json: @boardcomment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boardcomments/1
  # DELETE /boardcomments/1.json
  def destroy
    @boardcomment.destroy
    respond_to do |format|
      format.html { redirect_to boardcomments_url, notice: 'Boardcomment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boardcomment
      @boardcomment = Boardcomment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boardcomment_params
      params.fetch(:boardcomment, {})
    end
end
