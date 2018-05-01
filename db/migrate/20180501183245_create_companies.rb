class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :company_number
      t.string :name
      t.text :bio
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
