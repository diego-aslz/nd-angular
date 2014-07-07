###
= require_self
= require_tree ./directives
= require_tree ./services
###

angular.module('nd-angular', [])
angular.module('nd-angular.sessions', ['rails'])
angular.module('nd-angular.flash', [])
