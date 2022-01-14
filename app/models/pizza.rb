# frozen_string_literal: true

class Pizza < ApplicationRecord
  has_many :order_items
end
