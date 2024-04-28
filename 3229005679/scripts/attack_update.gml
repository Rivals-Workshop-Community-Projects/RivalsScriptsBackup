

if (attack == AT_NSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_USPECIAL_GROUND || attack == AT_FSPECIAL) {
    trigger_b_reverse();
}

switch (attack){

case AT_JAB:

	if (window == 1){

        if (window_timer == get_window_value(AT_JAB, 1, AG_WINDOW_LENGTH)){

            hud_offset = 46;

            if (!attack_down){
                if (!has_rune("L")){
                    window_timer = 0;
                    window = 3;

                    sound_play(sound_get("pistolshot"));
                } else {
                    
                    window_timer = 0;
                    window = 5;

                    sound_play(sound_get("sfx_killingblow"));
                    create_hitbox(AT_JAB, 3, x + get_hitbox_value(AT_JAB, 3, HG_HITBOX_X) * spr_dir, y + get_hitbox_value(AT_JAB, 3, HG_HITBOX_Y));
                }
            }
        }
    }

    if (window == 2){
        hud_offset = 46;
        has_hit_player = false;

        if (window_timer % 10 == 0 && !hitpause){
            sound_play(sound_get("pistolstart2"));
        }

        if (!attack_down){
            if (!has_rune("L")){
                window_timer = 0;
                window = 3;

                sound_play(sound_get("pistolshot"));

            } else {

                window_timer = 0;
                window = 5;

                sound_play(sound_get("sfx_killingblow"));
                create_hitbox(AT_JAB, 3, x + get_hitbox_value(AT_JAB, 3, HG_HITBOX_X) * spr_dir, y + get_hitbox_value(AT_JAB, 3, HG_HITBOX_Y));
            }
        }


        if (window_timer == get_window_value(AT_JAB, 2, AG_WINDOW_LENGTH)){
            window_timer = 0;
            window = 5;

            sound_play(sound_get("sfx_killingblow"));
            create_hitbox(AT_JAB, 3, x + get_hitbox_value(AT_JAB, 3, HG_HITBOX_X) * spr_dir, y + get_hitbox_value(AT_JAB, 3, HG_HITBOX_Y));
        }
    }

    if (window == 4){

        if (window_timer < 3 && (attack_pressed || attack_down)){
            window_timer = 0;
            window = 3;

            has_hit_player = false;
            clear_button_buffer(PC_ATTACK_PRESSED);
            sound_play(sound_get("pistolshot"));
        }
    }

    if (window == 5 && window_timer == get_window_value(AT_JAB, 5, AG_WINDOW_LENGTH)){
        window_timer = 2;
        window = 4;
    }

    if(has_hit_player && window != 1){
        can_attack = true;
        move_cooldown[AT_JAB] = 2;
    }

break;

case AT_DATTACK:

    if (floor(abs(prev_hsp)) != 0 && !hitpause && !was_parried){
        if (hsp = 0){
            hsp = prev_hsp * -1;
            spr_dir *= -1;

            with (pHitBox){
                if (type == 1 && player_id == other.id && attack == AT_DATTACK){
                    spr_dir *= -1;
                    x_pos *= -1;
                }
            }
        }
    }

    if (!hitpause){
        prev_hsp = hsp;

        if (state_timer % 9 == 0 && hsp != 0){
            CreateAfterimage();
        }
    }


break;

case AT_UTILT:

    if ((window == 1 && window_timer == get_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH)) || window == 2){
        hud_offset = 55;
    }

break;

case AT_TAUNT:

    can_move = false;
    can_fast_fall = false;
    hud_offset = 35;

    if (window == 1){

        if (window_timer == get_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH)){
            hsp = old_hsp;
            vsp = old_vsp;

            if (free) then bear_uspecial = false;
        } else {
            hsp = 0;
            vsp = 0;
        }
        
    }


break;

case AT_NSPECIAL:

    if (window == 1 && window_timer == get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH)){

        vigiGhost = instance_create(x, get_stage_data(SD_TOP_BLASTZONE_Y), "obj_article1");
        
    }

    if (window == 2){
        can_wall_jump = true;
    }


break;

