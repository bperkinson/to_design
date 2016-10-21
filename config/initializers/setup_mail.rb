

#CHANGE SETTINGS IN app/mailers/xxx.rb files because of split users.

ActionMailer::Base.default_url_options[:host] = "125design.com"
#Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?