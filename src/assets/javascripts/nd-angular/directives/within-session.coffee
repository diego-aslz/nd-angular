angular.module('nd-angular.sessions').directive 'withinSession', ['CurrentSession', (CurrentSession) ->
  link: (scope) ->
    scope.session = CurrentSession
]