case AT_NAIR:

    if (window == 1){

        if (vsp > 0){
            vsp -= (has_rune("A") + 1);
        }

        if (has_rune("L") && window_timer == get_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH)){
            sound_play(sound_get("sfx_killingblow"));
            create_hitbox(AT_JAB, 3, x + get_hitbox_value(AT_JAB, 3, HG_HITBOX_X) * spr_dir, y + get_hitbox_value(AT_JAB, 3, HG_HITBOX_Y));
        }
    }

break;

case AT_UAIR:

    if (window == 1){

        if (window_timer > 3){
            hud_offset = 60;
        }

        if (window_timer == get_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH) && !hitpause){
            spawn_hit_fx(x + 4 * spr_dir, y - 56, uairExplosion); //96,  156
            sound_play(sound_get("sfx_explosion"));
            create_hitbox(AT_UAIR, 1, x + 6 * spr_dir, y - 66);
        }
        
    }

    if (window == 2){
        hud_offset = 60;
    }

    if (window == 3){
        can_wall_jump = true;
    }

break;

case AT_DAIR:

    can_fast_fall = false;

	if (window == 1){

        hsp = clamp(hsp, -leave_ground_max +(window_timer/5), leave_ground_max-(window_timer/5))

        if (window_timer == 1 && !hitpause){
            vsp = min(vsp, -4);
            times_through = 0;
        }

        if (window_timer == 13 && !hitpause){
            sound_play(asset_get("sfx_swipe_heavy2"))
        }
	}

    if (window == 2 || window == 3){
        can_wall_jump = true;

        hsp = clamp(hsp, -3, 3);

        if (state_timer % 3 == 0){
            CreateAfterimage();
        }

        if (!hitpause){

            if (has_hit || !free){
                window_timer = 0;
		        window = 4;

                shake_camera(4, 4);
                destroy_hitboxes();
                sound_play(sound_get("sfx_groundpound"))
            } else {
                vsp = 13;

                if (times_through >= 3 && !was_parried){
                    iasa_script();
                }
            }

        }

        if (window_timer == get_window_value(AT_DAIR, window, AG_WINDOW_LENGTH)){
            times_through += 1;
        }
    }

    if (window == 4){

        vsp = 0;
        hsp = 0;

        if (window_timer == get_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH) && !was_parried){
            window_timer = 0;
            window = 5;

            free = true;
            vsp = -8;
        }
    }
          
    if ((window == 5 || window == 6)){
        can_wall_jump = true;

        if (!free){
            landing_lag_time = get_attack_value(AT_DAIR, AG_LANDING_LAG);
            set_state(PS_LANDING_LAG);
        }
    }

break;

case AT_USPECIAL_GROUND:

    var uziAngle = 270 + (sin((window_timer+8) * -0.195) * 30);
    var uziX = round(lengthdir_x(9, uziAngle));
    var uziY = round(lengthdir_y(8, uziAngle));

    if (window == 1){

        if (window_timer == get_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_LENGTH) && !hitpause){
            vsp = -15;
        }
        
    }

    if (window == 2){

        if (!free){
            landing_lag_time = get_attack_value(AT_USPECIAL_GROUND, AG_LANDING_LAG); // if it has whifflag, add this * (!has_hit ? 1.5 : 1)
            set_state(PS_LANDING_LAG);
        }

        if (window_timer % 4 == 2){
            var uziBullet = create_hitbox(AT_USPECIAL_GROUND, 1, x + round(uziX * 10) * spr_dir, y + round((uziY * 3) + vsp));
            uziBullet.hsp = uziX * spr_dir;
            uziBullet.vsp = uziY;
            sound_play(sound_get("sfx_killingblow"), false, noone, 1, 2);
        }

        if (vsp > 0){
            move_cooldown[AT_USPECIAL_GROUND] = 2; //make this AT_USPECIAL
            can_wall_jump = true;
            iasa_script();

            if (has_rune("E")){
                vsp = 1;
                can_fast_fall = false;
            }
        }
    }

break;

