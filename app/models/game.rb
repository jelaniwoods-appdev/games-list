# frozen_string_literal: true

# == Schema Information
#
# Table name: games
#
#  id            :bigint           not null, primary key
#  description   :text             default("")
#  image         :string           default("")
#  name          :string
#  position      :integer          default(0)
#  video_trailer :string           default("")
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  list_id       :integer
#
class Game < ApplicationRecord
  belongs_to :list
  acts_as_list scope: :list
end
