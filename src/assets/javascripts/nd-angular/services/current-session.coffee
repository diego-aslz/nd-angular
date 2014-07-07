angular.module('nd-angular.sessions').factory 'CurrentSession', ['Session', '$location', (Session, $location) ->
  service =
    user: null
    requestUser: ->
      Session.get().then (session) ->
        service.user = session.user
    create: (login, password, success, error) ->
      authenticated = (session) ->
        service.user = session.user
        success() if success
      new Session(login: login, password: password).create().then(authenticated, error)
    destroy: ->
      Session.$delete('/api/sessions').then ->
        service.user = null
        $location.path('/sign_in')
    can: (action, resource) ->
      return false unless service.user && service.user.abilities
      for ab in service.user.abilities
        return true if ab.action == action && ab.resource == resource
      false
]
