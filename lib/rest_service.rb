require 'rack'
require 'rack/builder'

module HttpApi
  autoload :API,             'http_api/api'
  autoload :Endpoint,        'http_api/endpoint'
  autoload :MiddlewareStack, 'http_api/middleware_stack'
  autoload :Client,          'http_api/client'
  autoload :Route,           'http_api/route'
  autoload :Entity,          'http_api/entity'
  autoload :Cookies,         'http_api/cookies'

  module Middleware
    autoload :Base,      'http_api/middleware/base'
    autoload :Prefixer,  'http_api/middleware/prefixer'
    autoload :Versioner, 'http_api/middleware/versioner'
    autoload :Formatter, 'http_api/middleware/formatter'
    autoload :Error,     'http_api/middleware/error'

    module Auth
      autoload :OAuth2, 'http_api/middleware/auth/oauth2'
      autoload :Basic,  'http_api/middleware/auth/basic'
      autoload :Digest,	'http_api/middleware/auth/digest'
    end

    module Versioner
      autoload :Path,   'http_api/middleware/versioner/path'
      autoload :Header, 'http_api/middleware/versioner/header'
    end
  end

  module Util
    autoload :HashStack, 'http_api/util/hash_stack'
  end
end

require 'http_api/version'
