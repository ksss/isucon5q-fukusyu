worker_processes 1
preload_app true
listen 8080
if ENV["RACK_ENV"] == "deployment"
  stdout_path "unicorn.log"
  stderr_path "unicorn.log"
end
