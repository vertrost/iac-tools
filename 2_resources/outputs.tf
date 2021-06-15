output amazon2_ami_id {
  value = data.aws_ami.amazon2.id
}

output local_value {
  value = local.my_local_variable
}

output instance_id {
  value = aws_instance.web.id
}
