class Account < ApplicationRecord


  def name
    "#{last_name}, #{first_name}"
  end
  
  def local_genesis
    "#{created_at.to_formatted_s(:short)}"
  end

  # def return_service_location(account_id)
  #   service_location = GeoLocation.find_service_location(account_id)
  # end
  
  # def return_billing_location(account_id)
  #   billing_location = GeoLocation.find_billing_location(account_id)
  # end
end
