banana_timer++;


if (banana_timer >= banana_lifetime || x > room_width || x < 0 || y > room_height || y < 0){
	state = 2;
	banana_timer_2 = 99;
}

switch(state){

	//Defense
	case 0:
	{	
		collision = create_hitbox( AT_DSPECIAL, 1, x, y);
		collision.can_hit_self = 0;
		collision.x = x;
		collision.y = y;

		if (player_id.state != PS_WALL_JUMP){
			y = player_id.y+2;
			x = player_id.x-player_id.spr_dir*50;
		} else {
			y = player_id.y+44;
			x = player_id.x-player_id.spr_dir*12;	
		}
	}
	break;

	//Dropped
	case 1:
	{	
		collision = create_hitbox( AT_DSPECIAL, 1, x, y);
		collision.x = x;
		collision.y = y;

		vsp = 10;
		can_be_grounded = true;
		ignores_walls = false;

		if (player_id.hsp > 3 || player_id.hsp < -3){
			collision.can_hit_self = 1;
		}

		//unable to use the move while banana is down
		player_id.move_cooldown[AT_DSPECIAL] = 999;
	}
	break;

	//Dead
	case 2:
	{	
		banana_timer_2++;

		image_index = 1;
		player_id.banana_present = 0;

		//spr_dir
		if (banana_timer_2 == 1){
			if (place_meeting(x,y,pHurtBox)){
				nearest1 = instance_nearest(x,y,pHurtBox);
				start_sliding = 1;
				if (nearest1.x < x){
					spr_dir = 1;
				} else spr_dir = -1;
			} else

			if (place_meeting(x,y,asset_get("pHitBox"))){
				nearest2 = instance_nearest(x,y,asset_get("pHitBox"));
				if (nearest2.x < x){
					spr_dir = 1;
				} else spr_dir = -1;
			}
		}

		//sliding
			if (start_sliding = 1){
				if(!free){
					hsp = spr_dir*4;
				}
			}
		
		//regular cooldown
		if (player_id.disable_banana_cooldown == 1){
			player_id.move_cooldown[AT_DSPECIAL] = 0;
		}	else player_id.move_cooldown[AT_DSPECIAL] = 180;

		if (banana_timer_2 >= 16){
			instance_destroy(collision);
			instance_destroy(self);
		}
	}
	break;
}