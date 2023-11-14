//hitbox_init.gml

//uses_shader = true;

if (destroy_fx == 0) destroy_fx = hit_effect;

if (attack == AT_DSTRONG && hbox_num == 2) sound_play(sound_get("sfx_bluetornado_start"));
loopsound = noone;

if (attack == 0) //stray hitboxes
{
    switch (hbox_num)
    {
        case 1: //rings
            hud_col_sel = [$ffffff, $241ced, $efb700, $b1a3ff, $1de6a8, $808080];
            hud_owner_col = get_match_setting(SET_TEAMS) ? get_player_hud_color(ring_player) : hud_col_sel[ring_player];

            ring_collected = false;
            ring_collect_time = [20, 50];

            ring_flashpoint = 60; //total - flashpoint = start flashing
            ring_flicker = false;
            ring_visible = true;
            ring_spr = sprite_index;

            ring_anim_speed = img_spd;
            fake_image_index = 0;

            orig_grounds = grounds;
            orig_walls = walls;
        case 2: //flickies
            depth = -9;
            break;
        case 3: //sonic wave
            max_speed = abs(hsp);
            length += player_id.runeA_proj_speed + abs(player_id.new_hsp);

            spr_dir = sign(hsp);
            draw_xscale = sign(hsp);
            break;
    }
}
