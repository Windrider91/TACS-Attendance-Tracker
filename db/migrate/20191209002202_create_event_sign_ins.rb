class CreateEventSignIns < ActiveRecord::Migration[5.1]
  def change
    create_table :event_sign_ins do |t|
      t.string :event_email
      t.string :event_password
      t.string :event_date

      t.timestamps
    end
  end
end
