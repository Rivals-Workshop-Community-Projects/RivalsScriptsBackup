//hitbox_update.gml

//flips projectile sprite on parry
if (was_parried) draw_xscale = spr_dir;

//if (hitbox_timer == length) spawn_hit_fx(x, y, destroy_fx); //disappear effect when the projectile's lifetime is over

switch (attack)
{
    case AT_DSTRONG:
        if (hitbox_timer >= length-20)
        {
            image_yscale = 0;
            sound_volume(loopsound, 0, 200);
        }
        if (hitbox_timer >= length-1)
        {
            sound_stop(loopsound);
            player_id.dstrong_tornado_hbox = noone;
        }
        break;
    case 0: //stray hitboxes
        switch (hbox_num)
        {
            case 1: //super form rings
                //bounce
                if (free) rec_vsp = vsp;
                else if (!free && abs(rec_vsp) > 1) vsp = abs(rec_vsp) * -0.5;

                with (oPlayer) if (!invincible && place_meeting(x, y, other) && player < 5) with (other)
                {
                    if (ring_player > 0 && (hitbox_timer >= ring_collect_time[0] && ring_player == other.player || hitbox_timer >= ring_collect_time[1]) || ring_player == 0)
                    {
                        var fx = spawn_hit_fx(x, y, hit_fx_create(sprite_get(sprite_index == sprite_get("artc_ring_X") ? "fx_ring_X_collect" : "fx_ring_collect"), 16));
                        fx.uses_shader = false;
                        fx.depth = player_id.depth - 2;
                        fx.draw_angle = random_func(6, 30, true) * 12;
                        sound_stop(sound_get("sfx_ring"));
                        sound_play(sound_get("sfx_ring"));
                        if ("is_bar_sonic" in other && other.has_superform)
                        {
                            other.rings_cur ++;
                            if (other.has_blast) other.blast_cur ++; //rings also increase the fs meter if it's available
                        }
                        ring_collected = true;
                    }
                }

                //flickering
                ring_flicker = (hitbox_timer >= length - ring_flashpoint)
                if (ring_flicker && hitbox_timer % 2 == 0) ring_visible = !ring_visible;
                sprite_index = ring_visible ? ring_spr : asset_get("empty_sprite");

                if (ring_collected || hitbox_timer > 10 && !player_id.playtest_active && check_offscreen(50)) hitbox_timer = length;
                break;
            case 2: //flickies
                spr_dir = sign(hsp);
                draw_xscale = spr_dir;

                if (check_offscreen(50)) hitbox_timer = length;
                else length ++;
                break;
            case 3: //sonic wave
                image_index = lerp(image_number, 0, abs(hsp)/max_speed);
                hsp -= hsp/(length - hitbox_timer);

                if (image_index > 3)
                {
                    image_xscale = 0;
                    image_yscale = 0;
                }
                break;
        }
        break;
}

#define check_offscreen(offset)
{
    if (x < get_stage_data(7) - offset || x > get_stage_data(8) + offset || y < get_stage_data(9) - offset || y > get_stage_data(10) + offset) return true;
    else return false;
}