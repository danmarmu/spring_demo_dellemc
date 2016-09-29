#terraform remote config -backend=s3 -backend-config="bucket=terraform-glic" -backend-config="key=demo-rds/terraform.tfstate" -backend-config="region=us-east-1"

provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_db_instance" "default" {
  depends_on = ["aws_security_group.default"]
  identifier = "${var.identifier}"
  allocated_storage = "${var.storage}"
  engine = "${var.engine}"
  engine_version = "${lookup(var.engine_version, var.engine)}"
  instance_class = "${var.instance_class}"
  name = "${var.db_name}"
  username = "${var.username}"
  password = "${var.password}"
  vpc_security_group_ids = ["${aws_security_group.default.id}"]
  db_subnet_group_name = "${var.db_subnet_group}"
}

resource "aws_security_group" "default" {
  name = "demo-rds"
  description = "Allow all inbound traffic"
  vpc_id = "${var.vpc_id}"

  ingress {
    from_port = "${lookup(var.db_port, var.engine)}"
    to_port = "${lookup(var.db_port, var.engine)}"
    protocol = "TCP"
    cidr_blocks = ["${var.cidr_blocks}"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "${var.sg_name}"
  }
}

output "db_instance_id" {
  value = "${aws_db_instance.default.id}"
}
output "db_instance_address" {
  value = "${aws_db_instance.default.address}"
}

output "db_instance_user" {
  value = "${var.username}"
}
output "db_instance_password" {
  value = "${var.password}"
}
