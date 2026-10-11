resource "oci_devops_deploy_stage" "devops_deploy_stages" {
  for_each = var.devops_deploy_stages

  deploy_pipeline_id                                           = each.value.deploy_pipeline_id
  deploy_stage_type                                            = each.value.deploy_stage_type
  are_hooks_enabled                                            = each.value.are_hooks_enabled
  command_spec_deploy_artifact_id                              = each.value.command_spec_deploy_artifact_id
  compute_instance_group_blue_green_deployment_deploy_stage_id = each.value.compute_instance_group_blue_green_deployment_deploy_stage_id
  compute_instance_group_canary_deploy_stage_id                = each.value.compute_instance_group_canary_deploy_stage_id
  compute_instance_group_canary_traffic_shift_deploy_stage_id  = each.value.compute_instance_group_canary_traffic_shift_deploy_stage_id
  compute_instance_group_deploy_environment_id                 = each.value.compute_instance_group_deploy_environment_id
  config                                                       = each.value.config
  defined_tags                                                 = each.value.defined_tags
  deploy_artifact_id                                           = each.value.deploy_artifact_id
  deploy_artifact_ids                                          = each.value.deploy_artifact_ids
  deploy_environment_id_a                                      = each.value.deploy_environment_id_a
  deploy_environment_id_b                                      = each.value.deploy_environment_id_b
  deployment_spec_deploy_artifact_id                           = each.value.deployment_spec_deploy_artifact_id
  description                                                  = each.value.description
  display_name                                                 = each.value.display_name
  docker_image_deploy_artifact_id                              = each.value.docker_image_deploy_artifact_id
  freeform_tags                                                = each.value.freeform_tags
  function_deploy_environment_id                               = each.value.function_deploy_environment_id
  function_timeout_in_seconds                                  = each.value.function_timeout_in_seconds
  helm_chart_deploy_artifact_id                                = each.value.helm_chart_deploy_artifact_id
  helm_command_artifact_ids                                    = each.value.helm_command_artifact_ids
  is_async                                                     = each.value.is_async
  is_debug_enabled                                             = each.value.is_debug_enabled
  is_force_enabled                                             = each.value.is_force_enabled
  is_uninstall_on_stage_delete                                 = each.value.is_uninstall_on_stage_delete
  is_validation_enabled                                        = each.value.is_validation_enabled
  kubernetes_manifest_deploy_artifact_ids                      = each.value.kubernetes_manifest_deploy_artifact_ids
  max_history                                                  = each.value.max_history
  max_memory_in_mbs                                            = each.value.max_memory_in_mbs
  namespace                                                    = each.value.namespace
  oke_blue_green_deploy_stage_id                               = each.value.oke_blue_green_deploy_stage_id
  oke_canary_deploy_stage_id                                   = each.value.oke_canary_deploy_stage_id
  oke_canary_traffic_shift_deploy_stage_id                     = each.value.oke_canary_traffic_shift_deploy_stage_id
  oke_cluster_deploy_environment_id                            = each.value.oke_cluster_deploy_environment_id
  purpose                                                      = each.value.purpose
  release_name                                                 = each.value.release_name
  should_cleanup_on_fail                                       = each.value.should_cleanup_on_fail
  should_not_wait                                              = each.value.should_not_wait
  should_reset_values                                          = each.value.should_reset_values
  should_reuse_values                                          = each.value.should_reuse_values
  should_skip_crds                                             = each.value.should_skip_crds
  should_skip_render_subchart_notes                            = each.value.should_skip_render_subchart_notes
  timeout_in_seconds                                           = each.value.timeout_in_seconds
  traffic_shift_target                                         = each.value.traffic_shift_target
  values_artifact_ids                                          = each.value.values_artifact_ids

  deploy_stage_predecessor_collection {
    dynamic "items" {
      for_each = each.value.deploy_stage_predecessor_collection.items
      content {
        id = items.value.id
      }
    }
  }

  dynamic "approval_policy" {
    for_each = each.value.approval_policy != null ? [each.value.approval_policy] : []
    content {
      approval_policy_type         = approval_policy.value.approval_policy_type
      number_of_approvals_required = approval_policy.value.number_of_approvals_required
    }
  }

  dynamic "blue_backend_ips" {
    for_each = each.value.blue_backend_ips != null ? [each.value.blue_backend_ips] : []
    content {
      items = blue_backend_ips.value.items
    }
  }

  dynamic "blue_green_strategy" {
    for_each = each.value.blue_green_strategy != null ? [each.value.blue_green_strategy] : []
    content {
      ingress_name  = blue_green_strategy.value.ingress_name
      namespace_a   = blue_green_strategy.value.namespace_a
      namespace_b   = blue_green_strategy.value.namespace_b
      strategy_type = blue_green_strategy.value.strategy_type
    }
  }

  dynamic "canary_strategy" {
    for_each = each.value.canary_strategy != null ? [each.value.canary_strategy] : []
    content {
      ingress_name  = canary_strategy.value.ingress_name
      namespace     = canary_strategy.value.namespace
      strategy_type = canary_strategy.value.strategy_type
    }
  }

  dynamic "container_config" {
    for_each = each.value.container_config != null ? [each.value.container_config] : []
    content {
      availability_domain   = container_config.value.availability_domain
      compartment_id        = container_config.value.compartment_id
      container_config_type = container_config.value.container_config_type
      network_channel {
        network_channel_type = container_config.value.network_channel.network_channel_type
        nsg_ids              = container_config.value.network_channel.nsg_ids
        subnet_id            = container_config.value.network_channel.subnet_id
      }
      shape_config {
        memory_in_gbs = container_config.value.shape_config.memory_in_gbs
        ocpus         = container_config.value.shape_config.ocpus
      }
      shape_name = container_config.value.shape_name
    }
  }

  dynamic "failure_policy" {
    for_each = each.value.failure_policy != null ? [each.value.failure_policy] : []
    content {
      failure_count      = failure_policy.value.failure_count
      failure_percentage = failure_policy.value.failure_percentage
      policy_type        = failure_policy.value.policy_type
    }
  }

  dynamic "green_backend_ips" {
    for_each = each.value.green_backend_ips != null ? [each.value.green_backend_ips] : []
    content {
      items = green_backend_ips.value.items
    }
  }

  dynamic "load_balancer_config" {
    for_each = each.value.load_balancer_config != null ? [each.value.load_balancer_config] : []
    content {
      backend_port     = load_balancer_config.value.backend_port
      listener_name    = load_balancer_config.value.listener_name
      load_balancer_id = load_balancer_config.value.load_balancer_id
    }
  }

  dynamic "production_load_balancer_config" {
    for_each = each.value.production_load_balancer_config != null ? [each.value.production_load_balancer_config] : []
    content {
      backend_port     = production_load_balancer_config.value.backend_port
      listener_name    = production_load_balancer_config.value.listener_name
      load_balancer_id = production_load_balancer_config.value.load_balancer_id
    }
  }

  dynamic "rollback_policy" {
    for_each = each.value.rollback_policy != null ? [each.value.rollback_policy] : []
    content {
      policy_type = rollback_policy.value.policy_type
    }
  }

  dynamic "rollout_policy" {
    for_each = each.value.rollout_policy != null ? [each.value.rollout_policy] : []
    content {
      batch_count            = rollout_policy.value.batch_count
      batch_delay_in_seconds = rollout_policy.value.batch_delay_in_seconds
      batch_percentage       = rollout_policy.value.batch_percentage
      policy_type            = rollout_policy.value.policy_type
      ramp_limit_percent     = rollout_policy.value.ramp_limit_percent
    }
  }

  dynamic "set_string" {
    for_each = each.value.set_string != null ? [each.value.set_string] : []
    content {
      dynamic "items" {
        for_each = set_string.value.items != null ? set_string.value.items : []
        content {
          name  = items.value.name
          value = items.value.value
        }
      }
    }
  }

  dynamic "set_values" {
    for_each = each.value.set_values != null ? [each.value.set_values] : []
    content {
      dynamic "items" {
        for_each = set_values.value.items != null ? set_values.value.items : []
        content {
          name  = items.value.name
          value = items.value.value
        }
      }
    }
  }

  dynamic "test_load_balancer_config" {
    for_each = each.value.test_load_balancer_config != null ? [each.value.test_load_balancer_config] : []
    content {
      backend_port     = test_load_balancer_config.value.backend_port
      listener_name    = test_load_balancer_config.value.listener_name
      load_balancer_id = test_load_balancer_config.value.load_balancer_id
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "wait_criteria" {
    for_each = each.value.wait_criteria != null ? [each.value.wait_criteria] : []
    content {
      wait_duration = wait_criteria.value.wait_duration
      wait_type     = wait_criteria.value.wait_type
    }
  }
}

