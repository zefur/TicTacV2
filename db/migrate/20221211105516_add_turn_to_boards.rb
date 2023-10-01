class AddTurnToBoards < ActiveRecord::Migration[7.0]
  def change
    add_column :boards, :turn, :boolean, default: true
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
