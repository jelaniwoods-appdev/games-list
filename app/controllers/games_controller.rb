# frozen_string_literal: true

class GamesController < ApplicationController
  before_action :set_game, only: %i[show edit update move_up move_down destroy]

  # GET /games
  def index
    @games = Game.all
  end

  # GET /games/1
  def show; end

  # GET /games/new
  def new
    @game = Game.new
  end

  # GET /games/1/edit
  def edit; end

  # POST /games
  def create
    @game = Game.new(game_params)

    if @game.save
      respond_to do |format|
        format.turbo_stream {}
        format.html do
          redirect_to @game, notice: 'Game was successfully created.'
        end
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /games/1
  def update
    if @game.update(game_params)
      redirect_to @game, notice: 'Game was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def move_down
    @game.move_lower
    @list = @game.list
    respond_to do |format|
      format.turbo_stream {}
    end
  end

  def move_up
    @game.move_higher
    @list = @game.list
    respond_to do |format|
      format.turbo_stream {}
    end
  end

  # DELETE /games/1
  def destroy
    @game.destroy
    respond_to do |format|
      format.turbo_stream {}
      format.html do
        redirect_to games_url, notice: 'Game was successfully destroyed.'
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_game
    @game = Game.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def game_params
    params.require(:game).permit(:list_id, :name, :video_trailer, :image, :description, :position)
  end
end
