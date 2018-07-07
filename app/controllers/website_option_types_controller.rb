# frozen_string_literal: true

class WebsiteOptionTypesController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_admin!
  before_action :set_website_option_type, only: %i[show edit update destroy]

  # GET /website_option_types
  # GET /website_option_types.json
  def index
    @website_option_types = WebsiteOptionType.all
  end

  # GET /website_option_types/1
  # GET /website_option_types/1.json
  def show; end

  # GET /website_option_types/new
  def new
    @website_option_type = WebsiteOptionType.new
  end

  # GET /website_option_types/1/edit
  def edit; end

  # POST /website_option_types
  # POST /website_option_types.json
  def create
    @website_option_type = WebsiteOptionType.new(website_option_type_params)

    respond_to do |format|
      if @website_option_type.save
        format.html do
          redirect_to @website_option_type, notice: 'Website option type was successfully created.'
        end
        format.json { render :show, status: :created, location: @website_option_type }
      else
        format.html { render :new }
        format.json { render json: @website_option_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /website_option_types/1
  # PATCH/PUT /website_option_types/1.json
  def update
    respond_to do |format|
      if @website_option_type.update(website_option_type_params)
        format.html do
          redirect_to @website_option_type, notice: 'Website option type was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @website_option_type }
      else
        format.html { render :edit }
        format.json { render json: @website_option_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /website_option_types/1
  # DELETE /website_option_types/1.json
  def destroy
    @website_option_type.destroy
    respond_to do |format|
      format.html do
        redirect_to website_option_types_url,
                    notice: 'Website option type was successfully destroyed.'
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_website_option_type
    @website_option_type = WebsiteOptionType.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def website_option_type_params
    params.require(:website_option_type).permit(:name)
  end
end
