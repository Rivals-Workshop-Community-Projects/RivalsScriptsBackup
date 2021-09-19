//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (state_timer == 1)
    jet_used = 0;

if (attack == AT_NSPECIAL){
    if(state_timer == 1)
        {if(vsp > -2 && free) vsp = -2;}
    move_cooldown[AT_NSPECIAL] = 30;
    if(window == 1)
    {
        if(special_down && jet_charge)
            set_num_hitboxes(AT_NSPECIAL, 3);
        else
            reset_num_hitboxes(AT_NSPECIAL);
    }
    if(window == 2 && get_num_hitboxes(AT_NSPECIAL) == 3 && jet_charge)
    {
        white_flash_timer = 10;
        jet_charge = false;
    }
}

if (attack == AT_FSPECIAL){
    can_fast_fall = false;
    if(state_timer == 1)
    {
        if(fspec_used)
        {
            jet_charge = false;
            white_flash_timer = 10;
        }
        else
            fspec_used = true; 
    }
    if(window == 1 && window_timer == 15 && !hitpause)
        spawn_hit_fx( x, y, fspec_hitfx);
    if (window == 2){
        if (has_hit && !hitpause){
            vsp = -5;
            hsp = spr_dir;
            window = 3;
            window_timer = 0;
            destroy_hitboxes();
        }
    }
    if(window != 1)
        can_wall_jump = true;
}

if(attack == AT_USPECIAL)
{
    can_fast_fall = false;
    if(state_timer == 1)
        reset_attack_value(AT_USPECIAL, AG_NUM_WINDOWS);

    if(window != 1)
        can_wall_jump = true;
    else if(window_timer == 12)
        fx = spawn_hit_fx( x, y, uspec_hitfx);
    if(special_down && jet_charge && (window == 2 && window_timer > 6 || window == 3 && window_timer < 8))
    {
        jet_charge = false;
        white_flash_timer = 10;
        window = 4
        window_timer = 0;
        set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 6);
    }
    if(window == 4 && window_timer == 14)
        spawn_hit_fx( x, y-10, uspec_burst_hitfx);
}
if (attack == AT_DSPECIAL_AIR)
{
    hurtboxID.sprite_index = sprite_get("dspecial_air_hurt");
    if(window < 4)
        set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 1);
    else
        set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
    
    if (window >= 4 && instance_exists(grabbed_player_obj)) {
        
        //first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
        if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
        else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

        else {
            grabbed_player_obj.spr_dir = spr_dir;
            grabbed_player_obj.hitstop = 2;
            grabbed_player_obj.hitpause = true;
            
            if (window_timer <= 1) {
                grabbed_player_relative_x = grabbed_player_obj.x - x;
                grabbed_player_relative_y = grabbed_player_obj.y - y;
            }
            
            //on the first window, pull the opponent into the grab.
            if (window == 4) { 
                var pull_to_x = 40 * spr_dir;
                var pull_to_y = -20;
                
                var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
                grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
                grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
            }
            if (window == 5 || window == 6) { 
                var pull_to_x = 0 * spr_dir;
                var pull_to_y = -40;
                
                var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
                grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
                grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
            }
            if (window == 7 && window_timer == 1) { 
                sound_play(sound_get("sour_sword"))
                grabbed_player_obj = noone; 
                grabbed_player_relative_x = 0;
                grabbed_player_relative_y = 0;
            }
        }
    }
}
if (attack == AT_DSPECIAL) {
	//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
        reset_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS);
        reset_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS);
    }
    if(free)
        set_attack(AT_DSPECIAL_AIR);
    
    if (window >= 4 && instance_exists(grabbed_player_obj)) {
        
        //first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
        if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
        else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

        else {
            grabbed_player_obj.spr_dir = spr_dir;
            grabbed_player_obj.hitstop = 2;
            grabbed_player_obj.hitpause = true;
            
            if (window_timer <= 1) {
                grabbed_player_relative_x = grabbed_player_obj.x - x;
                grabbed_player_relative_y = grabbed_player_obj.y - y;
            }
            
            //on the first window, pull the opponent into the grab.
            if (window == 4) { 
                var pull_to_x = 70 * spr_dir;
                var pull_to_y = -50;
                
                var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
                grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
                grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
            }
            if (window == 5) { 
                if(window_timer == 1)
                {
                    fx = spawn_hit_fx( x, y, dspec_flame);
                    fx.depth = -99;
                }
                var pull_to_x = 50 * spr_dir;
                var pull_to_y = -40;
                
                var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
                grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
                grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
            }
            if (window == 6) { 
                grabbed_player_obj = noone; 
                grabbed_player_relative_x = 0;
                grabbed_player_relative_y = 0;
            }
        }
    }
}

