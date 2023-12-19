output "vpcID" {
  value = aws_vpc.vpc1
}
output "ec2_sg_ID" {
  value = aws_security_group.ec2
}
output "alb_sg_ID" {
  value = aws_security_group.lb
}
output "ec2_one" {
  value = aws_instance.ec2-one
}
output "ec2_two" {
  value = aws_instance.ec2-two
}
output "private_subnet1" {
  value = aws_subnet.private_subnet1
}
output "private_subnet2" {
  value = aws_subnet.private_subnet2
}
output "public_subnet1" {
  value = aws_subnet.public_subnet1
}
output "public_subnet2" {
  value = aws_subnet.public_subnet2
}
 output "alb_sg" {
   value = aws_lb_listener.alb-http-listener
 }
 output "alb" {
   value = aws_lb.application-lb
 }