provider "aws"{
    region =  "ap-south-1"
     access_key = "AKIAZAIFWLLGQ75PJHVB"
     secret_key = "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"
}

resource "aws_instance" "terraform"{
    ami = "ami-05c8ca4485f8b138a"
    instance_type = "t2.micro"
    security_groups = ["sg_terraa"] 
    key_name =  "newkey"
    tags = {
        Name = "this instace for terr form"
    }
}  
