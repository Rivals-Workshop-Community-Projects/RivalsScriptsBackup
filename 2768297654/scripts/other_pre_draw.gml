var fx_image_index2 = get_gameplay_time() / 2.2;
var temp_x = x;
var temp_y = y;
if (other_combo_marked and other_combo_num != 0)
{
    with other_player_id
    {
        draw_sprite_ext(sprite_get("combo_circle_back"+string(other.other_combo_num)),fx_image_index2,temp_x - 63,temp_y - 60,2,2,0,c_white,0.65);
    }
}

if (get_gameplay_time() < 120){
	if(get_gameplay_time() == 119){
			if(taunt_down && !other_player_id.taunt_down){
			    with(other_player_id){
		sound_play(sound_get("dusterbass_miss"), false, noone, 1.5);
		}other_player_id.duster_muted = true;				
				}
			}
}