resource "aws_autoscaling_group" "NodeJSAPP_ASG" {
  availability_zones = data.aws_availability_zones.all.names
  desired_capacity   = 3
  max_size           = 99
  min_size           = 3
  mixed_instances_policy {
    instances_distribution {
      on_demand_base_capacity                  = 50
      on_demand_percentage_above_base_capacity = 50
      spot_allocation_strategy                 = "capacity-optimized"
    }
  
  launch_template {
      launch_template_specification {
        launch_template_id = aws_launch_template.NodeJSAPP_LT.id
      }
  } 

  tags = {
    Team        = "DevOps"
    Environment = "Dev"
    Application = "NodeJS"
  }
}

