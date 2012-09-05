class GameScoresController < ApplicationController
  # GET /game_scores
  # GET /game_scores.json
  def index
    @game_scores = GameScore.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @game_scores }
    end
  end

  # GET /game_scores/1
  # GET /game_scores/1.json
  def show
    @game_score = GameScore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @game_score }
    end
  end

  # GET /game_scores/new
  # GET /game_scores/new.json
  def new
    @game_score = GameScore.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @game_score }
    end
  end

  # GET /game_scores/1/edit
  def edit
    @game_score = GameScore.find(params[:id])
  end

  # POST /game_scores
  # POST /game_scores.json
  def create
    @game_score = GameScore.new(params[:game_score])

    respond_to do |format|
      if @game_score.save
        format.html { redirect_to @game_score, notice: 'Game score was successfully created.' }
        format.json { render json: @game_score, status: :created, location: @game_score }
      else
        format.html { render action: "new" }
        format.json { render json: @game_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /game_scores/1
  # PUT /game_scores/1.json
  def update
    @game_score = GameScore.find(params[:id])

    respond_to do |format|
      if @game_score.update_attributes(params[:game_score])
        format.html { redirect_to @game_score, notice: 'Game score was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @game_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_scores/1
  # DELETE /game_scores/1.json
  def destroy
    @game_score = GameScore.find(params[:id])
    @game_score.destroy

    respond_to do |format|
      format.html { redirect_to game_scores_url }
      format.json { head :no_content }
    end
  end
end
