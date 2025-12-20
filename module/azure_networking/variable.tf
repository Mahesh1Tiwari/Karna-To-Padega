variable "networks" {
    type = map(object({
      name = string
      rg_name= string
      location =string
      address_space = list(string)
     
      tags=optional(map(string))
      subnets=optional(list(object({
        name=string
        address_prefixes = list(string)
      })),[])
      
    }))
}