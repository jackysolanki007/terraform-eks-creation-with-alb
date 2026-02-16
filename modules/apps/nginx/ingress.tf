resource "kubernetes_ingress_v1" "nginx" {
  metadata {
    name = "nginx-ingress"

    annotations = {
      "alb.ingress.kubernetes.io/scheme"      = "internet-facing"
      "alb.ingress.kubernetes.io/target-type" = "ip"
      "alb.ingress.kubernetes.io/load-balancer-name" = "${var.cluster_name}-nginx-alb"
    }
  }

  spec {
    ingress_class_name = "alb"

    rule {
      http {
        path {
          path      = "/"
          path_type = "Prefix"

          backend {
            service {
              name = kubernetes_service_v1.this.metadata[0].name

              port {
                number = 80
              }
            }
          }
        }
      }
    }
  }
}