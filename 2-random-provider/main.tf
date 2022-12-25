resource "random_string" "random_gen" {
  length = 16
}

resource "random_string" "random_gen_upper" {
  length = 16
  lower  = false
}


resource "random_string" "random_gen_upper_nosplchar" {
  length  = 16
  lower   = false
  special = false
}
