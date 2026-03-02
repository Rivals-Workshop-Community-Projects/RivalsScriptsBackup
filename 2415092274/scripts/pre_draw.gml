// pre-draw
if (state==PS_RESPAWN || (state==PS_ATTACK_GROUND && free && attack==AT_TAUNT)){
	draw_sprite_ext( sprite_get("plat_bg"), 0, x, y, 1, 1, 0, -1, 1 ) 
}
if (let_me_go_=="https://soundcloud.com/toryfox2/mus_undynex_ogg"){
	if (get_gameplay_time()%3==get_gameplay_time()%2){
		let_meee_go = random_func( 4, 360, true );
	}
	let_meeee_go = random_func( 6, 360, true );
	//draw_sprite_ext( sprite_get("z_g_a"), 0, hit_player_obj.x, hit_player_obj.y-22+(let_meee_go/300), 1, 4, 90, c_black, 1 );
	draw_sprite_ext( sprite_get("z_g_a"), 0, hit_player_obj.x, hit_player_obj.y-20, 0.9, 6, let_meee_go, c_black, 1 );
	draw_sprite_ext( sprite_get("z_g_a"), 0, hit_player_obj.x, hit_player_obj.y-20, 1, 5, let_meee_go, -1, 1 );
	draw_sprite_ext( sprite_get("z_g_a"), 0, hit_player_obj.x, hit_player_obj.y-20, 0.8, 4, let_meeee_go, c_black, 1 );
	draw_sprite_ext( sprite_get("z_g_a"), 0, hit_player_obj.x, hit_player_obj.y-20, 1, 2.5, let_meeee_go, -1, 1 );
}
