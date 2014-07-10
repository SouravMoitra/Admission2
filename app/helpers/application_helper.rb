module ApplicationHelper
  # to return Level of user to determine he is admin or not
  def is_admin?
    true if current_user.level == admin_level
  end

  # to return Level of user to determine he is verifier or not
  def is_verifier?
    true if current_user.level == verifier_level
  end

  # to return Level of user to determine he is registered or not
  def current_user_level
    current_user.level
  end

  # if the level is set to 5  the user is admin
  def admin_level
    5
  end

  # if the level is set to 6  the user is verifier
  def verifier_level
    6
  end

  # to determine the user is signed in and is admin if not sends back to root
  def admin_signin_status
    unless user_signed_in? && is_admin?
      redirect_to root_url
    end
  end

  # to determine the user is signed in and is verfier if not sends back to root
  def verfier_signin_status
    unless user_signed_in? && is_verifier?
      redirect_to root_url
    end
  end

  # to determine the user is signed in  if not sends back to root
  def user_signin_status
    unless user_signed_in?
      redirect_to root_url
    end
  end

  # calculates ranks
  def generate_result(stream_id, category)
      sql = "select user_id, rank from ranks where user_id = any(
      select user_id from applications where stream_id = #{stream_id} && verified = true && user_id = any
      (select user_id from personals where category_id = any
      (select id from categories where category = '#{category}'))) order by rank asc"
      ActiveRecord::Base.connection.execute(sql)
  end

  # priorty marks if candidate belongs to a particular board
  def priority_marks
    1000000
  end

  # This board will get priority marks to wbhse
  def priority_board
    "wbhse"
  end

  # calculating calculated_marks for rank calculation
  def calculate_marks(hs_marks, tenth_marks, hs_year, hs_board)
      calculated_marks = 10000*hs_marks + 100*tenth_marks + hs_year-2000
      if hs_board.downcase.eql?priority_board
        calculated_marks += priority_marks
      end
      calculated_marks
  end

  # to reset ranks
  def reset_ranks
    sql = "truncate ranks"
    ActiveRecord::Base.connection.execute(sql)
  end

end
