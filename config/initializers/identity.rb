Devise::SessionsController.respond_to :js
Devise::RegistrationsController.respond_to :js

Identity.setup do |config|
  config.user_class_name = "User"
end
