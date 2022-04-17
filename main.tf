terraform {
     required_providers {
      aws    = {
      source = "hashicorp/aws"
     version = "4.10.0"
      }
     }
    }

    provider "aws" {
          region     = "us-east-1"
          access_key = "${var.access_key}"
          secret_key = var.secret_key
            }

 

 resource "aws_vpc" "my_vpc" {
     cidr_block = var.cidr_block
     enable_dns_hostnames = true
     tags = {
     Name = "My-my_vpc"
    owner = "manoj"
     environment = "prod"
     }
 }

     resource "aws_subnet" "subnet1-public" {
         vpc_id = aws_vpc.my_vpc.id
         cidr_block = var.cidr_block_subnet1
         availability_zone = "us-east-1a"
         tags = {
             Name = "subnet1_public"
         }
     
   
 }



     resource "aws_subnet" "subnet2-public" {
         vpc_id = aws_vpc.my_vpc.id
         cidr_block = var.cidr_block_subnet2
         availability_zone = "us-east-1b"
         tags = {
             Name = "subnet2_public"
         }
    
   
 }
 resource "aws_internet_gateway" "myvpcgw" {
     vpc_id = aws_vpc.my_vpc.id
     tags = {
    Name = "mytestvpc.gw"
     }
 }



 resource "aws_instance" "ec2_instance" {
     #vpc_id = aws_instance.ec2_instance.id 
     ami = var.ec2_instance
     instance_type = var.instance_type
     tags = {
     Name = "ec2 from vs"

     }

 }    
 