class WebsiteOptionsController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_admin!
  before_action :set_website_option, only: [:show, :edit, :update, :destroy]

  # GET /website_options
  # GET /website_options.json
  def index
    @website_options = WebsiteOption.all
  end

  # GET /website_options/1
  # GET /website_options/1.json
  def show
  end

  # GET /website_options/new
  def new
    @website_option = WebsiteOption.new
  end

  # GET /website_options/1/edit
  def edit
  end

  # POST /website_options
  # POST /website_options.json
  def create
    @website_option = WebsiteOption.new(website_option_params)

    respond_to do |format|
      if @website_option.save
        format.html { redirect_to @website_option, notice: 'Website option was successfully created.' }
        format.json { render :show, status: :created, location: @website_option }
      else
        format.html { render :new }
        format.json { render json: @website_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /website_options/1
  # PATCH/PUT /website_options/1.json
  def update
    respond_to do |format|
      if @website_option.update(website_option_params)
        format.html { redirect_to @website_option, notice: 'Website option was successfully updated.' }
        format.json { render :show, status: :ok, location: @website_option }
      else
        format.html { render :edit }
        format.json { render json: @website_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /website_options/1
  # DELETE /website_options/1.json
  def destroy
    @website_option.destroy
    respond_to do |format|
      format.html { redirect_to website_options_url, notice: 'Website option was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_website_option
      @website_option = WebsiteOption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def website_option_params
      params.require(:website_option).permit(:website_option_type_id, :active, :value)
    end
end
