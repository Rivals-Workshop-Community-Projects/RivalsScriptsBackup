
if !init {
init = 1;
var control = noone;
with (obj_stage_article) {
	if num == 2 {
		control = id;
	}
	if num == 10 {
		control = id; break;
	}
}
if control == noone exit;
image_angle = (point_direction(control.x,control.y,x,y)+180) mod 360;
}