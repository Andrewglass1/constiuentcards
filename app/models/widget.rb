class Widget < ActiveRecord::Base
  include Rails.application.routes.url_helpers

  def embed_link
    embed_url(self, format: :js, host: "#{APP_HOST}")
  end

  def embed_code
    "<script type='text/javascript' src='#{embed_link}'></script>"
  end

end
