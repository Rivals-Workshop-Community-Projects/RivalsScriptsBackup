// code for kamehameha

if my_hitboxID.attack == AT_NSPECIAL{
	sound_get("sfx_blaster_hit");
}

if (!has_rock && suit_power < 160 && !instance_exists(standby_suit)){
	suit_power += my_hitboxID.damage;
}

if (attack == AT_NSPECIAL_2){
	if (my_hitboxID.hbox_num == 2){
		sound_override = true;
		sound_play(sfx_drill_land);
		sound_play(asset_get("sfx_kragg_rock_shatter"));
	}
}

if (attack == AT_FSTRONG && my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num < 4){
	hit_player_obj.y = lerp(hit_player_obj.y, y - 24, 0.2);
}

if (my_hitboxID.attack == AT_DSTRONG){
    var extra_hitstop = round(get_player_damage( hit_player_obj.player )*0.25);
    if (extra_hitstop > 60){
        extra_hitstop = 60;
    }
    hit_player_obj.hitstop += extra_hitstop;
}