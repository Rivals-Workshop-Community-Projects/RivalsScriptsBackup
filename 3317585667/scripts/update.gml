if !smwhurry {
	if is_laststock() || get_game_timer() < ( 60 * 60 ) {
		sound_play(sound_get("smw_hurry"), false, 0)
		smwhurry = true;
	}
}

if is_aether_stage() {
///////////initer	
//new slope and other defines
with oPlayer if "super_metroid_last_slope" not in self super_metroid_last_slope = noone;
with oPlayer if "vbaioygoeuitrhliewrrli743t785926tgflkwhvfsd" not in self vbaioygoeuitrhliewrrli743t785926tgflkwhvfsd = 0;
with oPlayer if "has_wj" not in self has_wj = 0;
var pos = 0;
//var ecd = sprite_get("char_ECD_og");
with oPlayer{
	//other.camp[@0] += (right_down - left_down)*10;
	//other.camp[@1] += (down_down - up_down)*10;
	//var pre_mask = mask_index;
    //mask_index = ecd;
    
    if !free has_wj = 0;
    if state = PS_WALL_JUMP has_wj = 1;
    
    if x >= pos-10{
    	var cond = !has_wj && place_meeting(x + (right_down - left_down), y, asset_get("par_block"));
    	has_walljump = cond;
    }
    
    vbaioygoeuitrhliewrrli743t785926tgflkwhvfsd = 0;
    var slope = instance_place(x, y - other.room_height*2, obj_stage_article_platform);
	if slope = noone{
		slope = super_metroid_last_slope;
		super_metroid_last_slope = noone;
	}
	if slope != noone{
		if slope = other.slope1 || slope = other.slope2 slope = (x + hsp > 332? other.slope1: other.slope2);
		//if (state = PS_ROLL_FORWARD || state = PS_ROLL_BACKWARD) && window = 1 x += -9*((state = PS_ROLL_FORWARD) - (state = PS_ROLL_BACKWARD))*spr_dir;
		vbaioygoeuitrhliewrrli743t785926tgflkwhvfsd = 1;
		var ts = slope;
		var coeff = clamp((x-ts.slope_pos1[0])/(ts.slope_pos2[0]-ts.slope_pos1[0]), 0, 1);
		if y >= lerp(ts.slope_pos1[1], ts.slope_pos2[1], coeff) - 10{
			fall_through = 0;
			if vsp >= 0 {
				y = ceil(lerp(ts.slope_pos1[1], ts.slope_pos2[1], coeff));
				if !free && state_cat != SC_HITSTUN { 
					vsp = 50;
					old_vsp = 50;
				}
			}
			with other sp_coll(other.x, other.y, "obj_stage_article_platform");
		}
		if super_metroid_last_slope != noone super_metroid_last_slope = slope;
	}
    //mask_index = pre_mask;
}

//print(camp);
//set_view_position(camp[0], camp[1])

}

#define sp_coll(xpos, ypos, type)
var g = instance_create(floor(xpos), floor(ypos), type, 7);
g.mask_index = sprite_get("slope");
g.image_xscale = 1;
return g;