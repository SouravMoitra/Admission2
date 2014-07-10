class Rank < ActiveRecord::Base
  belongs_to :user
  def self.generate_rank
		sql = "INSERT into ranks (user_id, rank)
		SELECT user_id,
		(select count(*)+1 from academics B where A.calculated_marks < B.calculated_marks )
		AS Rank from academics A order by calculated_marks desc"
		ActiveRecord::Base.connection.execute(sql)
  end
end
