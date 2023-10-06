resource "helm_release" "otel" {
  depends_on = [kubernetes_namespace.otel]

  chart            = "open-telemetry"
  cleanup_on_fail  = true
  create_namespace = false
  force_update     = true
  lint             = true
  name             = "open-telemetry"
  namespace        = "otel"
  recreate_pods    = true
  repository       = "https://open-telemetry.github.io/opentelemetry-helm-charts"
  version          = "0.68.0"
  wait             = true
  wait_for_jobs    = true

  lifecycle {
    create_before_destroy = false
  }

  values = [templatefile("${path.module}/collector-daemonset-values.yaml",
    {
      datadog_api_key            = "${var.datadog_api_key}"
      datadog_app_key            = "${var.datadog_app_key}"
      datadog_site               = "${var.datadog_site}"
    })]
}