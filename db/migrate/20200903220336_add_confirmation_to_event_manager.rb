class AddConfirmationToEventManager < ActiveRecord::Migration[5.2]
  def change
    add_column :event_managers, :confirmation, :integer
    EventManager.reset_column_information
    EventManager.all.each do |event_manager|
      event_manager.update_attributes!(:confirmation => false)
    end
  end
end
