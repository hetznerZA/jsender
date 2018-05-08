require 'json'

module Jsender
  module Json
    extend self

    def error(message: "An error has occurred")
      {
        'status' => 'error',
        'message' => message
      }.to_json
    end

    def failure(message: "A failure has occurred", data: {})
      {
        'status' => 'fail',
        'data' => {
         'message' => message
        }.merge(data)
      }.to_json
    end

    def success(data: nil)
      {
        'status' => 'success',
        'data' => data
      }.to_json
    end
  end
end
