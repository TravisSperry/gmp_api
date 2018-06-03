# frozen_string_literal: true

class AmbassadorsController < ApplicationController
  before_action :authenticate_user!, except: %i[new show create index]
  before_action :set_ambassador, only: %i[show edit update destroy mark_approved crop]

  skip_before_action :verify_authenticity_token, only: %i[index show crop]
  before_action :cors_preflight_check, only: %i[index show crop]
  after_action :cors_set_access_control_headers, only: %i[index show crop]

  # GET /ambassadors
  # GET /ambassadors.json
  def index
    if params[:active_ambassadors]
      @ambassadors = Ambassador.approved_and_verified
    else
      @ambassadors = Ambassador.all
    end
  end

  # GET /ambassadors/1
  # GET /ambassadors/1.json
  def show; end

  # GET /ambassadors/new
  def new
    @ambassador = Ambassador.new
  end

  # GET /ambassadors/1/edit
  def edit; end

  # POST /ambassadors
  # POST /ambassadors.json
  def create
    @ambassador = Ambassador.new(ambassador_params)
    destination_url = params[:destination] ? params[:destination][:url] : @ambassador

    respond_to do |format|
      if @ambassador.save
        format.html { redirect_to destination_url, notice: 'Ambassador was successfully created.' }
        format.json { render :show, status: :created, location: @ambassador }
      else
        format.html { render :new }
        format.json { render json: @ambassador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ambassadors/1
  # PATCH/PUT /ambassadors/1.json
  def update
    respond_to do |format|
      if @ambassador.update(ambassador_params)
        format.html { redirect_to @ambassador, notice: 'Ambassador was successfully updated.' }
        format.json { render :show, status: :ok, location: @ambassador }
      else
        format.html { render :edit }
        format.json { render json: @ambassador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ambassadors/1
  # DELETE /ambassadors/1.json
  def destroy
    @ambassador.destroy
    respond_to do |format|
      format.html { redirect_to ambassadors_url, notice: 'Ambassador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def mark_approved
    @ambassador.update! approved: true
    redirect_to ambassadors_url, notice: 'Ambassador was approved.'
  end

  def crop
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_ambassador
    @ambassador = Ambassador.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def ambassador_params
    params.require(:ambassador).permit(:first_name, :last_name, :profile_photo, :country, :twitter,
                                       :email, :gmp_statement, :bio, :email_publishable, :website,
                                       :crop_x, :crop_y, :crop_w, :crop_h
                                      )
  end
end
