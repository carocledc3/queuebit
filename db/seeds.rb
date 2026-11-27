# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
50.times do |i|
  Event.create(
    name: "Test Event №#{111+i}",
    sarf_ctrl: "000-#{"%04d" % (134+i)}",
    start_date: DateTime.new(2026, 11, 15),
    end_date: DateTime.new(2026, 11, 16),
    approved: true,
    employee_id: 1,
    organisation_id: 1,
    event_type_id: 1,
    is_on_campus: false
  )
end
