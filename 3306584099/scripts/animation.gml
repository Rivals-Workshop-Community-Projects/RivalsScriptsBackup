//#region Local Variables
//fix weird jittering that can happen when hud_offset tries to return to 0 - from the munophone
if (abs(hud_offset) < 1) hud_offset = 0;
switch (state)
{
	case PS_PRATLAND:
		//this complicated math allows the player to animate properly when in pratland

		var timer_to_index_math = state_timer / clamp(parry_distance * 8.8, 60, 110);
		//how did i get to this math?
		//	  parry_distance returns the distance which the player was parried from
		//	  if the parry distance is 150 and under, the parried state will be 60 frames long
		//	  if the parry distance is 590 and over, the parried state will be 110 frames long
		//	  590 - 150 = 440 (gap between the min and max affected distances)
		//	  110 - 60 = 50 (gap between the min and max parry stun time)
		//	  440 : 50 = 8.8 (the mulitplier in which parry_distance knows how many frames to add to the parry stun)
		//	  clamp will limit the math to any number in between 60 and 110, the frame limits (otherwise the player may have loop the animation which we don't want)
		//	  state_timer is divided by the complex math above so it dynamically changes the image below

		if (extended_parry_lag) image_index = lerp(0, image_number, timer_to_index_math);
		break;
	case PS_TUMBLE: case PS_HITSTUN_LAND:
		hurt_img = 5;
		break;
	case PS_FLASHED: case PS_FROZEN: case PS_CRYSTALIZED:
		hurt_img = 1;
		break;
	case PS_BURIED:
		hurt_img = 2;
		break;
}

//sets image_index to hurt_img. this allows us to put all the hurt sprites in one strip
if (state_cat == SC_HITSTUN || state == PS_TUMBLE)
{
	//this will force the player into hurt_img 1, since PS_CRYSTALIZED only works on the initial activation
	//if the character doesn't use small sprites, uncomment the else line
	if (crystalized_damage_remaining > 0) hurt_img = 1;
	//else small_sprites = 0;

	//ranno bubble forces the player into hurt_img 1 too
	if (bubbled) hurt_img = 1;
}
//#endregion

follower_hitboxes()

#define follower_hitboxes()

with (pHitBox) {
    if ("tomoko_owner" in self && player_id == other.id && type == 1) {
        if (instance_exists(tomoko_owner)) {
        	destroyed = false;
            var x_off = 0;
            var y_off = 0;
            with (player_id) {
                x_off = get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_X);
                y_off = get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_Y);
            }
	        x_pos = ((tomoko_owner.x + x_off * tomoko_owner.spr_dir) - player_id.x);
	        y_pos = ((tomoko_owner.y + y_off) - player_id.y);
	        hsp = tomoko_owner.hsp;
	        vsp = tomoko_owner.vsp;
	        spr_dir = tomoko_owner.spr_dir;
	        
	        if (tomoko_owner.hitstop = 1) {
    	       hitbox_timer = min (hitbox_timer + 1, length);
	        }
	    }
    }
}

#define p_get_attack_value(_attack, _window_value)
with (player_id) {
    return get_attack_value(_attack, _window_value)
}

#define p_get_window_value(_attack, _window, _window_value)
with (player_id) {
    return get_window_value(_attack, _window, _window_value)
}

#define p_get_hitbox_value(_attack, _window, _window_value)
with (player_id) {
    return get_hitbox_value(_attack, _window, _window_value)
}   

#define follower_charging_attack()
var result = false;
if (attack == AT_USTRONG || attack == AT_USTRONG_2)
    if (player_id.up_strong_down)
        result = true;
if (attack == AT_DSTRONG || attack == AT_DSTRONG_2)
    if (player_id.down_strong_down)
        result = true;
if (attack == AT_FSTRONG || attack == AT_FSTRONG_2)
    if (player_id.right_strong_down && player_id.spr_dir == 1) || (player_id.left_strong_down && player_id.spr_dir == -1)
        result = true;
if (player_id.strong_down)
    result = true;
if (player_id.smash_charging)
    result = true;
return result;