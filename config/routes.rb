require 'api_constraints'

MarketPlaceApi::Application.routes.draw do

# we are going to set the constraints,
# the base_url and the default response format
# for each request.

namespace :api, defaults: { format: :json },
                constraints: { subdomain: 'api' },
                path: '/' do
  scope module: :vi,
        constraints: ApiConstraints.new(version: 1, default: true) do
    # we are going to list our resources.
  end
end

end
