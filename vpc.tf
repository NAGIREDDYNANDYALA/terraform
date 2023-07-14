resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = {
    Name     = "nvr-app-${terraform.workspace}"
    Location = "AP"
  }
}
resource "aws_subnet" "main" {
  count             = 3
  vpc_id            = aws_vpc.main.id
  availability_zone = var.azs[count.index]
  cidr_block        = var.subnet_cidrs[count.index]
  tags = {
    Name     = "siva-subnets-${count.index + 1}-${terraform.workspace}"
    Location = "Tirupati"
  }
}