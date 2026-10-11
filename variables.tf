variable "devops_deploy_stages" {
  description = <<EOT
Map of devops_deploy_stages, attributes below
Required:
    - deploy_pipeline_id
    - deploy_stage_type
    - deploy_stage_predecessor_collection (block):
        - items (required, block):
            - id (required)
Optional:
    - are_hooks_enabled
    - command_spec_deploy_artifact_id
    - compute_instance_group_blue_green_deployment_deploy_stage_id
    - compute_instance_group_canary_deploy_stage_id
    - compute_instance_group_canary_traffic_shift_deploy_stage_id
    - compute_instance_group_deploy_environment_id
    - config
    - defined_tags
    - deploy_artifact_id
    - deploy_artifact_ids
    - deploy_environment_id_a
    - deploy_environment_id_b
    - deployment_spec_deploy_artifact_id
    - description
    - display_name
    - docker_image_deploy_artifact_id
    - freeform_tags
    - function_deploy_environment_id
    - function_timeout_in_seconds
    - helm_chart_deploy_artifact_id
    - helm_command_artifact_ids
    - is_async
    - is_debug_enabled
    - is_force_enabled
    - is_uninstall_on_stage_delete
    - is_validation_enabled
    - kubernetes_manifest_deploy_artifact_ids
    - max_history
    - max_memory_in_mbs
    - namespace
    - oke_blue_green_deploy_stage_id
    - oke_canary_deploy_stage_id
    - oke_canary_traffic_shift_deploy_stage_id
    - oke_cluster_deploy_environment_id
    - purpose
    - release_name
    - should_cleanup_on_fail
    - should_not_wait
    - should_reset_values
    - should_reuse_values
    - should_skip_crds
    - should_skip_render_subchart_notes
    - timeout_in_seconds
    - traffic_shift_target
    - values_artifact_ids
    - approval_policy (block):
        - approval_policy_type (required)
        - number_of_approvals_required (required)
    - blue_backend_ips (block):
        - items (optional)
    - blue_green_strategy (block):
        - ingress_name (required)
        - namespace_a (required)
        - namespace_b (required)
        - strategy_type (required)
    - canary_strategy (block):
        - ingress_name (required)
        - namespace (required)
        - strategy_type (required)
    - container_config (block):
        - availability_domain (optional)
        - compartment_id (optional)
        - container_config_type (required)
        - network_channel (required, block):
            - network_channel_type (required)
            - nsg_ids (optional)
            - subnet_id (required)
        - shape_config (required, block):
            - memory_in_gbs (optional)
            - ocpus (required)
        - shape_name (required)
    - failure_policy (block):
        - failure_count (optional)
        - failure_percentage (optional)
        - policy_type (required)
    - green_backend_ips (block):
        - items (optional)
    - load_balancer_config (block):
        - backend_port (optional)
        - listener_name (optional)
        - load_balancer_id (optional)
    - production_load_balancer_config (block):
        - backend_port (optional)
        - listener_name (optional)
        - load_balancer_id (optional)
    - rollback_policy (block):
        - policy_type (optional)
    - rollout_policy (block):
        - batch_count (optional)
        - batch_delay_in_seconds (optional)
        - batch_percentage (optional)
        - policy_type (optional)
        - ramp_limit_percent (optional)
    - set_string (block):
        - items (optional, block):
            - name (optional)
            - value (optional)
    - set_values (block):
        - items (optional, block):
            - name (optional)
            - value (optional)
    - test_load_balancer_config (block):
        - backend_port (optional)
        - listener_name (optional)
        - load_balancer_id (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - wait_criteria (block):
        - wait_duration (required)
        - wait_type (required)
EOT

  type = map(object({
    deploy_pipeline_id                                           = string
    deploy_stage_type                                            = string
    are_hooks_enabled                                            = optional(bool)
    command_spec_deploy_artifact_id                              = optional(string)
    compute_instance_group_blue_green_deployment_deploy_stage_id = optional(string)
    compute_instance_group_canary_deploy_stage_id                = optional(string)
    compute_instance_group_canary_traffic_shift_deploy_stage_id  = optional(string)
    compute_instance_group_deploy_environment_id                 = optional(string)
    config                                                       = optional(map(string))
    defined_tags                                                 = optional(map(string))
    deploy_artifact_id                                           = optional(string)
    deploy_artifact_ids                                          = optional(list(string))
    deploy_environment_id_a                                      = optional(string)
    deploy_environment_id_b                                      = optional(string)
    deployment_spec_deploy_artifact_id                           = optional(string)
    description                                                  = optional(string)
    display_name                                                 = optional(string)
    docker_image_deploy_artifact_id                              = optional(string)
    freeform_tags                                                = optional(map(string))
    function_deploy_environment_id                               = optional(string)
    function_timeout_in_seconds                                  = optional(number)
    helm_chart_deploy_artifact_id                                = optional(string)
    helm_command_artifact_ids                                    = optional(list(string))
    is_async                                                     = optional(bool)
    is_debug_enabled                                             = optional(bool)
    is_force_enabled                                             = optional(bool)
    is_uninstall_on_stage_delete                                 = optional(bool)
    is_validation_enabled                                        = optional(bool)
    kubernetes_manifest_deploy_artifact_ids                      = optional(list(string))
    max_history                                                  = optional(number)
    max_memory_in_mbs                                            = optional(string)
    namespace                                                    = optional(string)
    oke_blue_green_deploy_stage_id                               = optional(string)
    oke_canary_deploy_stage_id                                   = optional(string)
    oke_canary_traffic_shift_deploy_stage_id                     = optional(string)
    oke_cluster_deploy_environment_id                            = optional(string)
    purpose                                                      = optional(string)
    release_name                                                 = optional(string)
    should_cleanup_on_fail                                       = optional(bool)
    should_not_wait                                              = optional(bool)
    should_reset_values                                          = optional(bool)
    should_reuse_values                                          = optional(bool)
    should_skip_crds                                             = optional(bool)
    should_skip_render_subchart_notes                            = optional(bool)
    timeout_in_seconds                                           = optional(number)
    traffic_shift_target                                         = optional(string)
    values_artifact_ids                                          = optional(list(string))
    deploy_stage_predecessor_collection = object({
      items = list(object({
        id = string
      }))
    })
    approval_policy = optional(object({
      approval_policy_type         = string
      number_of_approvals_required = number
    }))
    blue_backend_ips = optional(object({
      items = optional(list(string))
    }))
    blue_green_strategy = optional(object({
      ingress_name  = string
      namespace_a   = string
      namespace_b   = string
      strategy_type = string
    }))
    canary_strategy = optional(object({
      ingress_name  = string
      namespace     = string
      strategy_type = string
    }))
    container_config = optional(object({
      availability_domain   = optional(string)
      compartment_id        = optional(string)
      container_config_type = string
      network_channel = object({
        network_channel_type = string
        nsg_ids              = optional(list(string))
        subnet_id            = string
      })
      shape_config = object({
        memory_in_gbs = optional(number)
        ocpus         = number
      })
      shape_name = string
    }))
    failure_policy = optional(object({
      failure_count      = optional(number)
      failure_percentage = optional(number)
      policy_type        = string
    }))
    green_backend_ips = optional(object({
      items = optional(list(string))
    }))
    load_balancer_config = optional(object({
      backend_port     = optional(number)
      listener_name    = optional(string)
      load_balancer_id = optional(string)
    }))
    production_load_balancer_config = optional(object({
      backend_port     = optional(number)
      listener_name    = optional(string)
      load_balancer_id = optional(string)
    }))
    rollback_policy = optional(object({
      policy_type = optional(string)
    }))
    rollout_policy = optional(object({
      batch_count            = optional(number)
      batch_delay_in_seconds = optional(number)
      batch_percentage       = optional(number)
      policy_type            = optional(string)
      ramp_limit_percent     = optional(number)
    }))
    set_string = optional(object({
      items = optional(list(object({
        name  = optional(string)
        value = optional(string)
      })))
    }))
    set_values = optional(object({
      items = optional(list(object({
        name  = optional(string)
        value = optional(string)
      })))
    }))
    test_load_balancer_config = optional(object({
      backend_port     = optional(number)
      listener_name    = optional(string)
      load_balancer_id = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    wait_criteria = optional(object({
      wait_duration = string
      wait_type     = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.devops_deploy_stages : (
        length(v.deploy_stage_predecessor_collection.items) >= 1
      )
    ])
    error_message = "Each items list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.devops_deploy_stages : (
        contains([for v in ["COMPUTE_INSTANCE_GROUP_BLUE_GREEN_DEPLOYMENT", "COMPUTE_INSTANCE_GROUP_BLUE_GREEN_TRAFFIC_SHIFT", "COMPUTE_INSTANCE_GROUP_CANARY_APPROVAL", "COMPUTE_INSTANCE_GROUP_CANARY_DEPLOYMENT", "COMPUTE_INSTANCE_GROUP_CANARY_TRAFFIC_SHIFT", "COMPUTE_INSTANCE_GROUP_ROLLING_DEPLOYMENT", "DEPLOY_FUNCTION", "INVOKE_FUNCTION", "LOAD_BALANCER_TRAFFIC_SHIFT", "SHELL", "MANUAL_APPROVAL", "OKE_BLUE_GREEN_DEPLOYMENT", "OKE_BLUE_GREEN_TRAFFIC_SHIFT", "OKE_CANARY_APPROVAL", "OKE_CANARY_DEPLOYMENT", "OKE_CANARY_TRAFFIC_SHIFT", "OKE_DEPLOYMENT", "OKE_HELM_CHART_DEPLOYMENT", "WAIT"] : lower(v)], lower(v.deploy_stage_type))
      )
    ])
    error_message = "must be one of: \"COMPUTE_INSTANCE_GROUP_BLUE_GREEN_DEPLOYMENT\", \"COMPUTE_INSTANCE_GROUP_BLUE_GREEN_TRAFFIC_SHIFT\", \"COMPUTE_INSTANCE_GROUP_CANARY_APPROVAL\", \"COMPUTE_INSTANCE_GROUP_CANARY_DEPLOYMENT\", \"COMPUTE_INSTANCE_GROUP_CANARY_TRAFFIC_SHIFT\", \"COMPUTE_INSTANCE_GROUP_ROLLING_DEPLOYMENT\", \"DEPLOY_FUNCTION\", \"INVOKE_FUNCTION\", \"LOAD_BALANCER_TRAFFIC_SHIFT\", \"SHELL\", \"MANUAL_APPROVAL\", \"OKE_BLUE_GREEN_DEPLOYMENT\", \"OKE_BLUE_GREEN_TRAFFIC_SHIFT\", \"OKE_CANARY_APPROVAL\", \"OKE_CANARY_DEPLOYMENT\", \"OKE_CANARY_TRAFFIC_SHIFT\", \"OKE_DEPLOYMENT\", \"OKE_HELM_CHART_DEPLOYMENT\", \"WAIT\""
  }
  validation {
    condition = alltrue([
      for k, v in var.devops_deploy_stages : (
        v.approval_policy == null || (contains([for v in ["COUNT_BASED_APPROVAL"] : lower(v)], lower(v.approval_policy.approval_policy_type)))
      )
    ])
    error_message = "must be one of: \"COUNT_BASED_APPROVAL\""
  }
  validation {
    condition = alltrue([
      for k, v in var.devops_deploy_stages : (
        v.blue_green_strategy == null || (contains([for v in ["NGINX_BLUE_GREEN_STRATEGY"] : lower(v)], lower(v.blue_green_strategy.strategy_type)))
      )
    ])
    error_message = "must be one of: \"NGINX_BLUE_GREEN_STRATEGY\""
  }
  validation {
    condition = alltrue([
      for k, v in var.devops_deploy_stages : (
        v.canary_strategy == null || (contains([for v in ["NGINX_CANARY_STRATEGY"] : lower(v)], lower(v.canary_strategy.strategy_type)))
      )
    ])
    error_message = "must be one of: \"NGINX_CANARY_STRATEGY\""
  }
  validation {
    condition = alltrue([
      for k, v in var.devops_deploy_stages : (
        v.container_config == null || (contains([for v in ["CONTAINER_INSTANCE_CONFIG"] : lower(v)], lower(v.container_config.container_config_type)))
      )
    ])
    error_message = "must be one of: \"CONTAINER_INSTANCE_CONFIG\""
  }
  validation {
    condition = alltrue([
      for k, v in var.devops_deploy_stages : (
        v.container_config == null || (contains([for v in ["PRIVATE_ENDPOINT_CHANNEL", "SERVICE_VNIC_CHANNEL"] : lower(v)], lower(v.container_config.network_channel.network_channel_type)))
      )
    ])
    error_message = "must be one of: \"PRIVATE_ENDPOINT_CHANNEL\", \"SERVICE_VNIC_CHANNEL\""
  }
  validation {
    condition = alltrue([
      for k, v in var.devops_deploy_stages : (
        v.failure_policy == null || (contains([for v in ["COMPUTE_INSTANCE_GROUP_FAILURE_POLICY_BY_COUNT", "COMPUTE_INSTANCE_GROUP_FAILURE_POLICY_BY_PERCENTAGE"] : lower(v)], lower(v.failure_policy.policy_type)))
      )
    ])
    error_message = "must be one of: \"COMPUTE_INSTANCE_GROUP_FAILURE_POLICY_BY_COUNT\", \"COMPUTE_INSTANCE_GROUP_FAILURE_POLICY_BY_PERCENTAGE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.devops_deploy_stages : (
        v.rollout_policy == null || (v.rollout_policy.policy_type == null || (contains([for v in ["COMPUTE_INSTANCE_GROUP_LINEAR_ROLLOUT_POLICY_BY_COUNT", "COMPUTE_INSTANCE_GROUP_LINEAR_ROLLOUT_POLICY_BY_PERCENTAGE"] : lower(v)], lower(v.rollout_policy.policy_type))))
      )
    ])
    error_message = "must be one of: \"COMPUTE_INSTANCE_GROUP_LINEAR_ROLLOUT_POLICY_BY_COUNT\", \"COMPUTE_INSTANCE_GROUP_LINEAR_ROLLOUT_POLICY_BY_PERCENTAGE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.devops_deploy_stages : (
        v.wait_criteria == null || (contains([for v in ["ABSOLUTE_WAIT"] : lower(v)], lower(v.wait_criteria.wait_type)))
      )
    ])
    error_message = "must be one of: \"ABSOLUTE_WAIT\""
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

