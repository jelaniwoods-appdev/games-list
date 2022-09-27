# frozen_string_literal: true

# == Schema Information
#
# Table name: lists
#
#  id         :bigint           not null, primary key
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class List < ApplicationRecord
  validates :name, presence: true
  after_validation :set_slug

  has_many :games

  def set_slug
    self.slug = name.downcase.parameterize
  end
end
