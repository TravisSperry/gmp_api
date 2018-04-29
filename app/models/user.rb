# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :recoverable, :rememberable, :trackable

  validates_presence_of :email, :first_name, :last_name
end
