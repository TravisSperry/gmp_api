# frozen_string_literal: true

class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home]

  def home; end

  def dashboard; end
end
