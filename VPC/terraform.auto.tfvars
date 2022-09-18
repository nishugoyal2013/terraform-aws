secret_key = "PtqFt2hCu0A1Nch+0KSvTv1qV1zQ0FqhsuhfAOrU"
access_key = "AKIAWE3QMFIUUNP44ERD"
vpc = [{
    name = "env-vpc-d-01",
    cidr_block = "10.1.0.0/16"
    instance_tenancy = "default"
    enable_dns_support = false
  },
  {   
    name = "env-vpc-d-02",
    cidr_block = "10.2.0.0/16"
    instance_tenancy = "default"
    enable_dns_support = false
  }
]

subnet = [{
  vpc_name = "env-vpc-d-01",
  cidr_block = "10.1.0.0/24"
  name = "env-subnet-d-01"
},
{
  vpc_name = "env-vpc-d-01",
  cidr_block = "10.1.1.0/24"
  name = "env-subnet-d-02"
},
{
  vpc_name = "env-vpc-d-02",
  cidr_block = "10.2.0.0/24"
  name = "env-subnet-d-03"
}
]

igw = [{
  vpc_name = "env-vpc-d-01",
  name = "env-igw-d-01"
}]

ngw = [{
  eip_name = "env-eip-d-01"
  subnet_name = "env-subnet-d-02"
  name = "env-ngw-d-01"
}]



sg = [{
  vpc_name = "env-vpc-d-01",
  name = "env-sg-01"
}]

rt = [{
  vpc_name = "env-vpc-d-01",
  name = "env-rt-d-01-ngw"
}]

rt2 = {
  name = "env-rt-d-01-pvt"
}

ec2 = {
  name = "env-ec2-d-01"
  instance_type = "t3.micro"
  associate_public_ip_address = true
  key_name = "tf_key"
  cpu_credits = "unlimited"
}

eip = [{
  vpc = true,
  name = "env-eip-d-01"
}]