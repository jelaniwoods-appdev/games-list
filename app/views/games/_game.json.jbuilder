# frozen_string_literal: true

json.extract! game, :id, :list_id, :name, :video_trailer, :image, :description, :position, :created_at, :updated_at
json.url game_url(game, format: :json)
