class CreateSpaAttendants < ActiveRecord::Migration[6.1]
  def change
    create_table :spa_attendants  do |t|  
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :address
      t.string :department
      t.string :service_type
      t.integer :service_id
    end
  end
  end

