class BoarditemsController < ApplicationController
  before_action :set_boarditem, only: [:show, :edit, :update, :destroy]

  # GET /boarditems
  # GET /boarditems.json
  def index
    @boarditems = Boarditem.all
  end

  # GET /boarditems/1
  # GET /boarditems/1.json
  def show
  end

  # GET /boarditems/new
  def new
    @boarditem = Boarditem.new
  end

  # GET /boarditems/1/edit
  def edit
  end

  # POST /boarditems
  # POST /boarditems.json
  def create
    @boarditem = Boarditem.new(boarditem_params)

    respond_to do |format|
      if @boarditem.save
        format.html { redirect_to @boarditem, notice: 'Boarditem was successfully created.' }
        format.json { render :show, status: :created, location: @boarditem }
      else
        format.html { render :new }
        format.json { render json: @boarditem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boarditems/1
  # PATCH/PUT /boarditems/1.json
  def update
    respond_to do |format|
      if @boarditem.update(boarditem_params)
        format.html { redirect_to @boarditem, notice: 'Boarditem was successfully updated.' }
        format.json { render :show, status: :ok, location: @boarditem }
      else
        format.html { render :edit }
        format.json { render json: @boarditem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boarditems/1
  # DELETE /boarditems/1.json
  def destroy
    @boarditem.destroy
    respond_to do |format|
      format.html { redirect_to boarditems_url, notice: 'Boarditem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boarditem
      @boarditem = Boarditem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boarditem_params
      params.fetch(:boarditem, {})
    end
end
