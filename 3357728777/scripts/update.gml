current_sprite_set = wrath;

if (state == PS_SPAWN || state==PS_RESPAWN){
	wrath_meter = 0
	focused_fury_timer = 0;
	focused_fury = 0;
}

//if (state == PS_IDLE || state == PS_CROUCH || state == PS_WALK || state == PS_WALK_TURN || state == PS_TECH_GROUND || state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD || state == PS_SPAWN) && dspecial_wrath_delay == 0{
	 //--wrath_recharge_delay
//}else{
	//wrath_recharge_delay = 20
//}
//if wrath_recharge_delay < 0{
	//wrath_recharge_delay = 0
//}
//if wrath_recharge_delay == 0{
	//++wrath_meter
//}
if wrath_meter >= 20{
	charged = 1;
	--wrath_visual_delay
}else{
	charged = 0;
	wrath_visual_delay = 30;
}

if wrath_meter < 0{
	wrath_meter = 0
} else if wrath_meter > wrath_meter_max{
	wrath_meter = wrath_meter_max
}
if wrath_meter = wrath_meter_max{
	wrath = 1;
	focused_fury = 1;
}else{
	wrath = 0
	focused_fury_timer = focused_fury_max;
	focused_fury_delay = 30
	wrath_recharge_delay = 30;
	wrath_sound_trigger = 0;
	wrath_sound_timer = 0;
}
if !(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	wrath_cancel = false;
}

if wrath_sound_trigger == 1{
	++wrath_sound_timer
}
if wrath_sound_timer == 1{
	sound_play(asset_get("sfx_ori_dspecial_bash_miss"),false,noone,.4, 0.8);
}

if state == PS_JUMPSQUAT{
	wrath_land = 0;
}

if focused_fury == 1{
	--focused_fury_delay
	if !hitpause && focused_fury_delay <= 0{
	--focused_fury_timer
	wrath_recharge_delay-=1
	}
	charged = 2;
	exclamation_show = true;
}
if focused_fury_timer == focused_fury_max -1{
	wrath_sound_trigger = 1
}
if focused_fury_timer > focused_fury_max{
	focused_fury_timer = focused_fury_max
	focused_fury_delay = 30
}
if focused_fury_timer < 0{
	focused_fury_timer = 0;
	focused_fury = 0;
	charged = 1;
	exclamation_show = false;
	wrath_meter = 20
}


if dspecial_wrath_delay == 1{
	--dspecial_wrath_delay_timer
}

if dspecial_wrath_delay_timer < 0{
	dspecial_wrath_delay_timer = 0;
	dspecial_wrath_delay = 0;
	centipede_prevention = 0;
	if focused_fury == 0{
		wrath_meter -= 8	
	}
	
}
if focused_fury == 1{
	shown_wrath_meter = lerp(shown_wrath_meter, focused_fury_timer, 1.0);
}else{
	shown_wrath_meter = lerp(shown_wrath_meter, wrath_meter, 1.0);
}

if exclamation_show
{
	var maxval = 4
	
	exclamation_frame = min(exclamation_frame+exclamation_speed,maxval);
	if exclamation_frame == maxval
	{
		exclamation_frame = 0;
	}
}



if (attack == AT_FSPECIAL){
	if window == 7{
		wrath_meter = wrath_meter_max;
		focused_fury_timer = focused_fury_max
	}
}



