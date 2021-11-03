app             = "brane"
environment     = "staging"
image_namespace = "public.ecr.aws/v6g1e4z1"


services = {
  "auth" : { image : "brane-auth-service" }
  "bans" : { image : "brane-bans-service" }
  "check" : { image : "brane-check-service" }
  "content-create" : { image : "brane-content-create-service" }
  "content-giver" : { image : "brane-content-giver-service" }
  "feed-giver" : { image : "brane-feed-giver-service" }
  "report" : { image : "brane-report-service" }
  "self" : { image : "brane-self-service" },
  "user-create" : { image : "brane-user-create-service" }
  "user-giver" : { image : "brane-user-giver-service" }
}
