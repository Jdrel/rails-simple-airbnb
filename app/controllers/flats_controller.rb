class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  def index
    if params["/flats"].nil?
      @flats = Flat.all
    else
      @query = params["/flats"][:query]
      @flats = Flat.where(name: @query)
    end
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
  end
end
