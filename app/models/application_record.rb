class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def date
    if defined?(self.moment)
      self.moment.to_date.to_formatted_s(:long)
    end
  end

  def time
    if defined?(self.moment)
      self.moment.strftime("%I:%M%p")
    end
  end
  
end
