angular.module('nd-angular.flash').factory 'Flash', ['$rootScope', ($rootScope) ->
  service = {}

  $rootScope.$on '$locationChangeSuccess', ->
    for kind, msg of service
      service[kind] = null

  service
]
