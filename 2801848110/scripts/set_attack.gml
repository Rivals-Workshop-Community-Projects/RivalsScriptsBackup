//

if attack == AT_USPECIAL && move_cooldown[AT_NSPECIAL_2] == 0  {
	attack = AT_NSPECIAL_2
}

if attack == AT_TAUNT {
   tauntnum += 1
    if !up_down and !down_down {
        pitch = 0
        set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
    
        set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
        set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 1);
        set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 1);
        set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 1);
        set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 1);
        set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAME_START, 1);
        set_window_value(AT_TAUNT, 8, AG_WINDOW_ANIM_FRAME_START, 1);
        set_window_value(AT_TAUNT, 9, AG_WINDOW_ANIM_FRAME_START, 1);
    } else if up_down {
        pitch = 0.5
        
        sound_play(asset_get("sfx_diamond_collect"))
        set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 3);
        
        set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
        set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
        set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 4);
        set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 4);
        set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 4);
        set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAME_START, 4);
        set_window_value(AT_TAUNT, 8, AG_WINDOW_ANIM_FRAME_START, 4);
        set_window_value(AT_TAUNT, 9, AG_WINDOW_ANIM_FRAME_START, 4);
     
    } else if down_down {
        pitch = -0.5
        
        sound_play(asset_get("sfx_ori_bash_use"))
        set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 6);
     
        set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 7);
        set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 7);
        set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 7);
        set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 7);
        set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 7);
        set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAME_START, 7);
        set_window_value(AT_TAUNT, 8, AG_WINDOW_ANIM_FRAME_START, 7);
        set_window_value(AT_TAUNT, 9, AG_WINDOW_ANIM_FRAME_START, 7);        
        
    }
     sound_play(asset_get("sfx_may_arc_talk"),false,noone,1,1.8 + pitch)
}

if attack != AT_USPECIAL && attack != AT_NSPECIAL && attack != AT_FSPECIAL && attack != AT_DSPECIAL && attack != AT_DTILT
&& attack != AT_FSTRONG && attack != AT_DSTRONG && attack != AT_USTRONG {
	if !free {
		set_attack_value(attack, AG_CATEGORY, 0);
		set_attack_value(attack, AG_OFF_LEDGE, 0);
	} else {
		set_attack_value(attack, AG_CATEGORY, 1);
		set_attack_value(attack, AG_OFF_LEDGE, 0);
	}
}