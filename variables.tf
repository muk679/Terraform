variable "stringvariable" {
  type = string
  default = "hello world"
}

variable "numvariable" {
  type = number
  default = 5
}

variable "listvariable" {
  type = list(string)
  default = [ "user1","user2", "user3"]
}

variable "mapvariable" {

  type = map(string)
  default = {
    statement1="Hello"
    statement2="World"
  }
  
}

variable "object" {
  type = object({
    name = string
    age=number
  })
  default = {
    name = "Vaibhav"
    age = 30
  }
}