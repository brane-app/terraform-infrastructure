app         = "brane"
environment = "staging"

image_namespace = "public.ecr.aws/v6g1e4z1"

services = {
  "auth" : { image : "brane-staging/auth-service", path : "/auth" }
  "bans" : { image : "brane-staging/bans-service", path : "/bans" }
  "check" : { image : "brane-staging/check-service", path : "/check" }
  "content" : { image : "brane-staging/content-service", path : "/content" }
  "feed" : { image : "brane-staging/feed-service", path : "/feed" }
  "report" : { image : "brane-staging/report-service", path : "/report" }
  "self" : { image : "brane-staging/self-service", path : "/me" }
  "user" : { image : "brane-staging/user-service", path : "/user" }
}
