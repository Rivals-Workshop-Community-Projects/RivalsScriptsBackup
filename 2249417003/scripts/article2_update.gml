//article2_update.gml


exist_timer++;
vsp = min(vsp + 0.4, 6);
hsp *= 0.99;


image_angle += rotation_speed;
if (y > bounce_height && vsp > 0) {
	y = bounce_height;
	if (vsp > 0.5) {
		sound_play(bounce_sound, false, noone, image_alpha);//, noone, max(vsp * 20, 1), 1 + (abs(rotation_speed) * 0.02 - 0.1));
	}
	vsp = -vsp * 0.8;
}


if (exist_timer > 20) {
	image_alpha -= 0.01;
	if (exist_timer > 45 || y > room_height + 50) {instance_destroy();}
}


