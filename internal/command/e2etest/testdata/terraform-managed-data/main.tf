resource "terraform_data" "a" {
}

resource "terraform_data" "b" {
  input = terraform_data.a.uuid
}

resource "terraform_data" "c" {
  trigger = terraform_data.b
}

resource "terraform_data" "d" {
  input = [ terraform_data.b, terraform_data.c ]
}

output "d" {
  value = terraform_data.d
}
