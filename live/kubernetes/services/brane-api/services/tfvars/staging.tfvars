app             = "brane"
environment     = "staging"
image_namespace = "public.ecr.aws/v6g1e4z1"


services = {
  "auth" : { image : "brane-auth-service", path : "/auth" }
  "bans" : { image : "brane-bans-service", path : "/bans" }
  "check" : { image : "brane-check-service", path : "/check" }
  "content-create" : { image : "brane-content-create-service", path : "/content" }
  "content-giver" : { image : "brane-content-giver-service", path : "/content" }
  "feed-giver" : { image : "brane-feed-giver-service", path : "/feed" }
  "report" : { image : "brane-report-service", path : "/report" }
  "self" : { image : "brane-self-service", path : "/me" }
  "user-create" : { image : "brane-user-create-service", path : "/user" }
  "user-giver" : { image : "brane-user-giver-service", path : "/user" }
}
