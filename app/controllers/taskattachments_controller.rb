class TaskattachmentsController < ApplicationController
  before_action :set_taskattachment, only: [:show, :edit, :update, :destroy]

  # GET /taskattachments
  # GET /taskattachments.json
  def index
    @taskattachments = Taskattachment.all
  end

  # GET /taskattachments/1
  # GET /taskattachments/1.json
  def show
  end

  # GET /taskattachments/new
  def new
    @taskattachment = Taskattachment.new
  end

  # GET /taskattachments/1/edit
  def edit
  end

  # POST /taskattachments
  # POST /taskattachments.json
  def create
    @taskattachment = Taskattachment.new(taskattachment_params)

    respond_to do |format|
      if @taskattachment.save
        format.html { redirect_to @taskattachment, notice: 'Taskattachment was successfully created.' }
        format.json { render :show, status: :created, location: @taskattachment }
      else
        format.html { render :new }
        format.json { render json: @taskattachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taskattachments/1
  # PATCH/PUT /taskattachments/1.json
  def update
    respond_to do |format|
      if @taskattachment.update(taskattachment_params)
        format.html { redirect_to @taskattachment, notice: 'Taskattachment was successfully updated.' }
        format.json { render :show, status: :ok, location: @taskattachment }
      else
        format.html { render :edit }
        format.json { render json: @taskattachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taskattachments/1
  # DELETE /taskattachments/1.json
  def destroy
    @taskattachment.destroy
    respond_to do |format|
      format.html { redirect_to taskattachments_url, notice: 'Taskattachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taskattachment
      @taskattachment = Taskattachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taskattachment_params
      params.fetch(:taskattachment, {})
    end
end
