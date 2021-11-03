app             = "brane"
environment     = "staging"
image_namespace = "public.ecr.aws/v6g1e4z1"

services = {
  "self" : { "prefix" : "/self", image : "brane-self-service" },
}
