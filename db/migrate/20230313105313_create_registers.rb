class CreateRegisters < ActiveRecord::Migration[6.1]
  def change
    create_table :registers do |t|
      t.string :name
      t.string :email
      t.string :contact
      t.string :password_digest

      t.timestamps
    end
  end
end
