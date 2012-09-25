class AnswersController < ApplicationController
  # GET /answers
  # GET /answers.json
  def index
    @answers = Answer.where("question_id = ?",question.id).order('upvote DESC')
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @answers }
    end
  end

  # GET /answers/1
  # GET /answers/1.json
  def show
    @answer = Answer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @answer }
    end
  end

  # GET /answers/new
  # GET /answers/new.json
  def new
    @answer = Answer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @answer }
    end
  end

  # GET /answers/1/edit
  def edit
    @answer = Answer.find(params[:id])
  end

  # POST /answers
  # POST /answers.json
  def create
		
    @answer = Answer.create(params[:answer])
		@answer.user = current_user
		@question = Question.find(params[:question_id])
		@answer.question = @question
    respond_to do |format|
      if @answer.save
        format.html { redirect_to question_path(@question), notice: 'Answer was successfully created.' }
        format.json { render json: @answer, status: :created, location: @answer }
      else
        format.html { render action: "new" }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /answers/1
  # PUT /answers/1.json
  def update
    @answer = Answer.find(params[:id])

    respond_to do |format|
      if @answer.update_attributes(params[:answer])
        format.html { redirect_to @answer, notice: 'Answer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answers/1
  # DELETE /answers/1.json
  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy

    respond_to do |format|
      format.html { redirect_to answers_url }
      format.json { head :no_content }
    end
  end

	def upvote
		@answer = Answer.find(params[:answer_id])
		@answer.upvote += 1
		@question = Question.find(params[:question_id])
		respond_to do |format|
      if @answer.save
        format.html { redirect_to question_path(@question) }
        format.js
			end
    end
	end

	def downvote
		@answer = Answer.find(params[:answer_id])
		@answer.downvote += 1
		@question = Question.find(params[:question_id])
		respond_to do |format|
      if @answer.save
        format.html { redirect_to question_path(@question) }
        format.js
      else
        format.html { render action: "edit" }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
	end
end
