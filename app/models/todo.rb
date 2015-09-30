class Todo < ActiveRecord::Base

  include ActionView::Helpers::DateHelper
  belongs_to :user
  default_scope { order('created_at DESC') }

  def days_left
    distance_of_time_in_words(7 - (Time.now - created_at.to_time))
  end

end
