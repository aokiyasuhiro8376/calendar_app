# frozen_string_literal: true

class Chat < ApplicationRecord
  has_many :users
end
