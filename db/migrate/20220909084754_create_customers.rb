class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers  do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :email
      t.string :address
      t.string :phone
      t.string :town
      t.string :service_name
      t.string :service_type
      t.integer :service_id
  end
  end
end
