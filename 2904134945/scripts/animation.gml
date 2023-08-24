switch(state)
{
	case PS_SPAWN:
		if (state_timer%7==0) introTimer++;
		sprite_index = sprite_get(introTimer<11?"intro":introTimer==11?"walkturn":"idle");
		if (introTimer<0) image_index = 0;
		else if (introTimer<11) image_index = introTimer;
		break;
	case PS_AIR_DODGE:
		if (!free) break;
	case PS_ROLL_BACKWARD:
	case PS_ROLL_FORWARD:
		rollSpr = sprite_index;
		if (image_index<3) rollArray[image_index]={rollX:x,rollY:y,rollDir:spr_dir,rollAlpha:16};
		break;
	case PS_FIRST_JUMP:
	case PS_IDLE_AIR:
		var enemyOffset = -1;
		if (instance_exists(hit_player_obj) && point_distance(x,y,hit_player_obj.x,hit_player_obj.y)<=300) enemyOffset = sign(x-hit_player_obj.x)*spr_dir;
		sprite_index = jumpSprites[sign(round((hsp)*-spr_dir)+enemyOffset)+1];
		break;
	case PS_WALL_JUMP:
		spr_angle = 0;
		draw_x = 0;
		draw_y = 0;
		break;
	case PS_PRATFALL:
		spr_angle = ease_sineOut(uspecAngle,-360*spr_dir,min(state_timer,22),22);
		var halfHeight = char_height/2+8;
		draw_x = -lengthdir_y(halfHeight, spr_angle);
		draw_y = lengthdir_x(halfHeight, spr_angle)-halfHeight;
		break;
	case PS_ATTACK_GROUND:
	case PS_ATTACK_AIR:
		if (attack == AT_EXTRA_1 && window == 3)
		{
			if (attack_counter<4 || special_counter<4) image_index = 4;
		}
		break;
	case PS_LANDING_LAG:
		if (attack == AT_FAIR)
		{
			sprite_index = sprite_get("fairLand");
			break;
		}
}