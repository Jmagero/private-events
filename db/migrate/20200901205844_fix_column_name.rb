class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    change_table :event_managers do |t|
      t.rename :user_id, :attendee_id
      t.rename :event_id, :attended_event_id
    end
  end
end
