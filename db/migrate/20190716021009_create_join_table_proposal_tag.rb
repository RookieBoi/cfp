class CreateJoinTableProposalTag < ActiveRecord::Migration[5.2]
  def change
    create_join_table :proposals, :tags do |t|
      t.index [:proposal_id, :tag_id]
      t.index [:tag_id, :proposal_id]
    end
  end
end
