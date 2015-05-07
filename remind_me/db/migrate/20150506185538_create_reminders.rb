class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.string :message
      t.string :phone
      t.string :date

      t.timestamps null: false
    end
  end
end
