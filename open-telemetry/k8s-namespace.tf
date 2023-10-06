resource "kubernetes_namespace" "otel" {
  metadata {
    name = "otel"
  }
}