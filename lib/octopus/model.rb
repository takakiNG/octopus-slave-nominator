module Octopus::Model
  def slave(&block)
    using(ActiveRecord::Base.connection.slave_name, &block)
  end
end
