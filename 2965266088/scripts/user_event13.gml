//hit_player.gml

var hbox_get_color = get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HITBOX_COLOR);
true_dmg = my_hitboxID.damage * lerp(1, 1.6, strong_charge/60);

//attack specific stuff
switch (my_hitboxID.attack)
{
    case 49: //final strong
        if (my_hitboxID.hbox_num == 2)
        {
            var fx = spawn_hit_fx(x+32*spr_dir, y-16 - hit_player_obj.char_height / 2, fx_fs_bighit);
            fx.depth = depth - 3;
            fx = spawn_hit_fx(x+32*spr_dir, y-16 - hit_player_obj.char_height / 2, fx_fs_release);

            //final strong consumes darkness automatically
            hit_player_obj.orig_knock *= dark_consume_kb_mult;
            with (hit_player_obj) take_damage(player, other.player, 10);
            dark_state = -1;
            dark_shield_hp = -30;
        }
    case AT_DAIR:
        if (my_hitboxID.hbox_num == 1) set_grab_id();
        else my_grab_id = noone;
        break;
    case AT_BAIR:
        if (my_hitboxID.hbox_num < 3)
        {
            hit_player_obj.old_hsp = old_hsp;
            old_vsp = hit_player_obj.old_vsp - (y - hit_player_obj.y)/20;
        }
        break;
    case AT_UAIR:
        sound_play(asset_get("sfx_blow_heavy2"));
        shake_camera(7 + floor(hit_player_obj.orig_knock/3), 4 + floor(hit_player_obj.orig_knock/16))
        break;
}

//final strong rune charge
if (my_hitboxID.attack != 49 && has_superspell && superspell_cur < superspell_max) superspell_cur += true_dmg;

if !("clone" in hit_player_obj && hit_player_obj.clone || "custom_clone" in hit_player_obj && hit_player_obj.custom_clone)
{
    //darkness mechanic
    if ((all_dark_consume_rune && hbox_get_color == hb_color[1] || hbox_get_color == hb_color[2]) && hit_player_obj == dark_target && !hit_player_obj.do_dark_blast)
    {
        with (hit_player_obj)
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
    if (hbox_get_color == hb_color[1] && dark_target != noone || hbox_get_color == hb_color[2] && dark_target == self)
    {
        //transfer to hit enemy
        if (hit_player_obj.dark_owner == noone && dark_target == self &&
            ("clone" not in hit_player_obj || !hit_player_obj.clone) && ("custom_clone" not in hit_player_obj || !hit_player_obj.custom_clone))
        {
            dark_state = 3;
            dark_timer = 0;
            dark_target_prev = dark_target;
            dark_target = hit_player_obj;
            hit_player_obj.dark_owner = self;
            hit_player_obj.dark_owner_last = self;
            dark_owner = noone;
        }
    }
}


#define set_grab_id
{
    if (my_grab_id == noone && (hit_player_obj.object_index != oPlayer || 
        ("clone" not in hit_player_obj || !hit_player_obj.clone) &&
        ("custom_clone" not in hit_player_obj || !hit_player_obj.custom_clone) &&
        (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) &&
        ("bubbled" not in hit_player_obj || !hit_player_obj.bubbled)))
    {
        my_grab_id = hit_player_obj;
    }
}