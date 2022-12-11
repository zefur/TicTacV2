class AddStateToBoards < ActiveRecord::Migration[7.0]
  def change
    add_column :boards, :state, :json
    # Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
