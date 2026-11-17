
resource "aws_instance" "app_servereast" {
  # count = 2 ## count doesnt work here because we have fixed keys
  ami           = var.example_ami["us-east-1"]
  instance_type = "t2.micro"
  monitoring    = var.enable_monitoring


  tags = {
    Name = var.mynewinstance
  }
}

resource "aws_s3_bucket" "newxbucket3456" {
  bucket = var.bucket_names[count.index]
  count  = var.bucket_count




}

resource "aws_s3_bucket" "exmaplebucke22" {
  bucket = "targetdestroy222"


}

resource "aws_instance" "secops67684west" {
  ami           = var.example_ami["us-west-2"]
  instance_type = "t2.micro"
}

resource "aws_instance" "newinstance" {
  ami           = "ami-08b5b3a93ed654d19"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.example_subnet.id
  depends_on    = [aws_subnet.example_subnet]

  tags = {
    Name = "yoloxfgdghd456"
  }

}

resource "aws_vpc" "mynewvpc" {
  cidr_block = "172.31.0.0/16"
}

resource "aws_subnet" "example_subnet" {
  vpc_id = aws_vpc.mynewvpc.id
  # cidr_block = "172.31.96.0/20"
  cidr_block = "172.31.47.0/24"
  depends_on = [aws_vpc.mynewvpc]


}

resource "aws_s3_bucket" "mynewbucket345sew" {
  bucket = var.bucketname1


}
resource "aws_s3_bucket" "mynewbitbucket45ex" {
  bucket = var.bucketname3

}

resource "aws_instance" "newinstanceblockx345" {
  ami           = "ami-12345"
  instance_type = "t2.micro"
  key_name      = var.my_team_key

}


resource "aws_instance" "myinstacebits" {
  ami                         = "ami-123344"
  instance_type               = var.env == "prod" ? "t3.large" : "t2.micro"
  associate_public_ip_address = var.enable_public_ip ? true : false
 



}

# resource "aws_instance" "ec2mame1" {

  

# }


