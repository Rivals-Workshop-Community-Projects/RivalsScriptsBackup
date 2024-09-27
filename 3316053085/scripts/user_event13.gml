//hit_player.gml

true_dmg = my_hitboxID.damage * lerp(1, 1.6, strong_charge/60);

charge_cur += true_dmg * 2;
if (charge_cur >= charge_max) charge_cur = charge_max;
charge_cur = floor(charge_cur);

with (hit_fx_obj) if (hit_fx == other.fx_light_hit1 || hit_fx == other.fx_light_hit2 || hit_fx == other.fx_light_hit3)
{
    hb_obj = other.my_hitboxID;
    var point_dir = point_direction(other.x, other.y, other.x + other.old_hsp, other.y + other.old_vsp);
    if (other.old_hsp == 0 && other.old_vsp == 0) point_dir = other.spr_angle + 90;
    hit_angle = hb_obj.hit_flipper != 10 ? get_hitbox_angle(hb_obj) : point_dir;
}

switch (my_hitboxID.attack) //attack specific
{
    case AT_UAIR:
        if (my_hitboxID.hbox_num <= 3)
        {
            if (vsp > 0) old_vsp = -1.5;
            if (abs(hsp) > 3) old_hsp *= 0.75;

            sound_play(sound_get("sfx_lighthit1"));
        }
        else sound_play(sound_get("sfx_lighthit2"));
        break;
    case AT_DAIR:
        if (my_hitboxID.hbox_num <= 3 && !fast_falling)
        {
            hit_player_obj.old_vsp = -abs(hit_player_obj.old_vsp);
            if (old_vsp > 1) old_vsp = -0.5;
        }
        else if (my_hitboxID.hbox_num == 4) old_vsp = -5;
        break;
    case AT_FSTRONG:
        if (my_hitboxID.hbox_num > 2)
        {
            var temp_proj = create_hitbox(my_hitboxID.attack, my_hitboxID.hbox_num-1, my_hitboxID.x, my_hitboxID.y);
            temp_proj.can_hit = my_hitboxID.can_hit; //apply current can_hit values to the new hitbox
            var new_spd = get_hitbox_value(temp_proj.attack, temp_proj.hbox_num, HG_PROJECTILE_HSPEED);
            var new_angle = point_direction(0, 0, my_hitboxID.hsp, my_hitboxID.vsp);
            temp_proj.hsp = lengthdir_x(new_spd, new_angle);
            temp_proj.vsp = lengthdir_y(new_spd, new_angle);
            temp_proj.draw_colored = false;
        }

        if (my_hitboxID.hbox_num == 1) sound_play(sound_get("sfx_lighthit2"));
        break;
    case AT_USTRONG:
        if (my_hitboxID.hbox_num <= 2) sound_play(sound_get("sfx_lighthit1"));
        else sound_play(sound_get("sfx_lighthit2"));
        break;
    case AT_DSTRONG:
        if (dstrong_ex_uses <= dstrong_ex_charges)
        {
            if (my_hitboxID.hbox_num == 1)
            {
                hit_player_obj.hitstop += 8;
                hit_player_obj.hitstop_full = hit_player_obj.hitstop;

                set_hitbox_value(attack, 2, HG_BASE_KNOCKBACK, get_hitbox_value(attack, 1, HG_BASE_KNOCKBACK));
                set_hitbox_value(attack, 2, HG_KNOCKBACK_SCALING, get_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING));
            }
            if (my_hitboxID.hbox_num == 2) hit_player_obj.x = my_hitboxID.x;
            hit_player_obj.x += my_hitboxID.spr_dir * 16; //push enemies into the hitboxes

            if (dstrong_ex_uses < dstrong_ex_charges) hit_player_obj.should_make_shockwave = false;
            else
            {
                sound_play(asset_get("sfx_ori_energyhit_medium"), false, 0, 0.4, 1.2);
            }
        }

        if (my_hitboxID.hbox_num == 1) sound_play(sound_get("sfx_lighthit2"));
        else sound_play(sound_get("sfx_lighthit1"));
        break;
    case AT_USPECIAL:
        sound_play(sound_get("sfx_lighthit1"));
        break;
    case 49: //overdrive
        if (my_hitboxID.hbox_num == 1)
        {
            array_push(od_trapped_ids, [hit_player_obj, hit_player_obj.x, hit_player_obj.y]);
            spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - floor(hit_player_obj.char_height/1.75), fx_od_stun);
            sound_play(asset_get("sfx_ori_bash_use"));
            sound_play(asset_get("sfx_abyss_hex_hit"));
        }
        if (my_hitboxID.hbox_num == 2)
        {
            var fx = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - floor(hit_player_obj.char_height/1.75), fx_light_hit3);
            fx.spr_dir = 1;
            fx.hit_angle = point_direction(x, y, hit_player_obj.x, hit_player_obj.y);
        }
        break;
}

if (air_hit_bounce_rune) switch (my_hitboxID.attack)
{
    case AT_DAIR: if (my_hitboxID.hbox_num < get_num_hitboxes(my_hitboxID.attack)) break;
    case AT_USTRONG: if (do_ustrong_ex && my_hitboxID.hbox_num <= 2) break;
    case AT_FTILT: case AT_DATTACK: case AT_NAIR: case AT_UAIR: case AT_FAIR: case AT_BAIR: case AT_FSPECIAL:
        if (free)
        {
            old_vsp = clamp(
                -abs(hit_player_obj.old_vsp) * lerp(
                    1.1,
                    0.6,
                    air_attacks_total/air_attacks_total_max),
                -13,
                -5
            );
        }

        //every time an air attack is used it has a sort of bounce strength filter that makes it bounce less high every individual attack
        if (air_attacks_total < air_attacks_total_max && my_hitboxID.attack != air_attack_prev)
        {
            air_attacks_total ++;
            air_attack_prev = my_hitboxID.attack;
        }
        break;
}

//overdrive meter
if (can_overdrive > 0 && using_overdrive == 0)
{
    od_color_time = 10;
    od_cur += true_dmg;
}