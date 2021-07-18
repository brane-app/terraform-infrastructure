prefix = "staging"

service_map = {
  "auth" : { paths = ["/auth/*"], methods = ["POST"] },
  "bans" : { paths = ["/bans/*"], methods = ["GET", "POST", "PUT"] },
  "check" : { paths = ["/check/*"], methods = ["GET"] },
  "content-create" : { paths = ["/content/*"], methods = ["GET"] },
  "content-giver" : { paths = ["/content/*"], methods = ["POST"] },
  "feed-giver" : { paths = ["/feed/*"], methods = ["GET"] },
  "report" : { paths = ["/report/*"], methods = ["GET", "POST", "PUT"] },
  "self" : { paths = ["/self/*"], methods = ["GET", "POST", "PUT", "DELETE"] },
  "user-create" : { paths = ["/user/*"], methods = ["POST"] },
  "user-giver" : { paths = ["/user/*"], methods = ["GET"] },
}
