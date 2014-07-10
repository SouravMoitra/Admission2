class SubjectStreamsController < ApplicationController
  # this below line validates that admins can only set subject_streams
  # admin_signin_status is present in application_helper.rb
  before_action :admin_signin_status, only: [:index, :show, :edit, :new, :destroy]
  before_action :set_subject_stream, only: [:show, :edit, :update, :destroy]

  # GET /subject_streams
  # GET /subject_streams.json
  def index
    @subject_streams = SubjectStream.all
  end

  # GET /subject_streams/1
  # GET /subject_streams/1.json
  def show
  end

  # GET /subject_streams/new
  def new
    @subject_stream = SubjectStream.new
  end

  # GET /subject_streams/1/edit
  def edit
  end

  # POST /subject_streams
  # POST /subject_streams.json
  def create
    @subject_stream = SubjectStream.new(subject_stream_params)

    respond_to do |format|
      if @subject_stream.save
        format.html { redirect_to @subject_stream, notice: 'Subject stream was successfully created.' }
        format.json { render :show, status: :created, location: @subject_stream }
      else
        format.html { render :new }
        format.json { render json: @subject_stream.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subject_streams/1
  # PATCH/PUT /subject_streams/1.json
  def update
    respond_to do |format|
      if @subject_stream.update(subject_stream_params)
        format.html { redirect_to @subject_stream, notice: 'Subject stream was successfully updated.' }
        format.json { render :show, status: :ok, location: @subject_stream }
      else
        format.html { render :edit }
        format.json { render json: @subject_stream.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subject_streams/1
  # DELETE /subject_streams/1.json
  def destroy
    @subject_stream.destroy
    respond_to do |format|
      format.html { redirect_to subject_streams_url, notice: 'Subject stream was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject_stream
      @subject_stream = SubjectStream.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subject_stream_params
      params.require(:subject_stream).permit(:subject_stream)
    end
end
