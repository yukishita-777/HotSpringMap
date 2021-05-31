# frozen_string_literal: true

class MapsController < ApplicationController
  def index
    @maps = Map.all
    @map = Map.new
  end

  def new
    @map = Map.new(map_params)
  end

  def create
    @map = Map.new(map_params)

    respond_to do |format|
      if @map.save
        format.html { redirect_to :root }
        format.js
      else
        format.html { render :new }
        format.js { render :errors}
      end
    end
  end

  def upadate
    @map = Map.find(params[:id])
  end

  def destroy
    @map = Map.find(params[:id])
  end

  private

  def map_params
    params.require(:map).permit(:name, :address, :latitude, :longitude)
  end
end
