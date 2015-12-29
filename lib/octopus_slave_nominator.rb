require "octopus_slave_nominator/version"

module Octopus
  def self.slave(*argv)
    self.using(ActiveRecord::Base.connection.slave_name, *argv)
  end
end

module Octopus::Model
  def slave(*argv)
    using(ActiveRecord::Base.connection.slave_name, *argv)
  end
end

class Octopus::Proxy
  def slave_names
    @slave_names ||=
      if @shards.present?
        @shards.keys.delete_if { |v| v == :master }
      else
        [:master]
      end
  end

  def slave_name
    slave_names.sample
  end
end
