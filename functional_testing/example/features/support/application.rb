World(Module.new do
  def application_url
    "http://localhost:#{ENV['port'] || 9292}/login"
  end
end)