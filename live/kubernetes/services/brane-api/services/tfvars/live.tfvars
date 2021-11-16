app         = "brane"
environment = "live"

image_namespace = "public.ecr.aws/v6g1e4z1"

services = {
  "auth" : { image : "brane-live/auth-service", path : "/auth" }
  "bans" : { image : "brane-live/bans-service", path : "/bans" }
  "check" : { image : "brane-live/check-service", path : "/check" }
  "content" : { image : "brane-live/content-service", path : "/content" }
  "feed" : { image : "brane-live/feed-service", path : "/feed" }
  "report" : { image : "brane-live/report-service", path : "/report" }
  "self" : { image : "brane-live/self-service", path : "/me" }
  "user" : { image : "brane-live/user-service", path : "/user" }
}
