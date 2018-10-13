class CreateConsultations < ActiveRecord::Migration[5.1]
  def change
    create_table :consultations do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :account, foreign_key: true

      t.string :name
      t.text :description
      t.boolean :is_all_day
      t.date :from_date
      t.time :from_time
      t.date :to_date
      t.time :to_time
      t.string :repeats
      t.integer  :repeats_every_n_days
      t.integer  :repeats_every_n_weeks
      t.integer  :repeats_weekly_each_days_of_the_week_mask
      t.integer  :repeats_every_n_months
      t.string   :repeats_monthly
      t.integer  :repeats_monthly_each_days_of_the_month_mask
      t.integer  :repeats_monthly_on_ordinals_mask
      t.integer  :repeats_monthly_on_days_of_the_week_mask
      t.integer  :repeats_every_n_years
      t.integer  :repeats_yearly_each_months_of_the_year_mask
      t.boolean  :repeats_yearly_on
      t.integer  :repeats_yearly_on_ordinals_mask
      t.integer  :repeats_yearly_on_days_of_the_week_mask
      t.string   :repeat_ends
      t.date     :repeat_ends_on
      t.string   :time_zone
      t.integer  :calendar_id

      t.timestamps
    end
  end
end
