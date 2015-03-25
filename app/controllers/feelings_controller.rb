class FeelingsController < ApplicationController
  before_action :set_feeling, only: [:show, :edit, :update, :destroy]

  def index
    @feelings = Feeling.all
  end

  def show
  end

  def new
    @feeling = Feeling.new
  end

  def edit
  end

  def create
    @feeling = Feeling.new(params[:feeling])

    respond_to do |format|
      if @feeling.save
        format.html { redirect_to @feeling, notice: 'Feeling was successfully created.' }
        format.json { render :show, status: :created, location: @feeling }
      else
        format.html { render :new }
        format.json { render json: @feeling.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @feeling.update(feeling_params)
        format.html { redirect_to @feeling, notice: 'Feeling was successfully updated.' }
        format.json { render :show, status: :ok, location: @feeling }
      else
        format.html { render :edit }
        format.json { render json: @feeling.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @feeling.destroy
    respond_to do |format|
      format.html { redirect_to feelings_url, notice: 'Feeling was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_feeling
      @feeling = Feeling.find(params[:id])
    end

    def feeling_params
      params.require(:feeling).permit(:stage, :value)
    end
end
