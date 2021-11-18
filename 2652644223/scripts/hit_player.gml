last_attack_hit = attack;
last_hit_timer = 240;

if((my_hitboxID.attack == AT_USTRONG || my_hitboxID.attack == AT_UTILT) && my_hitboxID. hbox_num == 1)
{
    hit_player_obj.x = lerp(hit_player_obj.x, x + (20*spr_dir), 0.5)
    hit_player_obj.y = lerp(hit_player_obj.y, y - 60, 0.5)
}
if(my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 2)
{
    set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 40);
    set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
    hitpause = false;
}