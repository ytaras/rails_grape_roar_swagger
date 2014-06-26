require 'roar/representer/json'
autoload :HAL, 'roar/representer/json/hal'

class Object
  def represent_with(representer)
    case representer
    when Roar::Decorator then representer.new(self)
    when Module then
      begin
        self.extend(representer)
        self
      end
    end
  end
end
