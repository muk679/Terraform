
locals {
stringvariable_local= var.stringvariable
numvar_local=var.numvariable
listvar_local=var.listvariable
mapvar_local=var.mapvariable
objvar_local=var.object

}

resource "local_file" "file1" {
filename = "${path.module}/d1/string.txt"
content =local.stringvariable_local
}

resource "local_file" "file2" {
filename = "${path.module}/d1/num.txt"
content = local.numvar_local
}

resource "local_file" "file3" {
filename = "${path.module}/d2/list.txt"
content = <<-EOT
${var.listvariable[1]}
${var.listvariable[2]}

EOT
}

resource "local_file" "file4" {
filename = "${path.module}/d3/map.txt"
content = var.mapvariable.statement1
}

resource "local_file" "file5" {
filename = "${path.module}/d3/obj.txt"
content = var.object.age
}







# provider "random" {
  
# }

# output "file2_path" {
#   value = local_file.file2.filename
# }

# output "file3_path" {
#   value = local_file.file3.filename
# }



