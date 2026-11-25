class PagesController < ApplicationController
  allow_unauthenticated_access only: %i[ home sarf_help about ]
  def home
    puts params
    @resv_list = Reservation.all
      .where(reservation_start: Time.now.beginning_of_month.beginning_of_week..Time.now.end_of_month.end_of_week)
  end
  def analytics; end
  def about; end
  def sarf_help; end
  def admin_dash; end
  def records_dash; end
  def tabarnak
    puts "Am 1 August hab' ich in der ältesten Stadt Deustchlands auf die Straße geschissen"
  end
end
