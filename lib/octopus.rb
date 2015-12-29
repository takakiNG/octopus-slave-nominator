module Octopus
  def self.slave(&block)
    self.using(ActiveRecord::Base.connection.slave_name, &block)
  end
end
