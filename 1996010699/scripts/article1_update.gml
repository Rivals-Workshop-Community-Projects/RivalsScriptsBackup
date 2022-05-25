//article1_update
timer += 1;

if (vsp > 0) {
    vsp += -.04;
}

if (vsp < 0) {
    vsp -= -.04;
}

if (hsp > 0) {
    hsp += -.04;
}

if (hsp < 0) {
    hsp -= -.04;
}

if (timer > 300){
    instance_destroy();
}

//destroy
if (y < 0 || y > room_height){
    instance_destroy();
	exit;
}

if (x < 0 || x > room_width){
    instance_destroy();
	exit;
}

if (place_meeting( x, y, player_id )){
    if (player_id.xp_mod == 0){
        sound_stop( asset_get ("mfx_xp") );
        sound_play( asset_get ("mfx_xp") );
		player_id.GAUGE_EXP_CURRENT++;
    }
    if (player_id.xp_mod == 1){
        sound_stop( asset_get ("mfx_coin") );
        sound_play( asset_get ("mfx_coin") );
		player_id.GAUGE_EXP_CURRENT++;
    }
    instance_destroy();
	exit;
}

var shortest_id = player_id;
var shortest_dist = 160;
var additional_speed = .2;
var fast_range = 40;

if(timer > 30){
	if (shortest_id != undefined){
		x = lerp(x, shortest_id.x, 0.08+(point_distance(x,y,shortest_id.x,shortest_id.y) < fast_range)*additional_speed);
		y = lerp(y, shortest_id.y, 0.08+(point_distance(x,y,shortest_id.x,shortest_id.y) < fast_range)*additional_speed);
	}
}