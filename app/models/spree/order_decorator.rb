Spree::Order.class_eval do 

  after_save :update_order_number

  def generate_order_number(options = {})
    self.number = self.id || nil
  end

  def update_order_number
    self.number ||= self.id
    save
  end

end