//Shader changing
if (get_player_color(player) == 16 || get_player_color(player) == 17) {
	alt_glow_timer ++;
	init_shader();
}

//Floating
if (down_pressed){
	float_cancel_buffer = float_cancel_buffer_max;
}

if (float_cancel_buffer > 0) {
	float_cancel_buffer--;
}


if (state == PS_CROUCH && jump_pressed && (down_down || float_cancel_buffer > 0)){
	if (!free){
		y = y - 2;
		float_cancel = true;
	}
}

var air = (state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_IDLE_AIR);

if (floating) {
    grav = float_gravity;
    hsp = clamp(hsp, -float_move_speed, float_move_speed)
    vsp = min(vsp, float_max_fall);
    
    moved_up = 0;
    can_fast_fall = 0;
    
    if (get_gameplay_time() % 8 == 0) {
        var rand_x = -32 + random_func(0, 64, true);
        spawn_base_dust(round(x + rand_x), round(y), "walk", spr_dir);
    }

    if (!((jump_down || (up_down && can_tap_jump())) && (state == PS_ATTACK_AIR || air)) && float_timer <= float_max_time - 9) {
    	can_fast_fall = 1;
		floating = -1;
	}
	if (state == PS_ATTACK_AIR && 
		(attack == AT_NSPECIAL || 
		attack == AT_NSPECIAL_2 || 
		attack == AT_FSPECIAL ||
		attack == AT_USPECIAL ||
		attack == AT_DSPECIAL))
	{
		can_fast_fall = 1;
		floating = -1;
	}
	
	if (float_timer == float_max_time) {
		vsp = float_cancel ? short_hop_speed : float_initial_vsp;
	}
	
	if (float_timer > 0){
    	can_fast_fall = 0;
    	do_a_fast_fall = 0;
        float_timer--;
        
    }else{
    	can_fast_fall = 1;
        floating = -1;
    }
}
else if (((state == PS_IDLE_AIR || (air && vsp > 0))
	&& (jump_down || up_down && can_tap_jump()) && floating == 0)
	|| ((state == PS_IDLE_AIR || (air)) && (jump_down && ((down_down || float_cancel_buffer > 0) && floating == 0)))
    && (jump_down || (jump_down && (down_down || float_cancel_buffer > 0)))
    && floating == 0) {
    floating = 1;
    float_timer = float_max_time;
    float_anim_timer = 0;
    
    if (state == PS_DOUBLE_JUMP && state_timer < 9){
    	djumps = 0;
	}
    
    sound_play(sound_get("sfx_float"))
    spawn_base_dust(round(x), round(y), "djump", spr_dir);
    
}


if(state == PS_IDLE || state == PS_CROUCH || state == PS_JUMPSQUAT || state == PS_WALK || state == PS_DASH){
    floating = 0;
    float_cancel = 0;
    float_restore = 0;
}

with (pHitBox) {
    //Follower
    if ("follower_owner" in self && player_id == other.id && type == 1) {
        if (instance_exists(follower_owner)) {	
        	destroyed = false;
            var x_off = 0;
            var y_off = 0;
            with (player_id) {
                x_off = get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_X);
                y_off = get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_Y);
            }
            x_pos = ((follower_owner.x + x_off * follower_owner.spr_dir) - player_id.x);
            y_pos = ((follower_owner.y + y_off) - player_id.y);
            hsp = follower_owner.hsp;
            vsp = follower_owner.vsp;
            spr_dir = follower_owner.spr_dir;
            
            if ((player_id.has_hit || player_id.has_hit_player) && instance_exists(player_id.my_hitboxID) && player_id.my_hitboxID == id) {
                follower_owner.has_hit_player = true;
                hitstop = player_id.hitstop;
                player_id.hitpause = false;
                player_id.hitstop = 0;
                player_id.hitstop_full = 0;
                player_id.has_hit = false;
                player_id.has_hit_player = false;
                player_id.hsp = player_id.old_hsp;
                player_id.vsp = player_id.old_vsp;
                
                if (attack == AT_FSPECIAL && hbox_num == 1) {
                	with (follower_owner) {
                		hsp *= -1;
                		vsp = -6;
                	}
                }
            }
            
            if (follower_owner.hitpause > 1 && follower_owner.has_hit_player) {
    	       hitbox_timer = max (hitbox_timer - 1, 0);
            }
            
        }
    }
}

if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) {
	dspecial_counter_active = false;
}

with (hit_fx_obj) {
    if (player == other.player && hit_fx == other.hfx_log) {
        if (step_timer > 40) {
            visible = step_timer % 8 > 4;
        }
    }
}

with (oPlayer) {
	if (id == other.id) continue;
	if (("mamizou_trans" in self) && mamizou_trans) {
		grav = 0.3;
	    if (mamizou_trans_damage >= 30
	    || (!free || place_meeting(x + hsp, y, asset_get("par_block")))
	    || hitstun <= 0) && !hitpause {
	    	mamizou_trans = false;
	    	mamizou_trans_damage = 0;
	    	draw_y = mamizou_draw_y;
	    	with (other) {
		        var fx = spawn_hit_fx(round(other.x), round(other.y - 48), hfx_leaf_heavy)
		        fx.depth = other.depth - 3;
				sound_play(sound_get("sfx_kick"));
	    		create_hitbox(AT_EXTRA_1, 1, round(other.x), round(other.y));
	    	}
	    }
	}
	
	if (("mamizou_mark_id" in self) && mamizou_mark_id == other.id) {
		if (state == PS_RESPAWN || state == PS_DEAD) {
			mamizou_mark_id = noone;
		}
	}
}

if(taunt_down && shield_down)
	set_victory_portrait(sprite_get("portrait2"));
else
	set_victory_portrait(sprite_get("portrait"));


#define spawn_base_dust
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
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;