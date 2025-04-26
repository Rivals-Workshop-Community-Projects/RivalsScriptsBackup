//hitbox_update.gml

if (image_yscale == 0) do_not_show = true;
if (hitstop > 0)
{
    hitstop--;
    in_hitpause = true;
}
else in_hitpause = false;

switch (attack)
{
    case AT_FSTRONG:
        if (hitbox_timer == length-1)
        {
            var fx = spawn_hit_fx(x, y, player_id.fx_fstrong_proj_end[hbox_num-2]);
            fx.spr_dir = spr_dir;
            fx.draw_angle = proj_angle;
            fx.hsp = hsp/2;
            fx.vsp = vsp/2;
        }

        if (hitbox_timer % 2 == 0)
        {
            var fx = spawn_hit_fx(
                x + (random_func(1, 5, true)-2) * 8 - lengthdir_x(64*spr_dir, proj_angle),
                y + (random_func(2, 5, true)-2) * 8 - lengthdir_y(64, proj_angle),
                player_id.fx_light_follow
            );
            fx.hsp = -hsp/4;
        }
        var move_angle = point_direction(0, 0, hsp, vsp);
        proj_angle = move_angle % 180;
        spr_dir = move_angle > 90 && move_angle <= 270 ? -1 : 1;
        draw_xscale = spr_dir;

        if (hitbox_timer % 8 == 0) with (orig_player_id) sound_play(sound_get("sfx_proj_exist" + string(other.hbox_num-1)), false, 0, 0.2);

        hsp = lerp(orig_hsp, 0, hitbox_timer/length);
        vsp = lerp(orig_vsp, 0, hitbox_timer/length);

        if (place_meeting(x, y, asset_get("par_block")) || place_meeting(x, y, asset_get("par_jumpthrough")) && vsp > 0)
        {
            var fx = spawn_hit_fx(x, y, destroy_fx);
            fx.hit_angle = move_angle;
            hitbox_timer = length;
        }

        if (hbox_num > 2)
        {
            if ("proj_lockout" not in self || proj_lockout <= 0)
            {
                with (pHitBox)
                {
                    if (other != self && (type == 2 || "real_type" in self && real_type == 2) && place_meeting(x, y, other) && !transcendent && hit_priority > 0) with (other)
                    {
                        var fx = spawn_hit_fx(x, y, destroy_fx);
                        fx.hit_angle = move_angle;
                        hitbox_timer = length;
                        sound_play(sound_effect);

                        var temp_proj = create_hitbox(attack, hbox_num-1, x, y);
                        temp_proj.can_hit = can_hit; //apply current can_hit values to the new hitbox
                        var new_spd = 0;
                        with (player_id) new_spd = get_hitbox_value(temp_proj.attack, temp_proj.hbox_num, HG_PROJECTILE_HSPEED);
                        var new_angle = point_direction(0, 0, hsp, vsp);
                        temp_proj.hsp = lengthdir_x(new_spd, new_angle);
                        temp_proj.vsp = lengthdir_y(new_spd, new_angle);
                        temp_proj.draw_colored = false;
                        temp_proj.proj_lockout = proj_lockout_set;
                    }
                }
            }
            else proj_lockout --;
        }
        break;
    case AT_DSTRONG:
        image_index = lerp(0, image_number, hitbox_timer/length);
        if (image_index >= 2) image_yscale = 0;
        in_hitpause = false;
        draw_xscale = spr_dir;
        break;
    default:
        if (was_parried) draw_xscale = spr_dir;
        if (hitbox_timer == length-1) with (orig_player_id) spawn_hit_fx(x, y, destroy_fx);
        break;
}