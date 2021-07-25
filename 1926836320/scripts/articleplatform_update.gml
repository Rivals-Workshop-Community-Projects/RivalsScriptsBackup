
if player_id.nspecial_active && instance_exists(followbox) {
followbox.stand_time--;

if !player_id.free && player_id.y == y && place_meeting(x,y-1,player_id) && !followbox.stand_time {
	followbox.vsp += followbox.stand_sink_speed;
}
x = followbox.x
y = followbox.y-10


if point_distance(0,0,followbox.hsp,followbox.vsp) > 3 {
	image_yscale = 0} else {image_yscale = 1}
} else instance_destroy();