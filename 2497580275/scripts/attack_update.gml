

//B - Reversals
hurtboxID.sprite_index = get_attack_value(attack,AG_HURTBOX_SPRITE);
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
    with(obj_article2)
    {
        if(player == other.player && other.window == 1 && other.window_timer == 1)
            other.attack = (state != 1 ? AT_NSPECIAL_2 : AT_USPECIAL_2);
    }
    if (window == 2 && window_timer == 1)
       instance_create(x,y, "obj_article2");
}

if (attack == AT_NSPECIAL_2)
{
    if(state_timer == 4)
    {
        if((parasiteLevel == 2  || parasiteLevel == 1 && parasiteTimer2 > 0) && special_down && !shield_down)
            attack = AT_USPECIAL_2;
        else
            recallKnife();
    }
    set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial2"));
}
if (attack == AT_USPECIAL_2)
{
    if(window == 1)
    {
        set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("precombust"));
        set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("precombust"));
        if(window_timer == 20)
        {
            with(obj_article2)
            {
                if(player == other.player)
                    state = 3;
            }
        }
    }
    if(window == 2)
    {
        reset_attack_value(AT_USPECIAL_2, AG_SPRITE);
        reset_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE);
    }
    //prevent the infinite
    move_cooldown[AT_NSPECIAL] = 10;
}
if (attack == AT_FSPECIAL){
    can_wall_jump = true;
    if (has_hit){
    	set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
    } else { reset_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE);}
    	
    if(window == 1)
    {
        set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
        if(free && down_down)
            fspec_Air = true;
        else
            fspec_Air = false;
        if(window_timer == 15)
        {
            set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, (!fspec_Air ? 12 : 20));//40
            set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, (!fspec_Air ? 3 : 5));
            set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, (!fspec_Air ? -10 : 12));
            set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, (!fspec_Air ? -47: -10));
            set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, (!fspec_Air ? -47: -10));
            instance_create(x,y, "obj_article1");
        }
    }
    if(window == 2 && !hitpause)
    {
        set_attack_value(AT_FSPECIAL, AG_CATEGORY, 1);
        x += 25*spr_dir-hsp;
        if(window_timer == 4)
            hsp = 13*spr_dir;
        else if(window_timer == 3)
            hsp = 18*spr_dir;
        else
            hsp = 12*spr_dir;
    }

    if(window == 3)
    {
        if(window_timer <= 12 && free)
            hsp /= 5;

        set_attack_value(AT_FSPECIAL, AG_CATEGORY, 1);
        if(window_timer < 20)
            vsp /= 1.2;
        else if(fspec_Air)
            iasa_script();

        if((parasiteLevel == 2  || parasiteLevel == 1 && parasiteTimer2 > 0) && special_down && window_timer == 3)
            Combust();
    }
    can_fast_fall = false;
    fspec_Used = true;
}

if (attack == AT_USPECIAL){
    can_wall_jump = true;
    can_fast_fall = false;
    if(!free)
    {
        move_cooldown[AT_USPECIAL] = 30;
        if(right_down)
            hsp += 0.5;
        if(left_down)
            hsp -= 0.5;
    }
    if(window == 1 && window_timer < 2)
    {
        if(!free)
        {
            set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, 0);
            set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 0);
            set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, 0);
            //set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 160);
            //set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 30);
            set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 0);
        }
        else
        {
            reset_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED);
            reset_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE);
            reset_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED);
            //reset_hitbox_value(AT_USPECIAL, 1, HG_ANGLE);
            //reset_hitbox_value(AT_USPECIAL, 2, HG_ANGLE);
            reset_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE);
        }
    }
    if(window == 2)
    {
        if(window_timer % 6 == 0 && !hitpause)
            sound_play(sound_get("dagger_swing1"));
    }
    if(window == 3 && free)
        reset_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE);

    if((parasiteLevel == 2  || parasiteLevel == 1 && parasiteTimer2 > 0) && special_down && window == 3 && window_timer == 5)
        Combust();
}

if (attack == AT_DSPECIAL){
    if(parasiteLevel == 2 || parasiteLevel == 1 && parasiteTimer2 > 0)
    {
        soft_armor = 12;
        outline_color = [50,50,50]
    }
    if (window == 1 && window_timer == 1 || window == 7) { //Reset variables
        reset_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS);
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    }
    if(has_hit_player)
    {
        can_move = false;
        can_fast_fall = false;
        hsp = 0;
        vsp = 0;
        parasiteTimer2 = (parasiteLevel == 2 ? 480 : 240);
        parasiteTimerMax = parasiteTimer2;
        if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
        else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

        else {
            grabbed_player_obj.hitstop = 2;
            grabbed_player_obj.hitpause = true;
            
            if (window_timer <= 1) {
                grabbed_player_relative_x = grabbed_player_obj.x - x;
                grabbed_player_relative_y = grabbed_player_obj.y - y;
            }
            
            if (window == 3) { 
                var pull_to_x = 50 * spr_dir;
                var pull_to_y = 0;
                
                //using an easing function, smoothly pull the opponent into the grab over the duration of this window.
                var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
                grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
                grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
            }
        }
    }
    if(window == 5 && window_timer == 6)
		shake_camera( 12, 4);
	if((parasiteLevel == 2  || parasiteLevel == 1 && parasiteTimer2 > 0) && special_down && window == 7 && window_timer == 5)
        Combust();
}
//lose access to strongs.
if(parasiteLevel == 0 && parasiteTimer2 < 0 && state_timer <= 4)
{
    if(attack == AT_FSTRONG)
        attack = AT_FTILT;
    if(attack == AT_DSTRONG)
        attack = AT_DTILT;
    if(attack == AT_USTRONG)
        attack = AT_UTILT;
}

if(attack == AT_DAIR)
{
    can_fast_fall = false;
    if(has_hit)
    {
        old_vsp = -8;
        has_hit = false;
    }
    if((attack_down || up_strong_down || right_strong_down || left_strong_down || down_strong_down || strong_down
    || down_stick_down || up_stick_down || left_stick_down || right_stick_down) && window == 3 && window_timer >= 4)
    {
        attack_end();
        window = 3;
        window_timer = 0;
    }
    if(window == 4)
        destroy_hitboxes();
}

//Death
if (attack == AT_TAUNT_2)
{
    if(window_timer == 2)
        sound_play(sound_get("death_bg"));
    suppress_stage_music();
    if(window_timer == 60)
        sound_play(asset_get("sfx_plant_fat"));
    if(window_timer == 95)
    {
        hurtboxID.dodging = false;
        create_deathbox(x,y, 4, 4, player, false, 0, 5, 2);
        parasiteTimer = 0;
    }
        hurtboxID.dodging = true;
}
init_shader();

#define recallKnife()
    with(obj_article2)
    {
        if(player == other.player)
            state = 1;
    }

#define Combust()
    with(obj_article2)
    {
        if(player == other.player)
            state = 3;
    }