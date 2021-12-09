// other_post_draw.gml
// Draws sprites behind the other player
// Use other_player_id to refer to this character's files

// draw_debug_text(x, y - 100, "vsp: " + string(vsp))
// draw_debug_text(x, y - 120, "hsp: " + string(hsp))

var curse_tick = noone;
var curse_mark = noone;
var curse_consume = noone;
var curse_intro = noone;

with (other_player_id){
	curse_tick = sprite_get("curse_tick");
	curse_mark = sprite_get("curse_pin");

	curse_consume = sprite_get("curse_pin_consume");
	curse_intro = sprite_get("curse_pin_intro");
}


with (other_player_id){
	shader_start();


	switch(other.mimikyu_curse_tick){
		case 1:
			draw_sprite(curse_tick, 0, other.x - 25, other.y - other.char_height - 15);
		break;

		case 2:
			draw_sprite(curse_tick, 0, other.x - 25, other.y - other.char_height - 15);
			draw_sprite(curse_tick, 0, other.x, other.y - other.char_height - 20);
		break;

		case 3:
		break;
	}


	if (other.mimikyu_curse){

		if (other.curse_anim_timer >= 28){
			draw_sprite(curse_mark, 0, other.x, other.y - other.char_height);
		}
		else {
			draw_sprite(curse_intro, other.curse_anim_timer / 4, other.x, other.y - other.char_height + 20);
		}
		
		if (other.curse_anim_timer <= 28){
			other.curse_anim_timer++;
		}
	}
	else {

		/*
		if (other.curse_anim_timer >= 28){
			draw_sprite(curse_consume, other.curse_anim_timer / 4, other.x, other.y - other.char_height + 20);
			
			other.curse_anim_timer++;
	
		}
		*/

		if (other.curse_anim_timer != 0){
			other.curse_anim_timer = 0;
		}

	}

	shader_end();
}
