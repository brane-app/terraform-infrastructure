output "balancer_ip" {
  value = kubernetes_service.traefik.status[0].load_balancer[0].ingress[0].ip
}
