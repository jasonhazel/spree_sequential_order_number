Spree::Order.class_eval do 

  after_save :update_order_number, if: :needs_order_number?

  def generate_order_number(options = {})
    '-1'
  end

  def needs_order_number?
    self.number == '-1'
  end

  def update_order_number
    update_attributes(number: self.id)
  end

end