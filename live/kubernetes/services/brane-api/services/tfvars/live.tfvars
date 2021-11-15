environment     = "live"
app             = "brane"
image_namespace = "gastrodon"

services = {
  "auth" : { image : "brane-auth-service", paths : ["/auth"], methods : [] }
  "bans" : { image : "brane-bans-service", paths : ["/bans"], methods : [] }
  "check" : { image : "brane-check-service", paths : ["/check"], methods : [] }
  "content-create" : { image : "brane-content-create-service", paths : ["/content"], methods : ["POST"] }
  "content-giver" : { image : "brane-content-giver-service", paths : ["/content"], methods : ["DELETE"] }
  "feed-giver" : { image : "brane-feed-giver-service", paths : ["/feed"], methods : [] }
  "report" : { image : "brane-report-service", paths : ["/report"], methods : [] }
  "self" : { image : "brane-self-service", paths : ["/self"], methods : [] }
  "user-create" : { image : "brane-user-create-service", paths : ["/user"], methods : ["POST", "DELETE"] }
  "user-giver" : { image : "brane-user-giver-service", paths : ["/user"], methods : ["GET"] }
}
