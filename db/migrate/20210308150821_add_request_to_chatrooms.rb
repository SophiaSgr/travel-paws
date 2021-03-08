class AddRequestToChatrooms < ActiveRecord::Migration[6.0]
  def change
    add_reference :chatrooms, :request, foreign_key: true
  end
end
