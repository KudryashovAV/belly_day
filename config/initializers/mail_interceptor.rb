# https://github.com/croaky/recipient_interceptor
Mail.register_interceptor(
  RecipientInterceptor.new(ENV["EMAIL_RECIPIENTS"])
) if ENV.key?("EMAIL_RECIPIENTS")
