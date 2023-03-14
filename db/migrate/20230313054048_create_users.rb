class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      
      t.integer :user_id
      t.string :user_name
      t.string :user_email
      t.string :user_role
      t.integer :interview_taken
      t.string :skills
      t.integer :experience
      t.string :contact
      t.string :address
      t.string :password
      t.string :in_company

      t.timestamps
    end
  end
end
