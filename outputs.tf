output "devops_deploy_stages_id" {
  description = "Map of id values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no id are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.id if v.id != null && length(v.id) > 0 }
}
output "devops_deploy_stages_approval_policy" {
  description = "Map of approval_policy values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no approval_policy are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => one(v.approval_policy) if v.approval_policy != null && length(v.approval_policy) > 0 }
}
output "devops_deploy_stages_are_hooks_enabled" {
  description = "Map of are_hooks_enabled values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no are_hooks_enabled are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.are_hooks_enabled if v.are_hooks_enabled != null }
}
output "devops_deploy_stages_blue_backend_ips" {
  description = "Map of blue_backend_ips values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no blue_backend_ips are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => one(v.blue_backend_ips) if v.blue_backend_ips != null && length(v.blue_backend_ips) > 0 }
}
output "devops_deploy_stages_blue_green_strategy" {
  description = "Map of blue_green_strategy values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no blue_green_strategy are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => one(v.blue_green_strategy) if v.blue_green_strategy != null && length(v.blue_green_strategy) > 0 }
}
output "devops_deploy_stages_canary_strategy" {
  description = "Map of canary_strategy values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no canary_strategy are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => one(v.canary_strategy) if v.canary_strategy != null && length(v.canary_strategy) > 0 }
}
output "devops_deploy_stages_command_spec_deploy_artifact_id" {
  description = "Map of command_spec_deploy_artifact_id values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no command_spec_deploy_artifact_id are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.command_spec_deploy_artifact_id if v.command_spec_deploy_artifact_id != null && length(v.command_spec_deploy_artifact_id) > 0 }
}
output "devops_deploy_stages_compartment_id" {
  description = "Map of compartment_id values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no compartment_id are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "devops_deploy_stages_compute_instance_group_blue_green_deployment_deploy_stage_id" {
  description = "Map of compute_instance_group_blue_green_deployment_deploy_stage_id values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no compute_instance_group_blue_green_deployment_deploy_stage_id are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.compute_instance_group_blue_green_deployment_deploy_stage_id if v.compute_instance_group_blue_green_deployment_deploy_stage_id != null && length(v.compute_instance_group_blue_green_deployment_deploy_stage_id) > 0 }
}
output "devops_deploy_stages_compute_instance_group_canary_deploy_stage_id" {
  description = "Map of compute_instance_group_canary_deploy_stage_id values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no compute_instance_group_canary_deploy_stage_id are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.compute_instance_group_canary_deploy_stage_id if v.compute_instance_group_canary_deploy_stage_id != null && length(v.compute_instance_group_canary_deploy_stage_id) > 0 }
}
output "devops_deploy_stages_compute_instance_group_canary_traffic_shift_deploy_stage_id" {
  description = "Map of compute_instance_group_canary_traffic_shift_deploy_stage_id values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no compute_instance_group_canary_traffic_shift_deploy_stage_id are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.compute_instance_group_canary_traffic_shift_deploy_stage_id if v.compute_instance_group_canary_traffic_shift_deploy_stage_id != null && length(v.compute_instance_group_canary_traffic_shift_deploy_stage_id) > 0 }
}
output "devops_deploy_stages_compute_instance_group_deploy_environment_id" {
  description = "Map of compute_instance_group_deploy_environment_id values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no compute_instance_group_deploy_environment_id are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.compute_instance_group_deploy_environment_id if v.compute_instance_group_deploy_environment_id != null && length(v.compute_instance_group_deploy_environment_id) > 0 }
}
output "devops_deploy_stages_config" {
  description = "Map of config values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no config are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.config if v.config != null && length(v.config) > 0 }
}
output "devops_deploy_stages_container_config" {
  description = "Map of container_config values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no container_config are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => one(v.container_config) if v.container_config != null && length(v.container_config) > 0 }
}
output "devops_deploy_stages_defined_tags" {
  description = "Map of defined_tags values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no defined_tags are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "devops_deploy_stages_deploy_artifact_id" {
  description = "Map of deploy_artifact_id values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no deploy_artifact_id are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.deploy_artifact_id if v.deploy_artifact_id != null && length(v.deploy_artifact_id) > 0 }
}
output "devops_deploy_stages_deploy_artifact_ids" {
  description = "Map of deploy_artifact_ids values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no deploy_artifact_ids are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.deploy_artifact_ids if v.deploy_artifact_ids != null && length(v.deploy_artifact_ids) > 0 }
}
output "devops_deploy_stages_deploy_environment_id_a" {
  description = "Map of deploy_environment_id_a values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no deploy_environment_id_a are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.deploy_environment_id_a if v.deploy_environment_id_a != null && length(v.deploy_environment_id_a) > 0 }
}
output "devops_deploy_stages_deploy_environment_id_b" {
  description = "Map of deploy_environment_id_b values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no deploy_environment_id_b are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.deploy_environment_id_b if v.deploy_environment_id_b != null && length(v.deploy_environment_id_b) > 0 }
}
output "devops_deploy_stages_deploy_pipeline_id" {
  description = "Map of deploy_pipeline_id values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no deploy_pipeline_id are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.deploy_pipeline_id if v.deploy_pipeline_id != null && length(v.deploy_pipeline_id) > 0 }
}
output "devops_deploy_stages_deploy_stage_predecessor_collection" {
  description = "Map of deploy_stage_predecessor_collection values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no deploy_stage_predecessor_collection are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => one(v.deploy_stage_predecessor_collection) if v.deploy_stage_predecessor_collection != null && length(v.deploy_stage_predecessor_collection) > 0 }
}
output "devops_deploy_stages_deploy_stage_type" {
  description = "Map of deploy_stage_type values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no deploy_stage_type are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.deploy_stage_type if v.deploy_stage_type != null && length(v.deploy_stage_type) > 0 }
}
output "devops_deploy_stages_deployment_spec_deploy_artifact_id" {
  description = "Map of deployment_spec_deploy_artifact_id values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no deployment_spec_deploy_artifact_id are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.deployment_spec_deploy_artifact_id if v.deployment_spec_deploy_artifact_id != null && length(v.deployment_spec_deploy_artifact_id) > 0 }
}
output "devops_deploy_stages_description" {
  description = "Map of description values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no description are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.description if v.description != null && length(v.description) > 0 }
}
output "devops_deploy_stages_display_name" {
  description = "Map of display_name values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no display_name are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "devops_deploy_stages_docker_image_deploy_artifact_id" {
  description = "Map of docker_image_deploy_artifact_id values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no docker_image_deploy_artifact_id are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.docker_image_deploy_artifact_id if v.docker_image_deploy_artifact_id != null && length(v.docker_image_deploy_artifact_id) > 0 }
}
output "devops_deploy_stages_failure_policy" {
  description = "Map of failure_policy values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no failure_policy are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => one(v.failure_policy) if v.failure_policy != null && length(v.failure_policy) > 0 }
}
output "devops_deploy_stages_freeform_tags" {
  description = "Map of freeform_tags values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "devops_deploy_stages_function_deploy_environment_id" {
  description = "Map of function_deploy_environment_id values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no function_deploy_environment_id are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.function_deploy_environment_id if v.function_deploy_environment_id != null && length(v.function_deploy_environment_id) > 0 }
}
output "devops_deploy_stages_function_timeout_in_seconds" {
  description = "Map of function_timeout_in_seconds values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no function_timeout_in_seconds are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.function_timeout_in_seconds if v.function_timeout_in_seconds != null }
}
output "devops_deploy_stages_green_backend_ips" {
  description = "Map of green_backend_ips values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no green_backend_ips are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => one(v.green_backend_ips) if v.green_backend_ips != null && length(v.green_backend_ips) > 0 }
}
output "devops_deploy_stages_helm_chart_deploy_artifact_id" {
  description = "Map of helm_chart_deploy_artifact_id values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no helm_chart_deploy_artifact_id are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.helm_chart_deploy_artifact_id if v.helm_chart_deploy_artifact_id != null && length(v.helm_chart_deploy_artifact_id) > 0 }
}
output "devops_deploy_stages_helm_command_artifact_ids" {
  description = "Map of helm_command_artifact_ids values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no helm_command_artifact_ids are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.helm_command_artifact_ids if v.helm_command_artifact_ids != null && length(v.helm_command_artifact_ids) > 0 }
}
output "devops_deploy_stages_is_async" {
  description = "Map of is_async values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no is_async are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.is_async if v.is_async != null }
}
output "devops_deploy_stages_is_debug_enabled" {
  description = "Map of is_debug_enabled values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no is_debug_enabled are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.is_debug_enabled if v.is_debug_enabled != null }
}
output "devops_deploy_stages_is_force_enabled" {
  description = "Map of is_force_enabled values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no is_force_enabled are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.is_force_enabled if v.is_force_enabled != null }
}
output "devops_deploy_stages_is_uninstall_on_stage_delete" {
  description = "Map of is_uninstall_on_stage_delete values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no is_uninstall_on_stage_delete are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.is_uninstall_on_stage_delete if v.is_uninstall_on_stage_delete != null }
}
output "devops_deploy_stages_is_validation_enabled" {
  description = "Map of is_validation_enabled values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no is_validation_enabled are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.is_validation_enabled if v.is_validation_enabled != null }
}
output "devops_deploy_stages_kubernetes_manifest_deploy_artifact_ids" {
  description = "Map of kubernetes_manifest_deploy_artifact_ids values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no kubernetes_manifest_deploy_artifact_ids are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.kubernetes_manifest_deploy_artifact_ids if v.kubernetes_manifest_deploy_artifact_ids != null && length(v.kubernetes_manifest_deploy_artifact_ids) > 0 }
}
output "devops_deploy_stages_lifecycle_details" {
  description = "Map of lifecycle_details values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "devops_deploy_stages_load_balancer_config" {
  description = "Map of load_balancer_config values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no load_balancer_config are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => one(v.load_balancer_config) if v.load_balancer_config != null && length(v.load_balancer_config) > 0 }
}
output "devops_deploy_stages_max_history" {
  description = "Map of max_history values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no max_history are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.max_history if v.max_history != null }
}
output "devops_deploy_stages_max_memory_in_mbs" {
  description = "Map of max_memory_in_mbs values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no max_memory_in_mbs are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.max_memory_in_mbs if v.max_memory_in_mbs != null && length(v.max_memory_in_mbs) > 0 }
}
output "devops_deploy_stages_namespace" {
  description = "Map of namespace values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no namespace are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "devops_deploy_stages_oke_blue_green_deploy_stage_id" {
  description = "Map of oke_blue_green_deploy_stage_id values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no oke_blue_green_deploy_stage_id are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.oke_blue_green_deploy_stage_id if v.oke_blue_green_deploy_stage_id != null && length(v.oke_blue_green_deploy_stage_id) > 0 }
}
output "devops_deploy_stages_oke_canary_deploy_stage_id" {
  description = "Map of oke_canary_deploy_stage_id values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no oke_canary_deploy_stage_id are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.oke_canary_deploy_stage_id if v.oke_canary_deploy_stage_id != null && length(v.oke_canary_deploy_stage_id) > 0 }
}
output "devops_deploy_stages_oke_canary_traffic_shift_deploy_stage_id" {
  description = "Map of oke_canary_traffic_shift_deploy_stage_id values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no oke_canary_traffic_shift_deploy_stage_id are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.oke_canary_traffic_shift_deploy_stage_id if v.oke_canary_traffic_shift_deploy_stage_id != null && length(v.oke_canary_traffic_shift_deploy_stage_id) > 0 }
}
output "devops_deploy_stages_oke_cluster_deploy_environment_id" {
  description = "Map of oke_cluster_deploy_environment_id values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no oke_cluster_deploy_environment_id are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.oke_cluster_deploy_environment_id if v.oke_cluster_deploy_environment_id != null && length(v.oke_cluster_deploy_environment_id) > 0 }
}
output "devops_deploy_stages_production_load_balancer_config" {
  description = "Map of production_load_balancer_config values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no production_load_balancer_config are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => one(v.production_load_balancer_config) if v.production_load_balancer_config != null && length(v.production_load_balancer_config) > 0 }
}
output "devops_deploy_stages_project_id" {
  description = "Map of project_id values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no project_id are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "devops_deploy_stages_purpose" {
  description = "Map of purpose values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no purpose are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.purpose if v.purpose != null && length(v.purpose) > 0 }
}
output "devops_deploy_stages_release_name" {
  description = "Map of release_name values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no release_name are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.release_name if v.release_name != null && length(v.release_name) > 0 }
}
output "devops_deploy_stages_rollback_policy" {
  description = "Map of rollback_policy values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no rollback_policy are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => one(v.rollback_policy) if v.rollback_policy != null && length(v.rollback_policy) > 0 }
}
output "devops_deploy_stages_rollout_policy" {
  description = "Map of rollout_policy values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no rollout_policy are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => one(v.rollout_policy) if v.rollout_policy != null && length(v.rollout_policy) > 0 }
}
output "devops_deploy_stages_set_string" {
  description = "Map of set_string values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no set_string are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => one(v.set_string) if v.set_string != null && length(v.set_string) > 0 }
}
output "devops_deploy_stages_set_values" {
  description = "Map of set_values values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no set_values are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => one(v.set_values) if v.set_values != null && length(v.set_values) > 0 }
}
output "devops_deploy_stages_should_cleanup_on_fail" {
  description = "Map of should_cleanup_on_fail values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no should_cleanup_on_fail are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.should_cleanup_on_fail if v.should_cleanup_on_fail != null }
}
output "devops_deploy_stages_should_not_wait" {
  description = "Map of should_not_wait values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no should_not_wait are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.should_not_wait if v.should_not_wait != null }
}
output "devops_deploy_stages_should_reset_values" {
  description = "Map of should_reset_values values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no should_reset_values are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.should_reset_values if v.should_reset_values != null }
}
output "devops_deploy_stages_should_reuse_values" {
  description = "Map of should_reuse_values values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no should_reuse_values are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.should_reuse_values if v.should_reuse_values != null }
}
output "devops_deploy_stages_should_skip_crds" {
  description = "Map of should_skip_crds values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no should_skip_crds are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.should_skip_crds if v.should_skip_crds != null }
}
output "devops_deploy_stages_should_skip_render_subchart_notes" {
  description = "Map of should_skip_render_subchart_notes values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no should_skip_render_subchart_notes are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.should_skip_render_subchart_notes if v.should_skip_render_subchart_notes != null }
}
output "devops_deploy_stages_state" {
  description = "Map of state values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no state are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.state if v.state != null && length(v.state) > 0 }
}
output "devops_deploy_stages_system_tags" {
  description = "Map of system_tags values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no system_tags are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "devops_deploy_stages_test_load_balancer_config" {
  description = "Map of test_load_balancer_config values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no test_load_balancer_config are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => one(v.test_load_balancer_config) if v.test_load_balancer_config != null && length(v.test_load_balancer_config) > 0 }
}
output "devops_deploy_stages_time_created" {
  description = "Map of time_created values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no time_created are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "devops_deploy_stages_time_updated" {
  description = "Map of time_updated values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no time_updated are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "devops_deploy_stages_timeout_in_seconds" {
  description = "Map of timeout_in_seconds values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no timeout_in_seconds are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.timeout_in_seconds if v.timeout_in_seconds != null }
}
output "devops_deploy_stages_traffic_shift_target" {
  description = "Map of traffic_shift_target values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no traffic_shift_target are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.traffic_shift_target if v.traffic_shift_target != null && length(v.traffic_shift_target) > 0 }
}
output "devops_deploy_stages_values_artifact_ids" {
  description = "Map of values_artifact_ids values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no values_artifact_ids are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => v.values_artifact_ids if v.values_artifact_ids != null && length(v.values_artifact_ids) > 0 }
}
output "devops_deploy_stages_wait_criteria" {
  description = "Map of wait_criteria values across all devops_deploy_stages, keyed the same as var.devops_deploy_stages except keys with no wait_criteria are omitted"
  value       = { for k, v in oci_devops_deploy_stage.devops_deploy_stages : k => one(v.wait_criteria) if v.wait_criteria != null && length(v.wait_criteria) > 0 }
}

