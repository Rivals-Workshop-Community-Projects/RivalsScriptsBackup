// if stock_held = 1{
//     set_player_stocks( stock_owner, get_player_stocks( stock_owner ) + 1 );
//     stock_owner = noone
//     stock_owner_id = noone
//     stock_held = 0
//     stock_timer = 0
//     //hit_player_object.player.stock_stolen = 0
//     sound_play(asset_get("mfx_coin"))
// }
// if stock_bm = 1{
//     stock_bm = 0
//     stock_timer = 0
//     sound_play(asset_get("mfx_coin"))
// }

if get_player_damage(player) > honey_freeze{
    if (get_player_damage(player) - honey_freeze) <= honey_armor{
        honey_armor -= get_player_damage(player) - honey_freeze
        take_damage(player, -1, (get_player_damage(player) - honey_freeze)*-1)
    }
    if (get_player_damage(player) - honey_freeze) > honey_armor{
        take_damage(player, -1, (honey_armor)*-1)
        honey_armor = 0;
    }
}
uspec_limit = 0;
uspec_limit_limit = 0;
wall_fall = 0;
cling_time = 0;
clinging = false;
sound_stop(pcpm)