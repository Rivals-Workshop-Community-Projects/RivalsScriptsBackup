//a

if (z_timer<z_max){
	z_timer++;
}
image_alpha = ease_linear( 0, 100, clamp(z_timer,0,z_show), z_show )/100
if (z_timer>=z_max){
	instance_destroy();
	exit;
}
//print_debug( "yeah" )