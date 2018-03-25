class EventsController < ApplicationController
  def index
    @events = Event.all
    @event  = Event.new
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user_id = 1
    if @event.save
      redirect_to @event

    else
      p @event.errors.full_messages
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])

  end

  def update
    @event = Event.find(params[:id])
    if  @event.update(event_params)
      redirect_to @event
    else
      render :edit
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  private

   def event_params
     params.require(:event).permit(
       :user_id,
       :event_name,
       :event_date,
       :place,
       :description
       )
   end
end
