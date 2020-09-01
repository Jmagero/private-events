class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    change_table :event_managers do |t|
      t.rename :user_id, :attendee
      t.rename :event_id, :attended_event
    end
  end
end
