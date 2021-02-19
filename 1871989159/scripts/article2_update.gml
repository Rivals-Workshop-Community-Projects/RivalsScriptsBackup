
image_index += animspd;


image_alpha -= alphaspd;
if (alphaspd = 0 && image_index + animspd >= image_number) or image_alpha <= 0 {instance_destroy();} else if homing > 0 {
	x = lerp(xstart,player_id.x,homing-1)
	y = lerp(ystart,player_id.y-20,homing-1)
	homing += 0.02;
	if homing >= 2 {
	instance_destroy();
	}
}