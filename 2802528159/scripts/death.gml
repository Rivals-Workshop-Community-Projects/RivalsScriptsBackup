if(get_player_stocks(player) == 1){
    sound_stop(sound_get("radar_sound"));
}
plate_hp = (has_rune("H")? 50: 30);
plate = 0;
if awareness > 0 awareness -= 150;
if awareness < 0 awareness = 0;
sound_stop(sound_get("beep"));
mask_index = sprite_get("def_mask");
move_cooldown[AT_USPECIAL] = 0;
should_vis = 1;
hsp = 0;
vsp = 0;
wall = 0;
image_angle = 0;
spr_angle = 0;