if(attack == AT_DAIR)
{
    if(window == 3 && window_timer > 10)
        iasa_script();

    can_fast_fall = false;
}

if(attack == AT_DSTRONG)
{
    if(window == 2)
    {
        if(window_timer == 3)
            sound_play(sound_get("dagger_swoosh2"))
    }
}

if(attack == AT_FSTRONG)
{
    if(window == 2)
    {
        if(window_timer == 12)
            sound_play(sound_get("dagger_swing3"))
        if(window_timer == 20)
            sound_play(sound_get("dagger_swing2"))
    }
}

if(attack == AT_USTRONG)
{
    if(window == 2)
    {
        hud_offset = 60;
        if(window_timer == 2)
        {
            sound_play(asset_get("sfx_forsburn_combust"));
        }
        if(window_timer == 5 && !hitpause)
        {
            ustrong_fx = spawn_hit_fx( x, y, ustrong_hitfx);
            ustrong_fx.depth = -99;
        }
        if(window_timer > 5 && window_timer < 8 && !has_hit)
            ustrong_fx.x = x;
    }
}

if(attack == AT_FTILT)
{
    if(state_timer == 1)
        reset_attack_value(AT_FTILT, AG_NUM_WINDOWS);
    if(window == 6 && window_timer == 12)
        spr_dir = -spr_dir;
}
if(attack == AT_TAUNT)
{
    if(window == 1 && window_timer == 16)
        sound_play(sound_get("dagger_swing3"))
    if(taunt_down && window == 4 && window_timer <= 3)
        window_timer --;
}

