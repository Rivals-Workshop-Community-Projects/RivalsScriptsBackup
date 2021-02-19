//article1_init

//if !free sound_play(asset_get("sfx_birdflap"))
var die = 0;
image_xscale = lerp(image_xscale, 1, 0.2)
image_yscale = image_xscale


{
	timer--;
	
	with (oPlayer) {
	
		if id != other.player_id && !mycolich_spored && place_meeting(x,y,other) && mycolich_type == 0 {
		
			mycolich_spored = 1;
			mycolich_player = other.player_id.player;
			
		}
	}
} if timer < 0 {
	image_alpha -= 0.01
	if image_alpha <= 0 die = 1
}
image_index += anim_speed;
vsp *= 0.8;
hsp *= 0.8;


if position_meeting(x, y, asset_get("plasma_field_obj")) {
	timer = 0;
	image_alpha -= 0.1
}
if die instance_destroy();