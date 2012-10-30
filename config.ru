require "sinatra"

get %r{(.*)} do
  protocol = request.env["rack.url_scheme"] + "://"
  host = request.env["HTTP_HOST"]
  query = ("?" + request.env["rack.request.query_string"]) unless request.env["rack.request.query_string"].empty?

  if host =~ /www./
    # Naked domain is pointing at this app (and it should not be)
    ""
  else
    # Take subdomain name and redirect to a root url with that value
    # subdir.root.com -> subdir.com
    rewritten_host = "www.#{host.split('.').values_at(0,2)}"
    rewritten_uri = [protocol, rewritten_host, query].join
    redirect rewritten_uri, 301
  end
end

run Sinatra::Application
