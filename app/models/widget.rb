class Widget < ActiveRecord::Base
  include Rails.application.routes.url_helpers

  def embed_link
    embed_url(self, format: :js, host: "localhost:3000")
  end

  def embed_code
    "<script type='text/javascript' src='#{embed_link}'></script>"
  end

end
