class AddReferencesToUserAndGroupUser < ActiveRecord::Migration[6.1]
  def change 
    add_reference :users, :group_user, foreign_key: true
  end
end
