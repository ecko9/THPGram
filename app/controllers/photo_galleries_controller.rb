class PhotoGalleriesController < ApplicationController
  before_action :set_photo_gallery, only: [:show, :update, :destroy]

  # GET /photo_galleries
  def index
    @photo_galleries = PhotoGallery.all

    render json: @photo_galleries
  end

  # GET /photo_galleries/1
  def show
    render json: @photo_gallery
  end

  # POST /photo_galleries
  def create
    @photo_gallery = PhotoGallery.new(photo_gallery_params)

    if @photo_gallery.save
      render json: @photo_gallery, status: :created, location: @photo_gallery
    else
      render json: @photo_gallery.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /photo_galleries/1
  def update
    if @photo_gallery.update(photo_gallery_params)
      render json: @photo_gallery
    else
      render json: @photo_gallery.errors, status: :unprocessable_entity
    end
  end

  # DELETE /photo_galleries/1
  def destroy
    @photo_gallery.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo_gallery
      @photo_gallery = PhotoGallery.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def photo_gallery_params
      params.permit(:name, :photo, :user_id)
    end
end
