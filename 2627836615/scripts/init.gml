hfx[0] = hit_fx_create(sprite_get("smoke"),9)
hfx[1] = sprite_get("boosttrail");
hfx[2] = sprite_get("drift");
hfx[3] = sprite_get("drift_one");
hfx[4] = sprite_get("drift_wide");
hfx[5] = hit_fx_create(sprite_get("orb"),2)
hfx[6] = hit_fx_create(sprite_get("line"),120)
hfx[7] = sprite_get("empty_sprite");
hfx[8] = hit_fx_create(sprite_get("spinkick"),12)
ended = 0;

bz[0] = get_stage_data(SD_WIDTH)/2 + get_stage_data(SD_SIDE_BLASTZONE);
bz[1] = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
bz[2] = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);

times_looped = 0;

player_num = 0;

end_timer = 0;


lap_time = array_create(0);

lap_count = get_match_setting(SET_STOCKS);
print("Lap count is "+string(lap_count))

if get_match_setting(SET_PRACTICE) lap_count = 0;

item_leader_time[0] = -1;

item_leader_time_height = 1;
item_leader_time_lap[0] = 0;




image_alpha = 500;

hud_sprs[0] = sprite_get("hud_words");
hud_sprs[1] = sprite_get("hud_relative");
hud_sprs[2] = sprite_get("hud");
hud_sprs[3] = sprite_get("hud_bar");
hud_sprs[4] = sprite_get("itembox");
hud_sprs[5] = sprite_get("block");
hud_sprs[6] = asset_get("result_place_spr_ES");
hud_sprs[7] = sprite_get("arrow");
hud_sprs[8] = sprite_get("orb");
hud_sprs[9] = sprite_get("checker");

hud_txt[0] = string(get_match_setting(SET_STOCKS));

hud_font[0] = asset_get("roaMBLFont");
hud_font[1] = asset_get("fName")
hud_font[2] = asset_get("tinyFont");

