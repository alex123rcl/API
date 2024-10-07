class Employee < ApplicationRecord
  def work_time
    super.strftime('%H:%M:%S') if super
  end
end
