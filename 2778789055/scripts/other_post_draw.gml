//
if(other_scalding == true){
    outline_color = [ 140, 0, 0 ];
	init_shader();
}
if(other_scalding == false){
    outline_color = [ 0, 0, 0 ];
	init_shader();
}


if(other_scalding_timer != 0 && other_scalding){
with(other_player_id){
    if(get_gameplay_time() % 20 == 0){
        snd_rng = random_func(0, 9, true);
        if (snd_rng == 0) {
        spawn_hit_fx(other.x , other.y - 75, steam_effect);	
        }if (snd_rng == 1) {
        spawn_hit_fx(other.x + 20, other.y - 70, steam_effect);	
        }if (snd_rng == 2) {
        spawn_hit_fx(other.x + 10, other.y - 90, steam_effect);	
        }if (snd_rng == 3) {
        spawn_hit_fx(other.x + 25, other.y - 50, steam_effect);	
        }if (snd_rng == 4) {
        spawn_hit_fx(other.x + -25, other.y - 70, steam_effect);	
        }if (snd_rng == 5) {
        spawn_hit_fx(other.x + -20, other.y - 65, steam_effect);	
        }if (snd_rng == 6) {
        spawn_hit_fx(other.x + -5, other.y - 85, steam_effect);	
        }if (snd_rng == 7) {
        spawn_hit_fx(other.x + 10, other.y - 80, steam_effect);	
        }if (snd_rng == 8) {
        spawn_hit_fx(other.x + -15, other.y - 45, steam_effect);	
        }
    }
}
}
//draw_debug_text(x-7, y + -100,string(other_scalding_timer));
