class Octopus::Proxy
  def slave_names
    @slave_names ||= @shards.keys.delete_if { |v| v == :master }
  end

  def slave_name
    slave_names.sample
  end
end
