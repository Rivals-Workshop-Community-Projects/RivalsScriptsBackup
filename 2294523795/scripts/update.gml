///
if !instance_exists(hit_player_obj){

hit_player_obj = self

}

if move_cooldown[AT_EXTRA_1] > 20 && move_cooldown[AT_NSPECIAL] = 0 {
	sound_play(sound_get("DF"));
	move_cooldown[AT_EXTRA_1] = 0
}

if !hitpause {
	shsp = (shsp + hsp)/2
    svsp = (svsp + vsp)/2
}

if hit_player_obj.hitstop = 0 {
	move_cooldown[AT_EXTRA_1] = 0
}

if get_gameplay_time() < 64 {
	visible = false
	if get_gameplay_time() % 6 == 0 {
		spawn_hit_fx (x, y - 200 + get_gameplay_time()*3 , 305)
		sound_play(asset_get("sfx_clairen_tip_loop"));
	}
}

if get_gameplay_time() == 64 {
		spawn_hit_fx (x, y - 30, 304)
	sound_play(asset_get("sfx_holy_lightning")); 
	sound_play(asset_get("sfx_clairen_hit_strong"))	
	shake_camera (3,6)
	visible = true
	hsp = 3*spr_dir
	set_attack(AT_FSPECIAL)
            sound_play( asset_get("sfx_blow_medium3"));
            window = 7
            window_timer = 0
}

if get_gameplay_time() == 89 {
	set_attack (AT_TAUNT)
	window = 1
	window_timer = 0

}

if state_cat == SC_HITSTUN && specialing = 1 {
    scharge = 0
    specialing = 0
}


//if state == PS_JUMPSQUAT && down_down && !attack_down && !special_down {
//	clear_button_buffer( PC_JUMP_PRESSED );
//	set_state(PS_IDLE_AIR)
//   sound_play(asset_get("sfx_bird_sidespecial_start"),false,noone,1,1.2);
//   spawn_base_dust(x,y,"dash_start",spr_dir)
//   if !left_down && !right_down {
//   	vsp = -5
//   	hsp = 9*spr_dir
//   }
//   
//   if left_down && !right_down {
//   	vsp = -5
//   	hsp = -9
//   	spr_dir = -1
//   }
//   
//   if !left_down && right_down {
//   	vsp = -5
//   	hsp = 9
//   	spr_dir = 1
//   }
//   
//}

if state_cat != SC_HITSTUN && state != PS_PRATFALL && state != PS_PRATLAND {

//print(electricwindgodfist)

if (state == PS_CROUCH && state_timer > 15) or (state != PS_CROUCH && state != PS_ATTACK_GROUND && state_timer > 15) {
	electricwindgodfist = 0
}	

if state != PS_CROUCH && electricwindgodfist == 0 && (left_down or right_down) {
	electricwindgodfist = 1
}

if down_down && electricwindgodfist = 1 {
	electricwindgodfist = 2
}

if (left_pressed or right_pressed) && electricwindgodfist = 2{
	electricwindgodfist = 3
}


}

if scharge >= 180 {
	scharge = 180
	
	if overcharged = 0 {
		spawn_hit_fx (x,y-30,304)
		shake_camera (5,10)
		sound_play(sound_get("RI"))
		overcharged = 1
	}
	
	if get_gameplay_time() % 60 == 0 {
		take_damage (player, -1, 1)
	}
	
	if get_gameplay_time() % 2 == 1 {
	spawn_hit_fx( x + 40 - random_func(5, 80, true) - (10*spr_dir), y - 20 - random_func(4, 80, true) , esp2 )
	}
}

if scharge < 180 {
	overcharged = 0
}

if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
	attacking = true
} else {
	attacking = false
	specialing = 0
}


if !free or state_cat == SC_HITSTUN {
	move_cooldown[AT_USPECIAL] = 0
	move_cooldown[AT_FSPECIAL] = 0
	djumped = 0 
}


if (state == PS_WALL_JUMP){
move_cooldown[AT_USPECIAL] = 0
move_cooldown[AT_FSPECIAL] = 0
djumped = 0 
}

if (state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD){
   
if state_timer == 1 {
    	sound_play(asset_get("sfx_quick_dodge"));
}
	 
	 if state_timer < 13{
	     hsp = -0.5 * spr_dir
	 }
	 
	 if state_timer >= 13 and state_timer < 15 {
	     hsp = -50 * spr_dir
	 }
	 if state_timer >= 4 and state_timer < 18 {
	     draw_indicator = false
	 }
	  
	 if state_timer > 18 {
	     hsp = 0
	     draw_indicator = true
	 }
	 
}


if (can_jump_capped && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) {
	if state == PS_DOUBLE_JUMP && state_timer == 0 {
		var max_djump_hsp = 7;
		hsp = clamp(hsp,-max_djump_hsp,max_djump_hsp);
		can_jump_capped = false;
	} else {
		can_jump_capped = false;
	}
}

#define spawn_base_dust(x, y, name, dir)
var dlen;
var dfx;
var dfg;
var dust_color = 0;

switch (name) {
    default:
    case "dash_start":
        dlen = 21;
        dfx = 3;
        dfg = 2626;
    break;
    case "dash":
        dlen = 16;
        dfx = 4;
        dfg = 2656;
    break;
    case "jump":
        dlen = 12;
        dfx = 11;
        dfg = 2646;
    break;
    case "doublejump":
    case "djump":
        dlen = 21;
        dfx = 2;
        dfg = 2624;
    break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx;
if dfg != -1 newdust.fg_sprite = dfg;
newdust.dust_color = dust_color;
newdust.spr_dir = dir;