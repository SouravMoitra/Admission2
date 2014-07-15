class SubjectStreamsController < ApplicationController
  # this below line validates that admins can only set subject_streams
  # admin_signin_status is present in application_helper.rb
  before_action :admin_signin_status, only: [:index, :show, :edit, :new, :destroy]

  # GET /subject_streams
  # GET /subject_streams.json
  def index
    @subject_streams = SubjectStream.all
  end

  # GET /subject_streams/1
  def show
    @subject_stream = SubjectStream.find(params[:id])
  end

  # GET /subject_streams/new
  def new
    @subject_stream = SubjectStream.new
  end

  # GET /subject_streams/1/edit
  def edit
    @subject_stream = SubjectStream.find(params[:id])
  end

  # POST /subject_streams
  def create
    @subject_stream = SubjectStream.new(subject_stream_params)

    respond_to do |format|
      if @subject_stream.save
        format.html { redirect_to @subject_stream, notice: 'Subject stream was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /subject_streams/1
  def update
    @subject_stream = SubjectStream.find(params[:id])
    respond_to do |format|
      if @subject_stream.update(subject_stream_params)
        format.html { redirect_to @subject_stream, notice: 'Subject stream was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /subject_streams/1
  def destroy
    @subject_stream = SubjectStream.find(params[:id])
    @subject_stream.destroy
    respond_to do |format|
      format.html { redirect_to subject_streams_url, notice: 'Subject stream was successfully destroyed.' }
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def subject_stream_params
      params.require(:subject_stream).permit(:subject_stream)
    end
end
