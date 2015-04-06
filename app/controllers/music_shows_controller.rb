class MusicShowsController < ApplicationController
  before_action :set_music_show, only: [:show, :edit, :update, :destroy]
  before_action :only_allow_signed_in_users, except: [:index] 
  # GET /music_shows
  # GET /music_shows.json
  def index
    @music_shows = MusicShow.all
  end

  # GET /music_shows/1
  # GET /music_shows/1.json
  def show
  end

  # GET /music_shows/new
  def new
    @music_show = MusicShow.new
  end

  # GET /music_shows/1/edit
  def edit
  end

  # POST /music_shows
  # POST /music_shows.json
  def create
    @music_show = MusicShow.new(music_show_params)

    respond_to do |format|
      if @music_show.save
        format.html { redirect_to @music_show, notice: 'Music show was successfully created.' }
        format.json { render :show, status: :created, location: @music_show }
      else
        format.html { render :new }
        format.json { render json: @music_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /music_shows/1
  # PATCH/PUT /music_shows/1.json
  def update
    respond_to do |format|
      if @music_show.update(music_show_params)
        format.html { redirect_to @music_show, notice: 'Music show was successfully updated.' }
        format.json { render :show, status: :ok, location: @music_show }
      else
        format.html { render :edit }
        format.json { render json: @music_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /music_shows/1
  # DELETE /music_shows/1.json
  def destroy
    @music_show.destroy
    respond_to do |format|
      format.html { redirect_to music_shows_url, notice: 'Music show was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_music_show
      @music_show = MusicShow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def music_show_params
      params.require(:music_show).permit(:band_name, :location, :date_of_show, :ticket_price)
    end
  end
