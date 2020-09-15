module EventsHelper
  def event_params
    params.require(:event).permit(:name, :date, :description)
  end

  def create_event
    if current_user
      link_to "Create New Event", new_event_path
    end 
  end

  def invited
    if @attendants.size.zero?
      render 'no_guest_notice'
    else
      render 'guests_list'
    end
  end
end
