///


if get_gameplay_time() == 2 {
	spawn_hit_fx(x - 30*spr_dir,y - 20,box)
	sound_play(sound_get("charge2"),false,noone,1,1)
	sound_play(sound_get("gunload"),false,noone,1,1)
}

if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
	attacking = true 
} else {
	 attacking = false
}




if (state_cat == SC_HITSTUN && hit_player_obj != self) {
	move_cooldown[AT_USPECIAL] = 0
	move_cooldown[AT_FSPECIAL] = 0
	wjcap = 0
}


if !free or state == PS_WALL_JUMP{
	move_cooldown[AT_USPECIAL] = 0
	move_cooldown[AT_FSPECIAL] = 0
	if state == PS_WALL_JUMP {
		wjcap = 999
	}
	if !free {
		wjcap = 0
	}
}

if !hitpause {
	shsp = (shsp + hsp)/2
    svsp = (svsp + vsp)/2
}

if wjcap > 0 {
	has_walljump = false
}

if state == PS_CROUCH && state_timer == 1 {
	//sound_stop(sound_get("squeaky_short"))
	//sound_play(sound_get("squeaky_short"),false,noone,0.7,0.9)
}

if ((state == PS_DASH_START or state == PS_DASH or state == PS_DASH_STOP or state == PS_DASH_TURN) && taunt_pressed) or (visible && free && !attacking && can_attack && taunt_pressed) {
	    		set_attack(AT_TAUNT)
}

if redP > 300 && redP < 600{
	redP = 600
	sound_play(sound_get("charge2"),false,noone,1,1.3)
	sound_play(sound_get("gunload"),false,noone,1,1)
	spawn_hit_fx(x,y - 30,305)
}

if !hitpause {
   Powx += floor(((x-30*spr_dir)-Powx)/5)
   Powy += floor((y-56-Powy)/5)
}

if redP < 0 {
	redP = 0
}

if gun == 0 {
with oPlayer {
if state_cat == SC_HITSTUN && hit_player_obj == other && hit_player_obj != self{
	
	if other.redP < 300 && get_gameplay_time() % 3 == 0 && hitpause {
		with hit_player_obj  {
		if hitpause {	
		set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_HSPEED, 6 - random_func(1,12,true));
        set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_VSPEED, 3 - random_func(2,12,true));
		create_hitbox(AT_DSPECIAL,3,other.x, other.y)
		}
		}
	} 
	
}

}

if redP < 100 {
	move_cooldown[AT_NSPECIAL] = 2
}

} else {
	redP = 0
}

if move_cooldown[AT_EXTRA_3] > 0 && hit_player_obj != self {
	
	set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_HSPEED, 6 - random_func(1,12,true));
    set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_VSPEED, 3 - random_func(2,12,true));
        
		create_hitbox(AT_DSPECIAL,3,hit_player_obj.x, hit_player_obj.y)
}