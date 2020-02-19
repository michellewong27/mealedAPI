class CreateEventsController < ApplicationController
  before_action :set_create_event, only: [:show, :update, :destroy]

  # GET /create_events
  def index
    @create_events = CreateEvent.all

    render json: @create_events
  end

  # GET /create_events/1
  def show
    render json: @create_event
  end

  # POST /create_events
  def create
    @create_event = CreateEvent.new(create_event_params)

    if @create_event.save
      render json: @create_event, status: :created, location: @create_event
    else
      render json: @create_event.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /create_events/1
  def update
    if @create_event.update(create_event_params)
      render json: @create_event
    else
      render json: @create_event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /create_events/1
  def destroy
    @create_event.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_create_event
      @create_event = CreateEvent.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def create_event_params
      params.require(:create_event).permit(:title, :allDay, :start, :end, :postId)
    end
end
