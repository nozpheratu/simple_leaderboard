module V1
  class ApiController < JSONAPI::ResourceController
    include JSONAPI::ActsAsResourceController
    before_filter :check_jwt

    private

    def check_jwt
      raise unless token_valid?
    end

    def token_valid?
      # meh, just hard code it to keep it stupid simple
      http_token  == 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxfQ.YXSHSsxJbeqUIzouubWY4mneXkr8CLTT9W7GESZG9GA'
    end

    def http_token
      @http_token ||= if request.headers['Authorization'].present?
                        request.headers['Authorization'].split(' ').last
                      end
    end
  end
end
