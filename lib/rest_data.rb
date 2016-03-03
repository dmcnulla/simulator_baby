# stores rest service paths/responses
class RestData
  def initialize(name = 'default')
    @name = name
    @storage = {}
  end

  def add(path, message)
    @storage[path] = message
  end

  def get(path)
    return @storage[path] unless @storage[path].nil?
    file = "data/#{path}.txt"
    return File.read(file) if File.exist?(file)
    ''
  end
end
