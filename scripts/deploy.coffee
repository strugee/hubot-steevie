# Description:
#   Deployment control
# 
# Dependencies:
#   None
#
# Configuration:
#   None
# 
# Commands:
#   hubot deploy - deploys a particular service
# 
# Author:
#   strugee

module.exports = (robot) ->

	robot.respond /(?:please)? deploy (.*)/i, (res) ->
		target = res.match[1]
		switch target
			when "hubot" then res.respond "I'm not sure how to redeploy myself. Yet."
			when "strugee.net" then res.respond "Uh, I need some more rights for that. strugee?"
			else res.respond "I'm so sorry, but I don't know how to deploy " + target + "."

