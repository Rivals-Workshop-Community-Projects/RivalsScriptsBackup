//unload.gml

sound_stop(sound_get("sfx_charge_loop"));
sound_stop(sound_get("sfx_charge_lightspeed_loop"));
sound_stop(sound_get("sfx_bluetornado_loop"));
sound_stop(sound_get("sfx_bluetornado_start"));
sound_stop(sound_get("sfx_fs_woosh_multi"));
sound_stop(sound_get("sfx_emeralds_idle"));

sound_stop(sound_get("_super_intro"));
sound_stop(sound_get("_super_loop"));

set_ui_element(UI_HUD_ICON, sprite_get("hud_sonic_norm"));
set_ui_element(UI_CHARSELECT, asset_get("empty_sprite"));

var pers_fx = spawn_hit_fx(-999, -999, 0);
pers_fx.pause = 120;
pers_fx.uses_shader = false;
pers_fx.visible = false;
pers_fx.player = 0;
pers_fx.real_player = player;
pers_fx.persistent = true;
pers_fx.is_sonic_persist = true;
pers_fx.is_hyper = super_col_lerp_time >= super_col_lerp_time_max*2 && (alt_cur == 0 || alt_cur == 26);
pers_fx.secret_active = secret_active;
for (var i = 0; i < 8; i ++)
{
    pers_fx.colors[i] = cur_colors[i + 8 * uses_super_colors];
    if (!secret_active) pers_fx.shades[i] = shading_data[alt_cur][i + 8 * uses_super_colors];
    else pers_fx.shades[i] = 1;
}
pers_fx.rank_override = rank_override;

if ("multihome_grid" in self && ds_grid_valid(multihome_grid)) ds_grid_destroy(multihome_grid);