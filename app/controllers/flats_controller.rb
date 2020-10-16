class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]
  def index
    @flats = Flat.all
  end

  def show; end

  def new
    @flat = Flat.new # needed to instantiate the form_for
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save

    # no need for app/views/flats/create.html.erb
    redirect_to flat_path(@flat)
  end

  def edit; end

  def update
    @flat.update(flat_params)

    # no need for app/views/flats/update.html.erb
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat.destroy

    # no need for app/views/flats/destroy.html.erb
    redirect_to flats_path
  end

  private

  def flat_params
    params.require(:flat).permit(:title, :content)
  end

  def set_flat
    @flat = flat.find(params[:id])
  end
end
