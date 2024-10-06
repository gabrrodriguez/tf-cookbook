/* 
1. For Loop with List
2. For Loop with Map
3. For Loop with Map Advanced
4. Legacy Splat Operator (latest) - Returns List
5. Latest Generalized Splat Operator - Returns the List
*/

# Output - For Loop with List
output "for_output_list" {
  description = "Output value for list"
  value = [ for instance in aws_instance.myec2vm: instance.public_dns ]
}

# Output - For Loop with Map
output "for_output_map1" {
    description = "Output value for Map"
    value = { for instance in aws_instance.myec2vm: instance.id => instance.public_dns }
}

# Output - For Lop with Map Advanced
output "for_output_map2" {
    description = "Output value for Map - Advanced"
    value = { for c, instance in aws_instance.myec2vm: c => instance.public_dns }   // c = "count"
}

# Legacy Splat Operator (latest) - Returns List
output "legacy_splat_instance_publicdns" {
    description = "Output value for legacy splat operator"
    value = aws_instance.myec2vm.*.public_dns
}

# Latest Generalized Splat Operator - Returns the List
output "generalized_splat_instance_publicdns" {
    description = "Generalized value for legacy splat operator"
    value = aws_instance.myec2vm[*].public_dns
}