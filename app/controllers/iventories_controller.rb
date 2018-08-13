class IventoriesController < ApplicationController
  before_action :set_iventory, only: [:show, :update, :destroy]

  # GET /iventories
  def index
    @iventories = Iventory.all

    render json: @iventories
  end

  # GET /iventories/1
  def show
    render json: @iventory
  end

  # POST /iventories
  def create
    @iventory = Iventory.new(iventory_params)

    if @iventory.save
      render json: @iventory, status: :created, location: @iventory
    else
      render json: @iventory.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /iventories/1
  def update
    if @iventory.update(iventory_params)
      render json: @iventory
    else
      render json: @iventory.errors, status: :unprocessable_entity
    end
  end

  # DELETE /iventories/1
  def destroy
    @iventory.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iventory
      @iventory = Iventory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def iventory_params
      params.require(:iventory).permit(:references, :water, :food, :medication, :ammunition)
    end
end
