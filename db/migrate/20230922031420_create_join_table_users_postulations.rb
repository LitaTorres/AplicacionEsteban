class CreateJoinTableUsersPostulations < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :postulations do |t|
      # t.index [:user_id, :postulation_id]
      # t.index [:postulation_id, :user_id]
    end
  end
end
