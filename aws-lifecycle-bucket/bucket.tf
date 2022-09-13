resource "aws_s3_bucket" "lifecycle" {
  bucket = "ganogsi-lifecycle"

  lifecycle {
    #create_before_destroy = true 'cria um novo recurso e detroi o antigo'
    #prevent_destroy = true 'impede a destruição do recurso'
    #ignore_changes = [tags] 'terraform ignora alterações realizadas por fora'
  }
  tags = {
    "teste" = "lifecycle"
  }
}