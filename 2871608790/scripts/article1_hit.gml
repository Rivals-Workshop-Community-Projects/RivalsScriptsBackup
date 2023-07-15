//article1_hit.gml
//nspec items

if (is_hittable && enemy_hitboxID.type == 1)
{
    var hit_var_name = `article${id}_has_hit`;
    if (hit_var_name not in enemy_hitboxID)
    {
        variable_instance_set(enemy_hitboxID, hit_var_name, true);

        if ("url" in enemy_hitboxID.player_id && enemy_hitboxID.player_id.url != 2871608790 ||
        enemy_hitboxID.attack != AT_DSPECIAL && enemy_hitboxID.attack != AT_DSPECIAL_AIR) //not azi players (also excluding dspec)
        {
            with (enemy_hitboxID)
            {
                other.hbox_group = hbox_group;
                other.hbox_player = orig_player;
                other.hbox_attack = attack;
                other.hbox_player = player;
                other.hbox_player_obj = player_id;
                other.hitpause = true;

                //article hitpause
                other.hitstop = floor(get_hitstop_formula(
                    other.item_sim_percent,
                    damage,
                    hitpause,
                    hitpause_growth,
                    extra_hitpause
                ));
                other.hitstop_full = other.hitstop;
                player_id.hitstop = other.hitstop_full;

                sound_play(sound_effect); //plays the hitbox's hit sound... on hit
                spawn_hit_fx( //puts up the hit fx of the hitbox
                    lerp(x, other.x, 0.5) + hit_effect_x*spr_dir,
                    lerp(y, (bbox_top + bbox_bottom)/2, 0.5) + hit_effect_y,
                    hit_effect
                );

                //item specific
                switch (other.item[other.item_type].name)
                {
                    case "bomb": case "soap":
                        //applies knockback to article
                        other.orig_knock = get_kb_formula(
                            other.item_sim_percent,
                            other.item[other.item_type].name == "bomb" ? other.bomb_sim_kb_adj : other.soap_sim_kb_adj,
                            get_match_setting(SET_SCALING) * 2,
                            damage,
                            kb_value,
                            kb_scale
                        );

                        //knockback angle
                        var temp_angle = get_hitbox_angle(self);
                        other.old_hsp = lengthdir_x(other.orig_knock + other.orig_knock * (force_flinch == 1), temp_angle);
                        other.old_vsp = (force_flinch == 1) ? 0 : lengthdir_y(other.orig_knock, temp_angle);

                        //knckback spr_dir, based off old_hsp - but if old_hsp is 0 it will just check the position of the hitbox relative to the item
                        if (other.old_hsp == 0) other.spr_dir = (lerp(x, other.x, 0.5) > other.x) ? 1 : -1;
                        else other.spr_dir = -sign(other.old_hsp);

                        //bounces items back up if they are on the ground
                        if (sign(other.old_vsp) == 1 && !other.free) other.old_vsp *= -1;
                        break;
                    case "car":
                        var temp_angle = get_hitbox_angle(self);
                        other.old_hsp = sign(lengthdir_x(1, temp_angle)) * 3;
                        other.old_vsp = -10;

                        if (other.old_hsp == 0) other.spr_dir = (lerp(x, other.x, 0.5) > other.x) ? 1 : -1;
                        else other.spr_dir = -sign(other.old_hsp);

                        other.car_state = 1;
                        other.car_state_timer = 0;
                        break;
                    case "banana":
                        with (other.player_id) sound_play(sound_get("sfx_splat"));
                        instance_destroy(other);
                        exit;
                }
            }

            item_hit_lockout = hitstop_full + floor(orig_knock/2);
        }
        else
        {
            //if the owner of the hitbox shouldn't hit it, this will prevent them from going into hitstop (hitpause)
            //fun fact: article#_hit runs BEFORE hit_player
            with (enemy_hitboxID.player_id)
            {
                hitstop = 0;
                hitpause = 0;
            }
        }
    }
}