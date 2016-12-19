class DeletionsController < ApplicationController
  before_action :set_deletion, only: [:show, :edit, :update, :destroy]

  # GET /deletions
  # GET /deletions.json
  def index
    @deletions = Deletion.all
  end

  # GET /deletions/1
  # GET /deletions/1.json
  def show
  end

  # GET /deletions/new
  def new
    @deletion = Deletion.new
  end

  # GET /deletions/1/edit
  def edit
  end

  # POST /deletions
  # POST /deletions.json
  def create
    @deletion = Deletion.new(deletion_params)

    respond_to do |format|
      if @deletion.save
        format.html { redirect_to @deletion, notice: 'Deletion was successfully created.' }
        format.json { render :show, status: :created, location: @deletion }
      else
        format.html { render :new }
        format.json { render json: @deletion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deletions/1
  # PATCH/PUT /deletions/1.json
  def update
    respond_to do |format|
      if @deletion.update(deletion_params)
        format.html { redirect_to @deletion, notice: 'Deletion was successfully updated.' }
        format.json { render :show, status: :ok, location: @deletion }
      else
        format.html { render :edit }
        format.json { render json: @deletion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deletions/1
  # DELETE /deletions/1.json
  def destroy
    @deletion.destroy
    respond_to do |format|
      format.html { redirect_to deletions_url, notice: 'Deletion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deletion
      @deletion = Deletion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deletion_params
      params.require(:deletion).permit(:review_id, :position, :offset)
    end
end
