class AddCellActiveToBoards < ActiveRecord::Migration[7.0]
  def change
    add_column :boards, :cell_active, :json
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
