class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :string
    add_column :users, :username, :string
  end
end
