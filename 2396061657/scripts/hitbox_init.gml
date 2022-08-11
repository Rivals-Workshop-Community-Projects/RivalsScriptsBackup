// hitbox_init.gml
// Called when a hitbox is created
// From the perspective of a hitbox

if (attack == AT_UTILT){
	proj_angle = (-180*(spr_dir == -1)) + point_direction(0,0,hsp,vsp);
}