case AT_BAIR:

    if (window == 2){
        if (!attack_down && !left_stick_down && !right_stick_down){
            window = 3;
            window_timer = 0;

            sound_play(asset_get("sfx_ell_cooldown"));
            set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bairEmpty"));

            set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 8);
            set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 7);
            set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.7);
            set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 7);
            set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0.7);
            set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
            set_hitbox_value(AT_BAIR, 1, HG_HIT_LOCKOUT, 0);

        } else {

            if (floor(window_timer / 4) % 2 == 0){
                strong_flashing = true;
            }

            reset_attack_value(AT_BAIR, AG_SPRITE);

            reset_hitbox_value(AT_BAIR, 1, HG_DAMAGE);
            reset_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING);
            reset_hitbox_value(AT_BAIR, 1, HG_HIT_SFX);
            reset_hitbox_value(AT_BAIR, 1, HG_HIT_LOCKOUT);
        }

        if (window_timer == get_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH)){
            vigiCheese = create_hitbox(AT_BAIR, 2, x - 50 * spr_dir, y - 32);
            vigiCheese.max_fall = 24;
            sound_play(asset_get("sfx_ell_small_missile_ground"));
        }
    }

break;

case AT_DSTRONG:


    if (window == 2 && window_timer == get_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH)){

        if (has_rune("H") && times_through == 0){
            if (strong_charge < 30){
                strong_charge = 0;
                vigiDstrongType = 0;
            } else {
                strong_charge = 60;
                vigiDstrongType = 1;
            }
        }

        vigiDynamite = create_hitbox(AT_DSTRONG, 1, x + 40 * spr_dir, y - 20);
        vigiDynamite.hsp = (get_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_HSPEED) * ( 1 + (ease_linear(0, 1, strong_charge, 60) / 2) )) * spr_dir;
        vigiDynamite.vsp = (get_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_VSPEED) * ( 1 + (ease_linear(0, 1, strong_charge, 60) / 2) ));
        vigiDynamite.length = round(get_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME) * ( 1 + (ease_linear(0, 1, strong_charge, 60) / 2) ));
        vigiDynamite.originalStrong_charge = strong_charge;

    }

    if (has_rune("H") && window == 4 && window_timer == get_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH) && times_through != 2){
        window = 2;
        window_timer = 0;
        times_through += 1;
        strong_charge = vigiDstrongType ? strong_charge - 30 : strong_charge + 30;
    }

break;


case AT_DSPECIAL:

    if (window == 1){

        var nearest_player = noone;
        var nearest_distance = -1;
        with (oPlayer) {
          if (id != other.id && state != PS_DEAD && state != PS_RESPAWN) {
            if (nearest_player == noone || point_distance(x, y, other.x, other.y) < nearest_distance) {
                nearest_player = id;
                nearest_distance = point_distance(x, y, other.x, other.y);
            } 
          }
        }

        if (instance_exists(nearest_player)){
            vigiCowTargetX = nearest_player.x;
            vigiCowTargetY = nearest_player.y;
        } else {
            vigiCowTargetX = x;
            vigiCowTargetY = y;
        }


        if (window_timer == get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH)){
            vigiCow = instance_create(vigiCowTargetX, get_stage_data(SD_TOP_BLASTZONE_Y), "obj_article2");
        }
        
    }

break;

case AT_USPECIAL:

    if (window == 1){

        hsp = 0;
        vsp = min(vsp + gravity_speed, 0);
        can_move = false;
        can_wall_jump = true;

        if (b_reversed == false){
            if (spr_dir == 1 && left_down){
                spr_dir = -1;
                b_reversed = true;
            }

            if (spr_dir == -1 && right_down){
                spr_dir = 1;
                b_reversed = true;
            }
        }

        /*if (shield_pressed){ //Orcahop code, uncomment in case of recovery emergency.
            window_timer = 0;
            window = 4;
        }*/
    }

    if (window == 2){

        hsp = 0;
        vsp = 0;
        can_move = false;

        if (window_timer == get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH)){
            vsp = -10;
            hsp = -2.5 * spr_dir;
        }
    }

    if (window == 3){
        can_move = false;
    }

break;


