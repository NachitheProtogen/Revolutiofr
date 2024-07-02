with(instance_create_layer(x,y,layer,obj_bullet))
{
	direction = point_direction(x,y,mouse_x,mouse_y);
	speed = 9;
	image_angle = direction;
}