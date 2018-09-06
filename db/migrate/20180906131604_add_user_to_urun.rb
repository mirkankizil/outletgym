class AddUserToUrun < ActiveRecord::Migration
  def change
    add_reference :uruns, :user, index: true, foreign_key: true
  end
end
