variable access_key {
    type      = string
    default   = "AKIAXV7HUV3BGSFBKQP2"
    description = "access key for aws"
} 
  
variable secret_key {
    type = string
    default = "dPiEow98zhxwvV2Kck2wLlxUPqeA/tXAW4eTB41E"

    description = "secret key for aws"
 }

 variable ec2_instance {
     type  = string
     default ="ami-04505e74c0741db8d"
     description = "ami id" 
 }

 variable instance_type {
     type = string
     default = "t2.micro"
 }

 variable cidr_block {
     type = string
     default = "192.10.0.0/16"
 }


 variable cidr_block_subnet1 {
     type = string
     default = "192.10.0.0/24"
     description = "this is for subnet1"
 }


 variable cidr_block_subnet2 {
     type = string
     default = "192.10.1.0/24"
     description = "this is for subnet2"
 }