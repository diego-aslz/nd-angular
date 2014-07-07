angular.module('nd-angular.sessions').provider 'Session', ['RailsResource', (RailsResource) ->
  provider =
    url: '/api/sessions'
    $get: ->
      class Session extends RailsResource
        @configure
          url: provider.url
]