switch(state){
	case PS_IDLE:	
		walk_cont = 0;
	break;
	case PS_DASH_START:
		walk_cont++;
		if (walk_cont == 3 || walk_cont == 7 || walk_cont == 11) {
			step_sound = random_func( 0, 6, true);
			switch (step_sound){
		    	case 1:
		    	sound_play(sound_get("step1"),false,noone,.4);
		    	break;
		    	case 2:
		    	sound_play(sound_get("step2"),false,noone,.4);
		    	break;
		    	case 3:
		    	sound_play(sound_get("step3"),false,noone,.4);
		    	break;
		    	case 4:
		    	sound_play(sound_get("step4"),false,noone,.4);
		    	break;
		    	case 5:
		    	sound_play(sound_get("step5"),false,noone,.4);
		    	break;
		    	case 0:
		    	sound_play(sound_get("step6"),false,noone,.4);
			}
	}
	if (walk_cont == 12) {
		walk_cont = 0;	
	}	
	break;
	case PS_DASH:	
		set_state (PS_IDLE)
	break;
}
if state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND {
	switch (attack) {
			case AT_TAUNT:
			if window == 1 and window_timer == 4 and !hitpause {
				fstrong_sfx = sound_play(sound_get("sfx_deracine_energy_appear"),false,noone,1.0, 0.9)
			}
			if window == 3 and window_timer == 2 and !hitpause {
				sound_stop(fstrong_sfx)
			}
		break;
	}
}
//Base Attack Version
if wrath == 0{
	set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED, 3);
	set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 3);
	set_hitbox_value(AT_JAB, 6, HG_LIFETIME, 0);
	set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 3);
	set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 0);
	set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
	set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 0);
	set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 0);
	set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
	set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
	set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 0);
	//set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 3);
	//set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 0);
	set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
	set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 0);
	set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
	set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
	set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 0);
	set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 0);
	set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
	set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 0);
	set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 3);
	set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 3);
	set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 0);
	set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 0);
	set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 3);
	set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 0);
	set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
	set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 3);
	set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 0);

}
//Full Wrath Version
if wrath == 1{
	set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED, 8);
	set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 0);
	set_hitbox_value(AT_JAB, 6, HG_LIFETIME, 3);
	set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 0);
	set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 3);
	set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 0);
	set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 3);
	set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 3);
	set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
	if shield_down{
		set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
		set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 0);
	}else{
		set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 0);
		set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
	}
	//set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 0);
	//set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 3);
	set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 0);
	set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 3);
	set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 0);
	set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 0);
	set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 3);
	set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 3);
	set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 0);
	set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
	set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 0);
	set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 0);
	set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 3);
	set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 3);
	if shield_down{
		set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 3);
		set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 0);
	}else{
		set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 0);
		set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 3);
	}
	set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
	set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 0);
	set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 3);
	
}
if charged == 0{
	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 0);
	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 0);
	set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 3);
	set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 0);
	set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 3);
	set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 3);
	set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 0);
	set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 0);
}
if charged >= 1{
	if dspecial_wrath_delay == 0{
		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
		set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 0);
		set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 3);	
	}
	set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 0);
	set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 0);
	set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 3);
	set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 3);
}
if fair_charge == 0{
	set_window_value(AT_FAIR, 4, AG_WINDOW_HSPEED, 0);
	set_window_value(AT_FAIR, 4, AG_WINDOW_HSPEED_TYPE, 0);
	if wrath == 0{
		set_hitbox_value(AT_FAIR, 6, HG_LIFETIME, 3);
		set_hitbox_value(AT_FAIR, 7, HG_LIFETIME, 0);
		set_hitbox_value(AT_FAIR, 8, HG_LIFETIME, 0);
	}
	if wrath == 1{
		set_hitbox_value(AT_FAIR, 6, HG_LIFETIME, 0);
		set_hitbox_value(AT_FAIR, 7, HG_LIFETIME, 3);
		set_hitbox_value(AT_FAIR, 8, HG_LIFETIME, 0);
	}
}
if fair_charge == 1{
	set_window_value(AT_FAIR, 4, AG_WINDOW_HSPEED, 6);
	set_window_value(AT_FAIR, 4, AG_WINDOW_HSPEED_TYPE, 2);
	if wrath == 0{
		set_hitbox_value(AT_FAIR, 6, HG_LIFETIME, 3);
		set_hitbox_value(AT_FAIR, 7, HG_LIFETIME, 0);
		set_hitbox_value(AT_FAIR, 8, HG_LIFETIME, 0);
	}
	if wrath == 1{
		set_hitbox_value(AT_FAIR, 6, HG_LIFETIME, 0);
		set_hitbox_value(AT_FAIR, 7, HG_LIFETIME, 3);
		set_hitbox_value(AT_FAIR, 8, HG_LIFETIME, 0);
	}
}
if fair_charge == 2{
	set_window_value(AT_FAIR, 4, AG_WINDOW_HSPEED, 8);
	set_window_value(AT_FAIR, 4, AG_WINDOW_HSPEED_TYPE, 2);
	if wrath == 0{
		set_hitbox_value(AT_FAIR, 6, HG_LIFETIME, 0);
		set_hitbox_value(AT_FAIR, 7, HG_LIFETIME, 3);
		set_hitbox_value(AT_FAIR, 8, HG_LIFETIME, 0);
	}
	if wrath == 1{
		set_hitbox_value(AT_FAIR, 6, HG_LIFETIME, 0);
		set_hitbox_value(AT_FAIR, 7, HG_LIFETIME, 0);
		set_hitbox_value(AT_FAIR, 8, HG_LIFETIME, 3);
	}
}

if (state == PS_CROUCH){
	crouch_cooldown = 40;
	if (!hitpause){
		if (image_index == 0 || image_index == 1 || image_index == 8 || image_index == 9){
			var crouch_detect = true;
		}else{ crouch_detect = false; crouch_check = false;}
		if (crouch_detect == true && crouch_check == false){
			crouch_check = true;
			crouch_tracker++;
			//sound_play(asset_get("mfx_notice"))
			if (crouch_tracker >= crouch_max_patience){
				crouch_tracker = 0;
				crouch_cooldown = 0;
				crouch_check = false;
				set_attack(AT_TAUNT_2);
			}
		}
	}
}
if (crouch_cooldown>0){
	crouch_cooldown--;
}
if (crouch_tracker>0){
	if (crouch_cooldown<=0){
		crouch_tracker = 0;
	}
	if (state_cat != SC_GROUND_NEUTRAL || state == PS_WALK){
		crouch_tracker = 0;
		crouch_cooldown = 0;
	}
}

if state == PS_SPAWN
{
    if (introTimer2 < introAnimFrameLength)
    {
        introTimer2++;
    }
    else
    {
        introTimer2 = 0;
        introTimer++;
        if(introTimer == 1)
        sound_play(asset_get("sfx_kragg_spike"));
        if(introTimer == 2)
        sound_play(sound_get("Hisako_LinkCharge_01"), false, noone, 1.2, 1.0);
        if(introTimer == 5)
        sound_play(sound_get("step7"), false, noone, 1.2, 1.0);
         if(introTimer == 7)
        sound_play(asset_get("sfx_kragg_roll_turn"));
        if(introTimer == 8)
        sound_play(sound_get("Hisako_Vacuum_LT_01"), false, noone, 1.6, 1.0);
    }
}

#region // cringe ass hfx stuff
with hit_fx_obj {
	if player_id != other continue;
	
	if hit_fx == other.hfx_feather_small or hit_fx == other.hfx_feather_large or hit_fx == other.hfx_blood_small or hit_fx == other.hfx_blood_large or hit_fx == other.hfx_blood_massive or hit_fx == other.hfx_curse_small or hit_fx == other.hfx_curse_large{
		depth = player_id.depth+1;
	}
	
}
#endregion