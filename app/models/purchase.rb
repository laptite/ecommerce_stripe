class Purchase < ActiveRecord::Base
  after_create :email_purchaser

  # over-ride id to return UUID
  def to_param
    uuid
  end

  private

  def email_purchaser
    PurchaseMailer.receipt(self).deliver
  end
end
