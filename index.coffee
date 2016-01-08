colors = require('colors/safe')
_ = require('lodash')

defaultTheme =
  verb: 'yellow'
  slash: 'blue'
  param: 'green'
  path: 'white'

logColoredRoutes = (routes, colorSettings = {})->
  colors.setTheme(_.defaults(colorSettings, defaultTheme))

  for route, action of routes
    coloredString = ""
    [verb, route] = route.split(' ')
    coloredString += " #{colors.verb(verb)} "
    routeSegments = route.split('/')

    for routeSegment, index in routeSegments
      unless index is 0
        coloredString += "#{colors.slash('/')}"

      if routeSegment.charAt(0) is ':'
        coloredString += "#{colors.param(routeSegment)}"
      else
        coloredString += "#{colors.path(routeSegment)}"

    console.log coloredString