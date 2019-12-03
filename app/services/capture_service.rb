class CaptureService
  def initialize
  end

  def self.call(endpoint)
    response = HTTP.get(endpoint).to_s
    res_json = JSON.parse(response)
    return res_json
  end
end
  