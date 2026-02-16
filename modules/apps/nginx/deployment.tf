resource "kubernetes_deployment_v1" "this" {
  metadata {
    name      = "nginx"
    namespace = var.namespace

    labels = {
      app = "nginx"
    }
  }

  spec {
    replicas = var.replicas

    selector {
      match_labels = {
        app = "nginx"
      }
    }

    template {
      metadata {
        labels = {
          app = "nginx"
        }
      }

      spec {
        container {
          name  = "nginx"
          image = var.image

          port {
            container_port = 80
          }
        }
      }
    }
  }
}
