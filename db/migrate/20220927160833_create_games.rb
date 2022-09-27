# frozen_string_literal: true

class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.integer :list_id
      t.string :name
      t.string :video_trailer, default: ''
      t.string :image, default: ''
      t.text :description, default: ''
      t.integer :position, default: 0

      t.timestamps
    end
  end
end
