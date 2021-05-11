//a

var r_angle_speed = ease_cubeOut( 2.5*100, 0.05*100, r_timer, r_dur )/100
var r_alpha = ease_quartIn( 0.9*100, 0, r_timer, r_dur )/100

alp_start = r_alpha;
image_angle -= r_angle_speed//0.05


//image_angle -= 0.05
fake_angle -= 0.02


r_timer++;
if (r_timer>r_dur){
	instance_destroy();
	exit;
}
