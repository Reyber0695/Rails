class SimilarHome
  def set_user
    
  attr_accessor :price, :extra_service
  
  def initialize()
  end

  def set_price(price)
    @price = price
  end

  def set_extra_service(service)
    @extra_service = service
  end 

  private

  def set_total_amount
    total_amount = price + extra_service
  end
  end
end

obj= SimilarHome.new()
obj.set_user()