//Jet Gimmick
if(window == 1 && window_timer == 6 && (attack_down || right_strong_down || left_strong_down || up_strong_down || down_strong_down) && jet_charge &&
(attack != AT_FSTRONG && attack != AT_DSTRONG && attack != AT_USTRONG &&
attack != AT_USPECIAL && attack != AT_DSPECIAL &&  attack != AT_DSPECIAL_AIR &&
attack != AT_FSPECIAL &&  attack != AT_NSPECIAL &&  attack != AT_JAB &&  attack != AT_NAIR))
{
    jet_charge = false;
    jet_used = 1;
    white_flash_timer = 10;
    hitpause = true;
}
//depending on attack.
switch(attack)
{
    case AT_DTILT:
        if(jet_used == 1)
        {
            hsp += 6*spr_dir;
            old_hsp = hsp;
            old_vsp = vsp;
            hitstop = 2;
            jet_used ++;
        }
        if (jet_used == 2 && !hitpause)
        {  
            sound_play(asset_get("sfx_boss_fireball"));
            spawn_hit_fx(x, y-30, burst_flame);
            jet_used = 0;
        }
        break;
    case AT_FTILT:
        if(jet_used == 1)
        {
            hsp += 6*spr_dir;
            old_hsp = hsp;
            old_vsp = vsp;
            hitstop = 2;
            jet_used ++;
        }
        if (jet_used == 2 && !hitpause)
        {  
            sound_play(asset_get("sfx_boss_fireball"));
            spawn_hit_fx(x, y-40, burst_flame);
            jet_used = 0;
        }
        break;
    case AT_BAIR:
        if(jet_used == 1)
        {
            hsp = 8*-spr_dir;
            vsp -= 4;
            old_hsp = hsp;
            old_vsp = vsp;
            hitstop = 2;
            jet_used ++;
        }
        if (jet_used == 2 && window_timer == 10 && !hitpause)
        {  
            sound_play(asset_get("sfx_boss_fireball"));
            fx = spawn_hit_fx(x, y-40, burst_flame);
            fx.spr_dir = -spr_dir;
            jet_used = 0;
        }
        break;
    case AT_FAIR:
        if(jet_used == 1)
        {
            hsp = 8*spr_dir;
            vsp -= 4;
            old_hsp = hsp;
            old_vsp = vsp;
            hitstop = 2;
            jet_used ++;
        }
        if (jet_used == 2 && window_timer == 9 && !hitpause)
        {  
            sound_play(asset_get("sfx_boss_fireball"));
            fx = spawn_hit_fx(x, y-40, burst_flame);
            jet_used = 0;
        }
        break;
    case AT_DAIR:
        if(jet_used == 0)
        {
            reset_hitbox_value(AT_DAIR, 1, HG_LIFETIME);
            reset_attack_value(AT_DAIR, AG_LANDING_LAG);
            reset_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH);
        }
        if(jet_used == 1)
        {
            old_hsp = hsp;
            old_vsp = vsp;
            hitstop = 5;
            jet_used ++;
            set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 34);
            set_attack_value(AT_DAIR, AG_LANDING_LAG, 20);
            set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 24);
        }
        if (jet_used == 2 && window_timer == 10 && !hitpause)
        {  
            hsp += 2*spr_dir;
            vsp += 2;
            sound_play(asset_get("sfx_boss_fireball"));
            fx = spawn_hit_fx(x, y-60, burst_flame);
            fx.draw_angle -= 45*spr_dir;
            jet_used = 3;
        }
        break;
    case AT_UAIR:
        if(jet_used == 1)
        {
            vsp = -10;
            old_hsp = hsp;
            old_vsp = vsp;
            hitstop = 2;
            jet_used ++;
        }
        if (jet_used == 2 && window_timer == 7 && !hitpause)
        {  
            sound_play(asset_get("sfx_boss_fireball"));
            fx = spawn_hit_fx(x+20*spr_dir, y-40, burst_flame);
            fx.draw_angle = 90*spr_dir;
            jet_used = 0;
        }
        break;
    case AT_UTILT:
        if(jet_used == 0)
        {
            for(hbox = 1; hbox < 4; hbox++)
            {
                reset_hitbox_value(AT_UTILT, hbox, HG_DAMAGE);
                reset_hitbox_value(AT_UTILT, hbox, HG_BASE_KNOCKBACK);
                reset_hitbox_value(AT_UTILT, hbox, HG_KNOCKBACK_SCALING);
                reset_hitbox_value(AT_UTILT, hbox, HG_BASE_HITPAUSE);
                reset_hitbox_value(AT_UTILT, hbox, HG_HITPAUSE_SCALING);
                reset_hitbox_value(AT_UTILT, hbox, HG_HIT_SFX);
                reset_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH);
            }
        }
        else
        {
            for(hbox = 1; hbox < 4; hbox++)
            {
                set_hitbox_value(AT_UTILT, hbox, HG_DAMAGE, 10);
                set_hitbox_value(AT_UTILT, hbox, HG_BASE_KNOCKBACK, 8);
                set_hitbox_value(AT_UTILT, hbox, HG_KNOCKBACK_SCALING, 1);
                set_hitbox_value(AT_UTILT, hbox, HG_BASE_HITPAUSE, 11);
                set_hitbox_value(AT_UTILT, hbox, HG_HITPAUSE_SCALING, 1);
                set_hitbox_value(AT_UTILT, hbox, HG_HIT_SFX, sound_get("dagger_stab2"));
                set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 15);
            }
        }
        if(jet_used == 1)
        {
            old_hsp = hsp;
            old_vsp = vsp;
            hitstop = 2;
            jet_used ++;
        }
        if (jet_used == 2 && !hitpause)
        {  
            sound_play(asset_get("sfx_boss_fireball"));
            fx = spawn_hit_fx(x-20*spr_dir, y-30, burst_flame);
            fx.draw_angle = 90*spr_dir;
            jet_used = 3;
        }
        break;
    case AT_DATTACK:
        if(jet_used == 0)
        {
            reset_hitbox_value(AT_DATTACK, 1, HG_DAMAGE);
            reset_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING);
            reset_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH);
            reset_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH);
        }
        else
        {
            set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 12);
            set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 8);
            set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 1);
            set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 12);
            set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 1);
            set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 15);
            set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 15);
        }
        if(jet_used == 1)
        {
            old_hsp = hsp;
            old_vsp = vsp;
            jet_used ++;
        }
        if (jet_used == 2 && window_timer == 10 && !hitpause)
        {  
            hsp += 4*spr_dir;
            sound_play(asset_get("sfx_boss_fireball"));
            fx = spawn_hit_fx(x, y-40, burst_flame);
            jet_used = 3;
        }
        break;
}
