 
 variable "environment"{}
 variable "key_name"{}
 variable "ami"{
    default={
    prod="ami-prod"
    nonprod="ami-nonprod"
    }
  }
  
    variable "tags"{}