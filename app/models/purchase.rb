class Purchase < ActiveRecord::Base

  # over-ride id to return UUID
  def to_param
    uuid
  end
end
