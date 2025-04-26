//state1 = just spawn
//
//spawn animation

if(state == 1){
        sprite_index = sprite_get("car");
    if(animation == 0.2){
        sound_play(asset_get("mfx_coin_portal"));
    }
    animation += 0.35;
    image_index += 0.35;
    if(animation >= 4){
        create_hitbox(AT_JAB, 2, x, y);
        instance_destroy();
    }
}
if(state == 2){
	player_id.move_cooldown[AT_FAIR] = 10;
//spawn animation
//sprite_index = sprite_get("empty_sprite");
if(fair_oppo_count == 1){
	timer = 15;
	fair_oppo_count = 0;
}

if(fair_oppo_count == 2){
	timer = 10;
	fair_oppo_count = 0;
}

if(fair_oppo_count == 3){
	timer = 5;
	fair_oppo_count = 0;
}

if(fair_oppo_count == 0){
	timer--;
	if(timer == 0){
		sound_play( sound_get( "short" ) );
		player_id.grabbed.x = x;
		player_id.grabbed.y = y;
		instance_destroy();
	}
}
}
