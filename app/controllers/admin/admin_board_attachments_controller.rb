module Admin
  class AdminBoardAttachmentsController < Admin::AdminAppsController
    before_action :set_boardattachment, only: [:show, :edit, :update, :destroy]

    # GET /boardattachments
    # GET /boardattachments.json
    def index
      @boardattachments = Boardattachment.all
    end

    # GET /boardattachments/1
    # GET /boardattachments/1.json
    def show
    end

    # GET /boardattachments/new
    def new
      @boardattachment = Boardattachment.new
    end

    # GET /boardattachments/1/edit
    def edit
    end

    # POST /boardattachments
    # POST /boardattachments.json
    def create
      @boardattachment = Boardattachment.new(boardattachment_params)

      respond_to do |format|
        if @boardattachment.save
          format.html { redirect_to @boardattachment, notice: 'Boardattachment was successfully created.' }
          format.json { render :show, status: :created, location: @boardattachment }
        else
          format.html { render :new }
          format.json { render json: @boardattachment.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /boardattachments/1
    # PATCH/PUT /boardattachments/1.json
    def update
      respond_to do |format|
        if @boardattachment.update(boardattachment_params)
          format.html { redirect_to @boardattachment, notice: 'Boardattachment was successfully updated.' }
          format.json { render :show, status: :ok, location: @boardattachment }
        else
          format.html { render :edit }
          format.json { render json: @boardattachment.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /boardattachments/1
    # DELETE /boardattachments/1.json
    def destroy
      @boardattachment.destroy
      respond_to do |format|
        format.html { redirect_to boardattachments_url, notice: 'Boardattachment was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_boardattachment
        @boardattachment = Boardattachment.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def boardattachment_params
        params.fetch(:boardattachment, {})
      end
  end
end
