locals {
  original_tags = "${join(var.delimiter, compact(concat(list(var.namespace, var.stage, var.name), var.attributes)))}"
}

locals {
  transformed_tags = "${lower(local.original_tags)}"
}

locals {
  id = "${local.transformed_tags}"

  namespace  = "${lower(format("%v", var.namespace))}"
  stage      = "${lower(format("%v", var.stage))}"
  name       = "${lower(format("%v", var.name))}"
  attributes = "${lower(format("%v", join(var.delimiter, compact(var.attributes))))}"

  constants = {
    Name      = "${local.id}"
    Namespace = "${local.namespace}"
    Stage     = "${local.stage}"
  }

  tags = "${merge(local.constants, var.tags)}"
}
