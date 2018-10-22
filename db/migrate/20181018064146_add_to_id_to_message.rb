class AddToIdToMessage < ActiveRecord::Migration[5.1]
  def change
    add_reference :messages, :to
  end
end
