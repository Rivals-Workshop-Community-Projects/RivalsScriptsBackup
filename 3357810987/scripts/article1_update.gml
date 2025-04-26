//Fog update

if(y_float == y_float_max){
	y_float_dir = -1;
} else if (y_float == -y_float_max){
	y_float_dir = 1;
}
y_float += y_float_dir;

vsp += (y_float/600);

image_yscale = lerp(image_yscale, (fog_expansion*0.2)+2, 0.025);

if (get_gameplay_time()%(60/fog_expansion)) == 0 or get_gameplay_time()%(60) == 0 {
	var sparks = spawn_hit_fx((x+2000)-ease_sineInOut(-300-(50*fog_expansion),300+(50*fog_expansion),random_func_2(0,360,true),360),y-300,fx_dspecial_sparks);
	sparks.depth = -5;
	sparks.sinx = random_func_2(1,360,true);
	sparks.fx_speed = 4;
	sparks.vsp = -.2;
	sparks.hsp = random_func(3, 11, true)-6;
	sparks.grav = -.15;
	sparks.air_friction = 3;
	//sparks.image_blend = c_blood;
	//sparks.image_alpha = 0.25;
}