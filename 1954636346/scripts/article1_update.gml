//

fake_image_index += 0.2;

var got_hit = false;

with pHitBox if (place_meeting(x, y - 4, other) || place_meeting(x, y + 4, other)){
	got_hit = true;
	other.last_player = player;
}

with oPlayer with other if place_meeting(x, y + 5, other){
	got_hit = true;
	last_player = other.player;
}

if got_hit && !has_gotten_hit && !hit_timer{
	hit_count++;
	
	hit_timer = hit_timer_max;
	has_gotten_hit = true;
	
	coin = instance_create(x, y, "obj_stage_article", 2);
	coin.hit_txt = string(hit_count * 100);
	if !(hit_count % 100){
		coin.hit_txt = "1UP";
		hit_count = 0;
		sound_play(sfx_life);
		set_player_stocks(last_player, get_player_stocks(last_player) + 1);
		text_color = get_player_hud_color(last_player);
	}
	else{
		text_color = c_white;
	}
	text_vsp = -6;
	text_y = 32;
	
	sound_play(sfx_block_hit);
}

if hit_timer{
	var offset = sin(hit_timer * 3.1415 / hit_timer_max);
	
	size = 1 + offset * 0.5;
	
	y = start_y - offset * 20;
	
	hit_timer--;
}

else{
	y = start_y;
	size = 1;
}

if (text_vsp < 0){
	text_vsp += 0.5;
}
else{
	text_vsp = 0;
}

text_y += text_vsp;



if respawn_timer{
	respawn_timer++;
	
	if respawn_timer == respawn_timer_max{
		has_gotten_hit = false;
		respawn_timer = 0;
	}
}



if (is_laststock() || debug) && !hit_timer has_gotten_hit = false;

spr_current = ((has_gotten_hit && !hit_timer) ^^ (respawn_timer && (respawn_timer % 10 < 5))) ? spr_block_used : spr_block;