class ReasonsController < ApplicationController
  before_action :set_reason, only: [:show, :edit, :update, :destroy]

  def index
    @reasons = Reason.all
  end

  def show
  end

  def new
    @reason = Reason.new
  end

  def edit
  end

  def create
    @reason = Reason.new(params[:reason])

    respond_to do |format|
      if @reason.save
        format.html { redirect_to @reason, notice: 'Reason was successfully created.' }
        format.json { render :show, status: :created, location: @reason }
      else
        format.html { render :new }
        format.json { render json: @reason.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @reason.update(reason_params)
        format.html { redirect_to @reason, notice: 'Reason was successfully updated.' }
        format.json { render :show, status: :ok, location: @reason }
      else
        format.html { render :edit }
        format.json { render json: @reason.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @reason.destroy
    respond_to do |format|
      format.html { redirect_to reasons_url, notice: 'Reason was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_reason
      @reason = Reason.find(params[:id])
    end

    def reason_params
      params.require(:reason).permit(:stage, :value)
    end
end
