//USER EVENT 2 - Counter
// T H A N K   T H E
//  S M O L   O N E

//possibly could be moved back in attack_update idk 

#macro SUCCESS_WINDOW 4

#macro HITSTOP_AMOUNT 16

//Detect hitboxes. (only those that could have damaged you)
var team_attack = get_match_setting(SET_TEAMATTACK);

var best_damage = 0;
var best_knockback = 0;
var best_scaling = 0;

with (pHitBox)
{
	if ( (hit_priority > 0) && (player != other.player || can_hit_self)
	  && (other.can_be_hit[player] == 0) && (can_hit[other.player])
	  && (groundedness == 0 || (other.free ? 2 : 1) == groundedness)
	  && (get_player_team(other.player) != get_player_team(player) || team_attack)
	  && place_meeting(x, y, other.hurtboxID) )
	{
		if (type == 1)
		{
		    with (orig_player_id) { do_hitpause(HITSTOP_AMOUNT); }
		}
		
		if (damage > best_damage)      best_damage = damage;
		if (kb_value > best_knockback) best_knockback = kb_value;
		if (kb_scale > best_scaling)   best_scaling = kb_scale;
	}
}

if (best_damage > 0)
{
	//counter success
	window = SUCCESS_WINDOW;
	window_timer = 0;
	invincible = true;
	invince_time = unown_n_invincibility;
	// Shockwave
	sound_stop(sound_get("rse_detect"));
	sound_play(asset_get("mfx_timertick_holy2"));
	create_hitbox(UNOWN_ATK.N, 2, 0, -unown_eye_center_offset);
	do_hitpause(HITSTOP_AMOUNT);
	
	//apply damage buff to N
	best_damage *= unown_n_damage_mult;
    best_knockback *= unown_n_kb_mult;
    best_scaling *= unown_n_kb_mult;
    //print(string(best_damage) + " k" + string(best_knockback) + " s" + string(best_scaling))
    
	set_hitbox_value(UNOWN_ATK.N, 1, HG_DAMAGE, floor(best_damage));
	set_hitbox_value(UNOWN_ATK.N, 1, HG_BASE_KNOCKBACK, best_knockback);
	set_hitbox_value(UNOWN_ATK.N, 1, HG_KNOCKBACK_SCALING, best_scaling);
}

//==================================================================
#define do_hitpause(hitpause_length)
{
    //Do not override previous old_hsp values if already in hitpause
    if (!hitpause)
    {
        old_hsp = hsp;
        old_vsp = vsp;
        hitpause = true;
    }
    hitstop = hitpause_length;
    hitstop_full = hitpause_length;
}
