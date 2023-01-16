resource "aws_route_table_association" "rta1" {
  subnet_id      = aws_subnet.public-subnet1.id
  route_table_id = aws_route_table.routetable.id
}
resource "aws_route_table_association" "rta2" {
  subnet_id      = aws_subnet.public-subnet2.id
  route_table_id = aws_route_table.routetable.id
}
resource "aws_route_table_association" "rta3" {
  subnet_id      = aws_subnet.public-subnet3.id
  route_table_id = aws_route_table.routetable.id
}