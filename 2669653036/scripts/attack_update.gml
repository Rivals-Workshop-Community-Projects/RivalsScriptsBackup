//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}

if (attack == AT_NSPECIAL) {
	if (window == 2 && window_timer == 1 && hitpause == false) {
		//instance_create(x, y-32, "obj_article1");
		//create_hitbox( AT_NSPECIAL, 2, obj_article1.x, obj_article1.y );
	}
}
//create_hitbox( AT_NSPECIAL, 1, obj_article1.x, obj_article1.y );
// per-attack logic

//attack_update.gml
//if an article doesn't exist yet, let the player create an article with dspecial.
if (!instance_exists(fireball_article)) {
if (attack == AT_NSPECIAL) {
	if (window == 2 && window_timer == 1 && hitpause == false) {
		if (spr_dir == 1) {
			instance_create(x+48, y-16, "obj_article1");
		} else
			instance_create(x-48, y-16, "obj_article1");
		}
		//create_hitbox( AT_NSPECIAL, 2, obj_article1.x, obj_article1.y );
	}
}

//if an article exists, make the article move upwards with uspecial.

if (attack == AT_DSPECIAL && window == 2 ) with (obj_article1) {
	if (player_id != other.id) 
		continue; //skip this article if the ids do not match.
	instance_destroy( pHitBox );
	explodeX = obj_article1.x;
	explodeY = obj_article1.y;
	var new_article = instance_create(explodeX, explodeY, "obj_article2");
	new_article.player_id = player_id;
	instance_destroy(obj_article1);
}	


switch(attack){
	
	// give your moves some "pop" by spawning dust during them!
	
	case AT_JAB:
		was_parried = false; // easy method for single-hit jabs
	case AT_FTILT:
	case AT_DTILT:
		if window == 1 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash", spr_dir]);
		}
		break;
	case AT_UTILT:
		if window == 1 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash", -spr_dir]);
		}
		break;
	case AT_FSTRONG:
		if window == 2 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash_start", -spr_dir]);
		}
		break;
	case AT_USTRONG:
		if window == 1 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash_start", -spr_dir]);
		}
		break;
		
//might reimpliment this part? keeps Fspecial going if held down

	
	case AT_FSPECIAL:
		can_move = false;
		can_fast_fall = false;
		if window == 3 && !special_down {
			set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 0);
		}else{
			set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 9);
		}
		
		break;

	case AT_DAIR:
		if (window == 2 && has_hit){
			window = 4
		}
		can_fast_fall = false;
		break;
	
/*	
	case AT_FSPECIAL:
		can_move = false;
		can_fast_fall = false;
		switch(window){
			case 1:
				hsp *= 0.5;
				vsp *= 0.5;
				if window_timer == phone_window_end{
					hsp = 35 * spr_dir;
				}
				break;
			case 2:
				vsp = 0;
				can_wall_jump = true;
				if (special_pressed){
					window = 3;
					window_timer = 0;
					destroy_hitboxes();
				}
				break;
			case 3:
				hsp *= 0.5;
				// vsp *= 0.5;
				can_wall_jump = true;
				break;
		}
		break;
	
	

	case AT_USPECIAL:
		can_move = false;
		can_fast_fall = false;
		can_wall_jump = true;
		fall_through = true;
		switch(window){
			case 1: // startup
				hsp = 0;
				vsp = 0;
				if window_timer == phone_window_end{
					vsp = -5;
				}
				break;
			case 2: // flight
				if (!joy_pad_idle){
					hsp += lengthdir_x(1, joy_dir);
					vsp += lengthdir_y(1, joy_dir);
				} else {
					hsp *= .6;
					vsp *= .6;
				}
				var fly_dir = point_direction(0,0,hsp,vsp);
				var fly_dist = point_distance(0,0,hsp,vsp);
				var max_speed = 10; // 12
				if (fly_dist > max_speed){
					hsp = lengthdir_x(max_speed, fly_dir);
					vsp = lengthdir_y(max_speed, fly_dir);
				}
				break;
			case 3: // atk startup
			case 4: // atk active
			case 5: // endlag
				hsp = 0;
				vsp = 0;
				break;
		}
		break;

	
	
	case AT_DSPECIAL:
		if (!hitpause && !was_parried && has_hit){
			can_jump = true;
		}
		can_fast_fall = false;
		can_move = false;
		break;
	
	

	case AT_TAUNT:
		if window_timer == 1{
			clear_button_buffer(PC_SHIELD_PRESSED);
		}
		if shield_pressed && window == 1 && window_timer < 16{
			attack_end();
			set_attack(AT_TAUNT_2);
		}
		break;
	
	
	
	case AT_TAUNT_2:
		if !(shield_down || taunt_down){
			attack_end();
			set_state(PS_IDLE);
		}
		if window_timer == phone_window_end - 32{
			spawn_hit_fx(x + 16 * spr_dir, y - 44, 113);
			sound_play(asset_get("mfx_star"));
		}
		if window_timer == phone_window_end - 4{
			spawn_hit_fx(x, y - 32, 143);
		}
		break;
*/
}

#define spawn_base_dust // written by supersonic
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
	default: 
	case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
	case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
	case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
	case "doublejump": 
	case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
	case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
	case "land": dlen = 24; dfx = 0; dfg = 2620; break;
	case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
	case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
	case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;


