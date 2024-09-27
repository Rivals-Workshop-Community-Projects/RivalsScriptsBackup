//got_parried.gml

true_dmg = my_hitboxID.damage * lerp(1, 1.6, strong_charge/60);

if (is_attacking && attack == AT_DSTRONG && !was_parried) was_parried = true;
if (pratfall_type != 0) pratfall_type = 0;

charge_cur -= charge_max/3;
if (charge_cur <= 0) charge_cur = 0;


if (my_hitboxID.attack == AT_OVERDRIVE && my_hitboxID.hbox_num == 1)
{
    array_push(od_trapped_ids, [hit_player_obj, hit_player_obj.x, hit_player_obj.y]);
    spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - floor(hit_player_obj.char_height/1.75), fx_od_stun);
    sound_play(asset_get("sfx_ori_bash_use"));
    sound_play(asset_get("sfx_abyss_hex_hit"));

    hit_player_obj.perfect_hitpause = false;
    take_damage(hit_player_obj.player, player, my_hitboxID.damage);

    with (asset_get("new_dust_fx_obj")) if (dust_fx == 9 && step_timer == 0)
    {
        x = -3000;
        y = -3000;
        dust_length = 0;
    }
}