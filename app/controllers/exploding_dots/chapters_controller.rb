# frozen_string_literal: true

module ExplodingDots
  class ChaptersController < ApplicationController
    before_action :authenticate_user!, only: %i[new edit update destroy create]
    before_action :set_chapter, only: %i[show edit update destroy]

    skip_before_action :verify_authenticity_token, only: %i[index show]
    before_action :cors_preflight_check, only: %i[index show]
    after_action :cors_set_access_control_headers, only: %i[index show]

    # GET /chapters
    # GET /chapters.json
    def index
      @chapters = ExplodingDots::Chapter.order(number: :asc).all
    end

    # GET /chapters/1
    # GET /chapters/1.json
    def show; end

    # GET /chapters/new
    def new
      @chapter = ExplodingDots::Chapter.new
    end

    # GET /chapters/1/edit
    def edit; end

    # POST /chapters
    # POST /chapters.json
    def create
      @chapter = ExplodingDots::Chapter.new(chapter_params)

      respond_to do |format|
        if @chapter.save
          format.html { redirect_to @chapter, notice: 'Chapter was successfully created.' }
          format.json { render :show, status: :created, location: @chapter }
        else
          format.html { render :new }
          format.json { render json: @chapter.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /chapters/1
    # PATCH/PUT /chapters/1.json
    def update
      respond_to do |format|
        if @chapter.update(chapter_params)
          format.html { redirect_to @chapter, notice: 'Chapter was successfully updated.' }
          format.json { render :show, status: :ok, location: @chapter }
        else
          format.html { render :edit }
          format.json { render json: @chapter.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /chapters/1
    # DELETE /chapters/1.json
    def destroy
      @chapter.destroy
      respond_to do |format|
        format.html { redirect_to chapters_url, notice: 'Chapter was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_chapter
      @chapter = ExplodingDots::Chapter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapter_params
      params.require(:exploding_dots_chapter).permit(:teaching_guide, :handout, :number, :name, :remove_teaching_guide, :remove_handout,
      translations_attributes: [:id, :chapter_id, :resource, :language, :_destroy])
    end
  end
end
