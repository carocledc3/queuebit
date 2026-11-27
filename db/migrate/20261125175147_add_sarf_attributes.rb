class AddSarfAttributes < ActiveRecord::Migration[8.1]
  def change
    add_column :events, :sarf_ctrl, :string, default: "000-0000"
    add_column :events, :is_on_campus, :boolean, default: false
    add_column :events, :is_uc_public, :boolean, default: false
    add_column :events, :allows_outsiders, :boolean, default: false
    add_column :events, :remarks, :text, default: ""
    add_column :events, :budget_source, :string, default: ""
    add_column :events, :budget_estimate, :float, default: 0.0
    add_column :events, :has_loi_or_moa, :boolean, default: false
    add_column :events, :has_speaker_or_facilitator_cv, :boolean, default: false
    add_column :events, :has_organising_committee_doc, :boolean, default: false
    add_column :events, :has_resolution, :boolean, default: false
    add_column :events, :has_brf, :boolean, default: false
    add_column :events, :has_excuse_letter, :boolean, default: false
    add_column :events, :has_programme, :boolean, default: false
    add_column :events, :has_promo_materials, :boolean, default: false
    add_column :events, :has_participant_list, :boolean, default: false
    add_column :events, :has_venue_floor_plan, :boolean, default: false
    add_column :events, :has_curfew_form, :boolean, default: false
    add_column :events, :needs_bmo_support, :boolean, default: false
    add_column :events, :bmo_support_details, :text, default: ""
    add_column :events, :needs_lmo_support, :boolean, default: false
    add_column :events, :lmo_support_details, :text, default: ""
    add_column :events, :needs_itss_support, :boolean, default: false
    add_column :events, :itss_support_details, :text, default: ""
    add_column :events, :needs_admin_support, :boolean, default: false
    add_column :events, :admin_support_details, :text, default: ""
  end
end
