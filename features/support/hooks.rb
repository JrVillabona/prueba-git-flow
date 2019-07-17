# frozen_string_literal: true

Before do
  navigate_to($app_path)
  createcontactuser
end
# Before('@SignUpp') do
#   # This will only run before scenarios tagged
#   # with @Ex_tag1 OR @Ex_tag2.
#   createcontactuser
# end
After do
  $driver.manage.delete_all_cookies
  $driver.local_storage.clear
  sleep 1
end
