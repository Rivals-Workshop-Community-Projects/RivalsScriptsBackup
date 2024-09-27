//article1_hit.gml

var hit_var_name = `article${id}_has_hit`;
if (hit_var_name not in enemy_hitboxID)
{
    variable_instance_set(enemy_hitboxID, hit_var_name, true);

    //projectiles are done with the reflect code
    with (enemy_hitboxID)
    {
        if (hit_priority <= 0 || type == 2 && !does_not_reflect && !plasma_safe || ("venus_article_proj_ignore" in self && venus_article_proj_ignore)) exit;
        else
        {
            if ("is_venus_t" in player_id && attack == AT_USPECIAL)
            {
                //angle movement
                var last_angle = point_direction(player_id.hsp, player_id.vsp, 0, 0);
                var output = other.rune_angle - angle_difference(last_angle, other.rune_angle);
                var spd = point_distance(0, 0, player_id.hsp, player_id.vsp);
                player_id.old_hsp = lengthdir_x(spd, output);
                player_id.old_vsp = lengthdir_y(spd, output);

                other.can_be_hit[player_id.player] = 30;
                other.hp -= 0.5;
            }
            else if ("is_venus_t" not in player_id || attack != AT_USPECIAL)
            {
                if (get_player_team(player) != get_player_team(other.player)) other.hp --;
            
                other.hitstop = get_hitstop_formula(
                    abs(other.hp - 4) * 25, //current %
                    damage * lerp(1, 1.6, player_id.strong_charge/60), //hitbox damage, the math is used to add in the strong charge damage increase
                    hitpause, //base hitpause
                    hitpause_growth, //hitpause scaling
                    extra_hitpause //extra hitpause
                );

                if (type != 2)
                {
                    player_id.old_hsp = player_id.hsp;
                    player_id.old_vsp = player_id.vsp;
                    player_id.hitstop = clamp(floor(get_hitstop_formula(
                        abs(other.hp - 4) * 25, //current %
                        damage * lerp(1, 1.6, player_id.strong_charge/60), //hitbox damage, the math is used to add in the strong charge damage increase
                        hitpause, //base hitpause
                        hitpause_growth, //hitpause scaling
                        0 //extra hitpause
                    )), 0, 20);
                    player_id.hitstop_full = player_id.hitstop;
                    player_id.hitpause = true;
                }

                sound_play(sound_effect);
                var fx = spawn_hit_fx(hit_effect_x + other.x, hit_effect_y + other.y, hit_effect); //puts up the hit fx of the hitbox
                fx.hit_angle = spr_dir == 1 ? get_hitbox_angle(self) : get_hitbox_angle(self) - 180; //some hit effects use this variable for angling hit fx
            }

            with (other)
            {
                if (player_id.can_flip_runes)
                {
                    rune_finalflip_angle = get_hitbox_angle(other) % 180 + 90;
                    runeC_hitstop_full = hitstop;
                }
                if (player_id.can_repair_runes && other.player_id == player_id && player_id.charge_cur >= 100 && hp < hp_max)
                {
                    hp ++;
                    if (hp >= hp_max) hp = hp_max;
                    player_id.charge_cur -= 100;
                    sound_play(asset_get("mfx_timertick_holy"));
                    spawn_hit_fx(x, y, player_id.fx_od_stun);
                }
            }
        }
    }

    var temp_sound = sound_play(asset_get("sfx_ice_dspecial_ground"));
    sound_pitch(temp_sound, lerp(0.75, 1.25, random_func(0, 10, true)/10));
    hit_flash = true;
}