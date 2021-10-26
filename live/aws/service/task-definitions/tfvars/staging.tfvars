prefix = "staging"

service_map = {
  "auth" : { path_prefix = "/auth" },
  "bans" : { path_prefix = "/bans" },
  "check" : { path_prefix = "/check" },
  "content-create" : { path_prefix = "/content" },
  "content-giver" : { path_prefix = "/content" },
  "feed-giver" : { path_prefix = "/feed" },
  "report" : { path_prefix = "/report" },
  "self" : { path_prefix = "/self" },
  "user-create" : { path_prefix = "/user" },
  "user-giver" : { path_prefix = "/user" },
}

ferrothorn_docker_repo = "gastrodon/ferrothorn"
