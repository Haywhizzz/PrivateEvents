class UpdateRegistrationColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :registrations, :name, :attendee_id
    rename_column :registrations, :event_id, :attended_event_id
  end
end
