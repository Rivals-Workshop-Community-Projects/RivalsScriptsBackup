// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);

if(!free || free && (state == PS_WALL_JUMP || state == PS_WALL_TECH || state == PS_HITSTUN)){
    move_cooldown[AT_USPECIAL] = 0;
    fspecial_stall = 0;
    can_uspecial = false;
}

if(dattack_projectile_cooldown > 0)dattack_projectile_cooldown -= 1;

if(free && /*floating &&*/ (state == PS_IDLE_AIR || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP) && taunt_pressed){
	if(playercount > 1){
		set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("ftilt"));
		set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));
	}else{
        set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("gay"));
    }
	set_attack(AT_TAUNT_2);
}

switch(state){
    case PS_SPAWN:
        if(state_timer == 5)sound_play(sound_get("Hotel_Mario_Intro"));
    break;
    case PS_PARRY:
		if(state_timer == 1)PlayVoiceClip("you know what they say2");
	break;
	case PS_ROLL_BACKWARD:case PS_ROLL_FORWARD:case PS_TECH_BACKWARD:case PS_TECH_FORWARD:
		if(random_func(0,4,true) == 2 && state_timer == 1)PlayVoiceClip("be careful");
	break;
}

if(instance_exists(pig_hb)){
	with(asset_get("oPlayer")){
		if(pig_hit_cooldown > 0){
			pig_hit_cooldown--;
		}else if(player != other.pig_hb.lastplayerhit){
			with(other.pig_hb){
				can_hit[other.player] = true;	
			}
		}
	}
}

if(instance_exists(meatball)){
	with(asset_get("oPlayer")){
		if(meatball_hit_cooldown > 0){
			meatball_hit_cooldown--;
		}else{
			with(other.meatball){
				can_hit[other.player] = true;	
			}
		}
	}
}

if((state != PS_RESPAWN && attack != AT_TAUNT || attack == AT_TAUNT && vsp != 0) && respawnplat == 1){
	respawnplat = 0;
}

if(instance_exists(nspec_cloud)){
	with(oPlayer){
		if(place_meeting(x,y,other.nspec_cloud)){
			grav = 0;
			if(!can_uspecial && move_cooldown[AT_USPECIAL] != 0){
				move_cooldown[AT_USPECIAL] = 0;
				can_uspecial = true;
			}
		}
	}
}
with(oPlayer){
	if(can_uspecial){
		if(!free || free && (state == PS_WALL_JUMP || state == PS_WALL_TECH || state == PS_HITSTUN)){
		    can_uspecial = false;
		}
	}
}

if(runesUpdated || get_match_setting(SET_RUNES)){
	if(runeB)set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 240);
}

playercount = 0;
with(oPlayer) if(is_player_on(player) && state != PS_DEAD && state != PS_RESPAWN) other.playercount++;

if(!instance_exists(pig_hb) && move_cooldown[AT_UAIR] < 3) move_cooldown[AT_UAIR] = 0;
else if(instance_exists(pig_hb) && move_cooldown[AT_UAIR] < 3)move_cooldown[AT_UAIR] = 2;

#define PlayVoiceClip
/// PlayVoiceClip(name,?volume)
//Plays SFX
if(!muted && !hitpause){
    sound_stop(voice)
    voice = sound_play(sound_get(argument[0]/* + (alt==21?" df":"")*/),false,noone,argument_count>1?argument[1]:1);
}