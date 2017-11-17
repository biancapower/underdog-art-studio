class Admin < ActiveRecord::Migration[5.1]
  def change
    User.create! do |u|
        u.email     = 'test@example.com'
        u.password    = 'password'
        u.superadmin_role = true
    end
  end
end
