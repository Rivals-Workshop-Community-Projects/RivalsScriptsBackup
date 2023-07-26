//hit_player.gml

var hbox_get_color = get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HITBOX_COLOR);

//attack specific stuff
switch (my_hitboxID.attack)
{
    case 49: //final strong
        if (my_hitboxID.hbox_num == 2)
        {
            var fx = spawn_hit_fx(x+32*spr_dir, y-16 - hit_player_obj.char_height / 2, fx_fs_bighit);
            fx.depth = depth - 3;
            fx = spawn_hit_fx(x+32*spr_dir, y-16 - hit_player_obj.char_height / 2, fx_fs_release);
        }
    case AT_DAIR:
        if (my_hitboxID.hbox_num == 1) set_grab_id();
        else my_grab_id = noone;
        break;
    case AT_BAIR:
        if (my_hitboxID.hbox_num < 3)
        {
            if (hit_player_obj.state == PS_HITSTUN)
            {
                hit_player_obj.old_hsp = old_hsp;
                old_vsp = hit_player_obj.old_vsp - (y - hit_player_obj.y)/20;
            }
        }
        break;
    case AT_UAIR:
        sound_play(asset_get("sfx_blow_heavy2"));
        shake_camera(7 + floor(hit_player_obj.orig_knock/3), 4 + floor(hit_player_obj.orig_knock/16))
        break;
}

//final strong rune charge
if (my_hitboxID.attack != 49 && has_superspell && superspell_cur < superspell_max)
{
    superspell_cur += (hit_player_obj == darkness_id) ? my_hitboxID.damage * 2 : my_hitboxID.damage;
}

/////////////////////////////////////// EVEYRTHING BELOW THIS POINT WILL ONLY WORK WITH A PLAYER LIMIT ///////////////////////////////////////

hit_player_lock ++;
if (hit_player_lock > hit_player_lockthresh && hit_player_obj != darkness_id ||
    hit_player_obj.clone || hit_player_obj.custom_clone && hit_player_obj.player < 5 ||
    "has_darkness" not in self
) exit;

dark_shield_gain_counter = min(floor(my_hitboxID.damage + (my_hitboxID.damage * strong_charge/60 * 0.6)), max_dark_shield_hp);

//darkness mechanic
with (hit_player_obj)
{
    //used for parry/dodge punish
    /*
     || (prev_state == PS_ROLL_FORWARD || prev_state == PS_ROLL_BACKWARD || prev_state == PS_PARRY || prev_state == PS_TECH_FORWARD || prev_state == PS_TECH_BACKWARD ||
        prev_state == PS_AIR_DODGE) && rumia_enemy_last_window == 2 || prev_state == PS_TECH_GROUND || prev_state == PS_WALL_TECH
    */

    ///////////////////////////////////////// DARKNESS TRANSFER /////////////////////////////////////////
    if (dark_state == -1 && other.graze_delay == 0 &&
        (other.self_darkness && hbox_get_color > other.hb_color[0] ||
        other.dark_state == -1 && other.darkness_id == noone && (prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR) && get_num_hitboxes(attack) > 0))
    {
        darkness_owner = other;
        darkness_owner.darkness_id = self;
        if (darkness_owner.dark_state != -1) //transport darkness
        {
            darkness_owner.dark_state = 2;
            dark_state = 3;
        }
        else dark_state = 0; //spawn darkness
        darkness_owner.dark_timer = 0;
        darkness_owner.dark_image = 0;

        if (prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR || prev_state == PS_ROLL_FORWARD || prev_state == PS_ROLL_BACKWARD || prev_state == PS_PARRY ||
            prev_state == PS_TECH_FORWARD || prev_state == PS_TECH_BACKWARD || prev_state == PS_TECH_GROUND || prev_state == PS_WALL_TECH)
        {
            hitstop *= other.counter_hitpause_mult;

            with (darkness_owner) if (!self_darkness)
            {
                hitstop *= counter_hitpause_mult;
                dark_shield_hp += dark_shield_gain_counter;

                sound_play(asset_get("sfx_zetter_shine_charged"));
                spawn_hit_fx(
                    lerp(x, other.x,  0.5),
                    lerp(y - char_height / 2, other.y - other.char_height / 2,  0.5),
                    HFX_OLY_SHINE_SMALL
                );
                var fx = spawn_hit_fx(other.x, other.y - other.char_height / 2, fx_graze);
                fx.depth = depth - 1;

                //text
                spawn_hit_fx(
                    lerp(x, other.x,  0.5),
                    lerp(y - char_height / 2, other.y - other.char_height / 2,  0.5),
                    msg_counter
                );

                if (guilty_gear_va) sound_play(sound_get("ggsfx_counter"));
            }
        }
    }

    if (hbox_get_color != other.hb_color[2] && other.my_hitboxID.attack != 0) exit;

    ////////////////////////////////////////// DARKNESS CONSUME /////////////////////////////////////////
    
    if (dark_state == 1 && ("self_darkness" not in self || !self_darkness) && !do_dark_blast)
    {
        if (other.my_hitboxID.attack != 49)
        {
            other.dark_hit_angle = floor(point_direction(x, y, x + old_hsp, y + old_vsp)); //predict direction they are gonna fly to and store it
            other.dark_consume_kb = orig_knock * other.dark_consume_kb_mult;
            
            hitstop = 15;
            other.hitstop = hitstop;

            should_make_shockwave = false;
            do_dark_blast = true;
        }
        else //final strong consumes darkness automatically
        {
            orig_knock *= other.dark_consume_kb_mult;
            take_damage(player, other.player, 10);
            dark_state = -1;
            other.darkness_id = noone;
        }
    }
}

//darkness consume hitbox
if (my_hitboxID.attack == 0 && my_hitboxID.hbox_num == 1)
{
    //fs meter lets dark consume give meter juice based on dark orb health
    if (has_superspell && superspell_cur < superspell_max) superspell_cur += dark_shield_hp;

    with (hit_player_obj)
    {
        dark_state = -1;
        other.darkness_id = noone; //just in case
    }
}

#define set_grab_id
{
    if (my_grab_id == noone && !hit_player_obj.clone && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) && !hit_player_obj.bubbled)
    {
        my_grab_id = hit_player_obj;
    }
}