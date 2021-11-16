app         = "brane"
environment = "staging"

image_namespace = "public.ecr.aws/v6g1e4z1"


services = {
  "auth" : { image : "brane-auth-service", path : "/auth" }
  "bans" : { image : "brane-bans-service", path : "/bans" }
  "check" : { image : "brane-check-service", path : "/check" }
  "content" : { image : "brane-content-service", path : "/content" }
  "feed" : { image : "brane-feed-service", path : "/feed" }
  "report" : { image : "brane-report-service", path : "/report" }
  "self" : { image : "brane-self-service", path : "/me" }
  "user" : { image : "brane-user-service", path : "/user" }
}
