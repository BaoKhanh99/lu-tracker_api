# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :validatable

  has_many :sessions, dependent: :destroy
end
