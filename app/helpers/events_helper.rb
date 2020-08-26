module EventsHelper

  def event_params
    params.require(:event).permit(:name,:date)
  end
end
