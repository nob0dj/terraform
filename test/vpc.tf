resource "aws_vpc" "sample-vpc" {
    cidr_block = "10.0.0.0/16"
    enable_dns_support = true
    enable_dns_hostnames = true
    # 모든 자원은 tag로써 관리하는 것이 수월하다.
    tags = {
        Name = "sample-vpc"
    }
}

resource "aws_subnet" "sample-subnet-public-01" {
    vpc_id = aws_vpc.sample-vpc.id
    cidr_block = "10.0.16.0/24"
    availability_zone = "ap-northeast-2a"
    map_public_ip_on_launch = true
    tags = {
        Name = "sample-subnet-public-01"
    }
}
resource "aws_subnet" "sample-subnet-public-02" {
    vpc_id = aws_vpc.sample-vpc.id
    cidr_block = "10.0.17.0/24"
    availability_zone = "ap-northeast-2c"
    map_public_ip_on_launch = true
    tags = {
        Name = "sample-subnet-public-02"
    }
}
resource "aws_subnet" "sample-subnet-private-01" {
    vpc_id = aws_vpc.sample-vpc.id
    cidr_block = "10.0.18.0/24"
    availability_zone = "ap-northeast-2a"
    map_public_ip_on_launch = true
    tags = {
        Name = "sample-subnet-private-01"
    }
}
resource "aws_subnet" "sample-subnet-private-02" {
    vpc_id = aws_vpc.sample-vpc.id
    cidr_block = "10.0.19.0/24"
    availability_zone = "ap-northeast-2c"
    map_public_ip_on_launch = true
    tags = {
        Name = "sample-subnet-private-02"
    }
}

