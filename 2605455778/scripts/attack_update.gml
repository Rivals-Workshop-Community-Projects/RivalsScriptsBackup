//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL){
    trigger_b_reverse();
}

switch(attack){
    case AT_NSPECIAL:
        if(window == 1){
            if(window_timer == 1){
                hit_totem = false;
            }
            grabbed_player = noone;
            prison_player = noone;
            totemSwallowTime = 0;
        }
        if(armorpoints > 0){
            moveArmorLoss = true;
        }
        can_fast_fall = false;
        if(window = 11){
            with(asset_get("oPlayer")){
                if (state == PS_WRAPPED 
                && hit_player_obj == other 
                && last_attack == other.attack
                && !inRock){
                    var total_time = 15;
                    var dino_close_point = 0;
                    if(distance_to_point(round(other.x+120*other.spr_dir), other.x) > distance_to_point(x, other.x)){
                        dino_close_point = x;
                    }else{
                        dino_close_point = round(other.x+120*other.spr_dir);
                    }
                    x = round(ease_quartInOut(dino_close_point, round(other.x+60*spr_dir), min(other.window_timer, total_time), total_time));
                    y = other.y;
                }
                if(other.window_timer == 1 && !other.hitpause){
                    other.hitpause = true;
                    other.hitstop = 5;
                    other.hitstop_full = 5;
                }
            }
            if(window_timer = get_window_value(attack, 11, AG_WINDOW_LENGTH)-1){
                if(armorpoints > 0 && hit_player_obj.prison_lockout_counter <= 0){
                    if(special_down){
                        window = 4;
                    }else{
                        window = 8;
                    }
                }else{
                    window = 4;
                }
                window_timer = 0;
            }
        }
        if(window == 8){
            if(window_timer = 1){
                var a = spawn_hit_fx(x-25*spr_dir, y, armorlosssmallfx);
                a.depth = -10;
                armorloss = true;
            }
            with (asset_get("oPlayer")){
                if(other.hit_player_obj == self){
                    prisoner = other;
                    prev_prisoner = other;
                }
            }
            if(window_timer < 22 && window_timer > 17){
                if(free){
                    hsp = -2*spr_dir;
                }else{
                    hsp = -5*spr_dir;
                }
            }
        }
        if(window == 4 && window_timer == get_window_value(attack, 4, AG_WINDOW_LENGTH)){
            window = 9;
            window_timer = 0;
        }
        if(instance_exists(grabbed_player) && grabbed_player == hit_player_obj 
        && grabbed_player.state != PS_FROZEN 
        && !grabbed_player.bubbled){
            if(totemAndplayer){
                armorpoints += 1;
                armorgainattack();
            }
            totemAndplayer = false;
            invincible = false;
            grab_x = grabbed_player.x;
            gplayer = grabbed_player;
            grabbed_player.state = PS_WRAPPED;
            grabbed_player.wrap_time = 100;
            grabbed_player = noone;
            window = 11;
            window_timer = 0;
        }else{
            if(window == 2 && hit_totem && !has_hit_player && !hitpause){
                hitpause = true;
                hitstop = 6;
                hitstop_full = 6;
                window = 10;
                window_timer = 0;
                hit_totem = false;
            }
            if(window == 10 && window_timer == get_window_value(AT_NSPECIAL, 10, AG_WINDOW_LENGTH)-1){
                if(free){
                    vsp -= 5;
                }
                if(!special_down){
                    window = 5;
                    if(((spr_dir != 1 || !left_down) && (spr_dir != -1 || !right_down)) && !down_down){
                        hsp = 10*spr_dir;
                        ground_friction = totem_slide_friction;
                    }
                }else{
                    window = 6;
                    nextarmor = false;
                    swallowarmor = false;
                    armorgainattack();
                    armorpoints += 3;
                }
                window_timer = 0;
            }
            if(window == 5 && window_timer == 10){
                swallow = true;
                has_rock = true;
            }
            if((window == 10 || window == 5)){
                nextarmor = true;
                if(free){
                    can_attack = true;
                }
                totemSwallowTime++;
            }
        }
    if(window == 5 && swallow == true){
        can_attack = true;
        can_strong = true;
        can_ustrong = true;
        can_jump = true;
    }
    break;
    
    case AT_FSPECIAL:
        old_jump = false
        can_wall_jump = true;
        if(free && window == 1 && window_timer == 1){
            vsp = -2;
        }
        if(window == 1 && window_timer == 1){
            if(free){
                set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 7);
            }else{
                set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
            }
        }
        if(window == 3 && !free){
            set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
        }
        if(window == 2){
            with (asset_get("oPlayer")) {
                if (hitpause && state_cat == SC_HITSTUN && hit_player_obj == other.id
                && last_attack == other.attack && state != PS_FROZEN){
                    x += (other.x+40*other.spr_dir - x)/5;
                    if (free){
                        y += (other.y - y)/5;
                    }
                }
            }
            if(has_hit){
                if(hit_totem){
                    sound_play(asset_get("sfx_crunch"));
                    spawn_hit_fx(totemwehit.x, totemwehit.y-35, 301);
                    armorpoints += 1;
                    armorgainattack();
                }
                window = 4;
                window_timer = 0;
            }
            if(place_meeting(x+2*spr_dir, y, asset_get("par_block")) && window == 2){ //get on ledge
                print_debug("collide");
                if(!place_meeting(x+2*spr_dir, y-60, asset_get("par_block"))){
                    y = y-15;
                    hsp -= 5*spr_dir;
                }
            }
        }else if (window == 4 && window_timer == get_window_value(attack, 4, AG_WINDOW_LENGTH)){
            window = 5;
            window_timer = 0;
        }
        if(window == 3){
            canledgecancel = true;
        }
        if(window == 5 && window_timer == 1 && hit_totem){
            sound_play(asset_get("sfx_blow_medium1"));
        }
    break;
    
    case AT_FSPECIAL_2:
        can_fast_fall = false;
        old_jump = false;
        can_wall_jump = true;
        if(window == 1 && shield_down){
            attack = AT_FSPECIAL;
            window = 1;
            window_timer = 0;
        }else if(window == 2){
            if(!hitpause){
                hsp = 10*spr_dir; //for turnaround speed
            }
            if(window_timer == 1){
                armorloss = true;
                if(free){
                    vsp -= 5;
                }
                var alasmall = spawn_hit_fx(x-20*spr_dir, y+10, armorlosssmallfx);
                alasmall.depth = -10;
            }
            eggrollspecialcancels();
            if(hit_totem && window == 2){
                spawn_hit_fx(obj_article1.x, obj_article1.y-35, 301);
                sound_play(asset_get("sfx_blow_heavy1"));
                window = 5;
                window_timer = 0;
                old_hsp = 11*spr_dir;
                old_vsp = vsp;
                hitpause = true;
                hitstop = 10;
                hitstop_full = 10;
                hit_totem = false;
                armorpoints += 1;
                armorgainattack();
            }
        }
        if(window == 6){
            if(window_timer == 1 && !hitpause){
                create_hitbox(AT_FSPECIAL_2, 1, x, y);
            }
            if(window_timer == 12){
                spr_dir *= -1;
            }
            if(window_timer == get_window_value(attack, 6, AG_WINDOW_LENGTH)){
                window = eggroll_window_store;
                window_timer = eggroll_timer_store;
                create_hitbox(AT_FSPECIAL_2, 1, x, y);
                attack_end();
            }
            if(eggroll_window_store == 5){
                can_jump = true;
            }
        }
        if(window == 5){
            can_jump = true;
            if(!hitpause){
                hsp = 11*spr_dir;
                can_wall_jump = true;
                eggrollspecialcancels();
            }
        }
        if(window == 5 && window_timer == get_window_value(attack, 5, AG_WINDOW_LENGTH)){
            window = 3;
            window_timer = 0;
        }
        if(window == 7 && window_timer == get_window_value(attack, 7, AG_WINDOW_LENGTH)){
            window = 4;
            window_timer = 0;
            spawn_hit_fx(x, y-10, djarmorexit);
            hsp = 0;
            switch(sideup){
                case 0:
                    vsp = -18;
                    set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_TYPE, 7);
                    armorpoints = 0;
                break;
                case 1:
                    vsp = -14;
                    set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_TYPE, 7);
                    armorpoints = 0;
                break;
                case 2:
                    vsp = -10;
                    armorloss = true;
                    set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_TYPE, 1);
                    fdownsprecovery = true;
                break;
            }
        }
        if(window == 7 || window == 3){
            if(window == 7){
                super_armor = true;
            }
            destroy_hitboxes();
        }
    break;
    
    case AT_USPECIAL:
    can_wall_jump = true;
        if(window == 1){
            if (window_timer == 1){
                throw_power = throw_power_default;
            }
            if(special_down){
                throw_power += 0.35;
            }
        }
        if(window == 2 && window_timer == 1){
            var base_angle = 90-20*spr_dir;
            var angle_range = 30;
            var angle_clamp = angle_difference(joy_dir, base_angle);
            angle_clamp = clamp(angle_clamp, -angle_range, angle_range);
            throw_angle = angle_clamp + base_angle;
            var uRock = create_hitbox(AT_USPECIAL, 1, x+30*spr_dir, y-50);
            if(swallowups){
                uRock.sprite_index = sprite_get("upspecial_proj_swallow");
            }
            uRock.hsp = lengthdir_x(throw_power, throw_angle);
            uRock.vsp = lengthdir_y(throw_power, throw_angle);
        }
        with(pHitBox){
            if(player_id == other
            && attack == AT_USPECIAL
            && hbox_num == 1 ){
                if(collision_circle(x, y, 15, asset_get("par_block"), true, true)){
                    if(player_id.swallowups == true){
                        var uPow = create_hitbox(AT_USPECIAL, 4, x, y);
                        player_id.swallowups = false;
                    }else{
                        rockeggpow();
                    }
                }
                with(obj_article1){
                    if(self.player_id.url == other.player_id.url){
                        if(place_meeting(x, y, other) && !place_meeting(x, y, asset_get("plasma_field_obj"))){
                            var rockPow = create_hitbox(AT_USPECIAL, 3, x, y-50);
                            sound_play(asset_get("sfx_abyss_explosion"));
                            //print_debug(rockPow.damage);
                            spawn_hit_fx(x, y, player_id.totemPowfx);
                            if(collision_circle(x, y, 150, player_id, true, true)){
                                player_id.armorgain = true;
                            }
                            other.destroyed = true;
                            destroy = true;
                        }
                    }
                }
            }
        }
        if(window == 1 && shield_pressed && armorpoints > 0 && !upcancel){
            super_armor = true;
            old_jump = false;
            armorloss = true;
            window = 3;
            window_timer = 0;
            vsp = -10;
            upcancel = true;
        }
    break;

    case AT_DSPECIAL:
        if(window == 1 && window_timer == 10 && !special_down){
            window = 4;
            window_timer = 0;
            armorpoints += 1;
            armorgainattack();
            totemSpawn();
        }
        if(window == 3){
            attack = AT_DSPECIAL_AIR;
            window = 1;
            window_timer = 3;
        }
        if(window == 4 && window_timer == 1 && !hitpause){
            sound_play(asset_get("sfx_kragg_roll_start"));
        }
    break;
    case AT_DSPECIAL_AIR:
        can_wall_jump = true;
        can_fast_fall = false;
        can_move = false
        if(window == 3){
            sound_play(asset_get("sfx_zetter_downb"));
            attack = AT_DSPECIAL;
            window = 4;
            window_timer = 0;
            armorpoints += 1;
            armorgainattack();
            totemSpawn();
        }
    break;
    case AT_UTILT:
        if(armorpoints > 0){
            moveArmorLoss = true;
            if(window == 5 && window_timer == 1){
                var utRock = create_hitbox(AT_UTILT, 4, x+23*spr_dir, y-75)
            }
            if(window == 6 && window_timer == 2){
                armorpoints -= 1;
            }
            if(window == 6 && window_timer >= 5){
                iasa_script();
            }
        }
    break;
    case AT_FTILT:
        if(armorpoints > 0){
            moveArmorLoss = true;
            if(window == 1 && window_timer == get_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH)){
                var ftRock = create_hitbox(AT_FTILT, 2, x+23*spr_dir, y-75)
            }
            if(window == 2 && window_timer == 1){
                armorpoints -= 1;
            }
        }
    break;
}
if(get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && super_armor
|| (attack == AT_BAIR
|| attack == AT_DAIR
&& window == 2
&& window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH))){
    swallowarmor = false;
    super_armor = false;
}
if(swallowarmor){
    if(window >= 2){
        super_armor = true;
    }
}
prev_attack = attack;
#define totemSpawn
with(obj_article1){
    if (player_id == other){
        destroy = true;
    }
}
var temp_x = 70;
var max_temp_x = -40;
var offset = 15;
while (temp_x > max_temp_x){
    if(ground_col(x+(temp_x)*spr_dir, y+2)){
        if(ground_col(x+(temp_x+offset)*spr_dir, y+2) && ground_col(x+(temp_x-offset)*spr_dir, y+2)
        && !position_meeting(x+(temp_x+offset)*spr_dir, y-2, asset_get("par_block"))){
            break;
        }else{
            if(!ground_col(x+(temp_x+offset)*spr_dir, y+2) && !ground_col(x+(temp_x-offset)*spr_dir, y+2)
            && !position_meeting(x+(temp_x+offset)*spr_dir, y-2, asset_get("par_block"))){
                break;
            }
            temp_x--;
        }
    }else{
        temp_x--;
    }
}
instance_create(x+temp_x*spr_dir, y, "obj_article1");
#define ground_col(xx, yy)
return (position_meeting(xx, yy, asset_get("par_block"))
    || position_meeting(xx, yy, asset_get("par_jumpthrough")));
#define eggrollspecialcancels
if(is_special_pressed(DIR_UP)){
        sideup = 0;
        window = 7;
        window_timer = 0;
}else{
        if((spr_dir == 1 && left_down) || (spr_dir == -1 && right_down)){
            if((window_timer > 15 || window != 2) && !hitpause){
                eggroll_window_store = window;
                eggroll_timer_store = window_timer;
                window = 6;
                window_timer = 0;
            }
        }
    }
if(is_special_pressed(DIR_NONE)){
        window = 7;
        window_timer = 0;
        sideup = 1;
}
if(is_special_pressed(DIR_DOWN)){
        window = 7;
        window_timer = 0;
        sideup = 2;
}
#define rockeggpow
var rockPow = create_hitbox(AT_USPECIAL, 2, x, y);
destroyed = true;
#define armorgainattack
armorgainfx = spawn_hit_fx(x, y, djarmorgain);
#define armorlossattack
armorpoints -= 1;
armorlossfx = spawn_hit_fx(x, y, djarmorexit);
armorlossfx.depth = -10;