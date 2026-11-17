class AddEventTypeRelation < ActiveRecord::Migration[8.1]
  def change
    add_reference :events, :event_type, null: false
  end
end
