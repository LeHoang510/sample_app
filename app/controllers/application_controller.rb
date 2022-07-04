class ApplicationController < ActionController::Base
  def hello
    render html: "Helloworld"
  end
end
