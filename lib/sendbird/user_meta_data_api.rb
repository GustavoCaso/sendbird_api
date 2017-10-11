module Sendbird
  class UserMetaDataApi
    extend Client
    ENDPOINT = "users".freeze
    SUFFIX = "metadata".freeze

    class << self
      def create(user_id, body)
        post(path: build_url(user_id, suffix), body: body)
      end

      def view(user_id)
        get(path: build_url(user_id, suffix))
      end

      def update(user_id, body, upsert=false)
        put(path: build_url(user_id, suffix), body: body)
      end
    end

    def self.suffix
      self.const_get("SUFFIX")
    end
  end
end