case AT_FSPECIAL:

    if (instance_exists(vigiWeenie)){

        depth = -2;

        if (window == 1){

            hud_offset = 30;
            can_move = false;
            if (hitpause == false){
                hsp = min(abs(hsp) + 0.2 + (has_rune("J") * 0.2), 6.9) * spr_dir;
            }

        }

        if (window == 2){

            hud_offset = 46;
            can_move = false;

            if (hitpause == false){
                
                hsp = min(abs(hsp) + 0.2 + (has_rune("J") * 0.2), 10) * spr_dir;

                vigiWeenie.spr_dir = spr_dir;

                if (spr_dir == 1 && left_down && !was_hitpause){
                    window_timer = 0;
                    window = 3;
                    spr_dir = -1;

                    vigiWeenie.spr_dir = -1;
                    sound_stop(weenieSound);
                    destroy_hitboxes();
                }

                if (spr_dir == -1 && right_down && !was_hitpause){
                    window_timer = 0;
                    window = 3;
                    spr_dir = 1;

                    vigiWeenie.spr_dir = 1;
                    sound_stop(weenieSound);
                    destroy_hitboxes();
                }

                if (jump_pressed || special_pressed || shield_pressed){
                    vigiWeenie.hsp = hsp;
                    vigiWeenie.vsp = 0;

                    window_timer = 0;
                    window = 4;

                    hsp = vigiWeenie.hsp + (1 * spr_dir);
                    vsp = -jump_speed * 0.8;
                    y -= 15;

                    hurtboxID.sprite_index = hurtbox_spr;
                    sound_stop(weenieSound);
                    destroy_hitboxes();
                }

            }
        }

        if (window == 3){

            hud_offset = 36;
            hsp = vigiWeenie.hsp;
            vsp = vigiWeenie.vsp;
            can_move = false;
        }

        if (window == 4 && was_parried){
            can_move = false;

            if (window_timer == 1){
                hsp = (vigiWeenie.hsp) * -0.25;
                vsp = -jump_speed * 1;

                spr_dir *= -1;
                y -= 15;
            }
        }
    }

    if (window == 5){
        if (!was_parried){
            iasa_script();
        } else {
            can_move = false;
        }

        can_wall_jump = true;

        if (!free){
            if (!was_parried){
                landing_lag_time = get_attack_value(AT_FSPECIAL, AG_LANDING_LAG);
                set_state(PS_LANDING_LAG);
            } else {
                landing_lag_time = get_attack_value(AT_FSPECIAL, AG_LANDING_LAG);
                set_state(PS_PRATLAND);
            }
        }
            
    }

break;

case AT_FSPECIAL_2:

    if (instance_exists(vigiWeenie) && window == 1 && window_timer == get_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH)){
        vigiWeenie.hsp = 15 * spr_dir

        vigiWeenie.sprite_index = sprite_get("weenieDash");
        vigiWeenie.image_index = 5;

        vigiWeenie.state = 7;
        vigiWeenie.state_timer = 0;

        sound_play(sound_get("sfx_killingblow"), false, noone, 1, 1);
    }

break;

case AT_DTILT:

    if (window == 1 && window_timer == get_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH)){
        hud_offset = 25;
    }

    if (window == 2 || window == 3){
        hud_offset = 25;
    }

break;

case AT_USTRONG:

    if (has_rune("K")){

        if (window == 3 && window_timer == get_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME) && times_through < 2){
            attack_end();
            window_timer = 2;
            times_through += 1;
        }

        if ((window == 2 || window == 3) && !hitpause){
            if (right_down && spr_dir == 1){
                hsp = 4;
            }
            if (left_down && spr_dir == -1){
                hsp = -4;
            }
        }

    }

break;

case 46:

    iasa_script();
    if (vsp > 0 && window == 3)
    {
        window ++;
        window_timer = 0;
    }
    if (window > 1 && !free) set_state(PS_LANDING_LAG);

break;


}


#define CreateAfterimage()
{
//if (afterimage_colour = 1) var _color = $FF0000
    var _color = $0080FF
    afterimage_array[array_length_1d(afterimage_array)] = {smallSprites:small_sprites, x:x+draw_x, y:y+draw_y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, rot:spr_angle, col:_color, timer:0, timerMax:18};
}