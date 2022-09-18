locals {
    vpcs = flatten([
        for v in var.vpc : [
            v.name 
        ]
    ])
    subnets = flatten([
        for s in var.subnet : [
            s.name 
        ]
    ])
    eips = flatten([
        for e in var.eip : [
            e.name 
        ]
    ])
}