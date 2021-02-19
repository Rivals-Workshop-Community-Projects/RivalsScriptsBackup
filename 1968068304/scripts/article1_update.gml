//



//random_func( 23, 100, true )


switch (exist_timer) {

//'create'
case 0:
	
switch (state) {
	case 0: //d-special dirt. spawns hitboxes as the move charges.
		sprite_index = sprite_get("dspecial_dig");
		expired = false;
	break;
	
	case 100: //pebble particle.
		sprite_index = sprite_get("part_smallrocks");
		image_index = random_func( random_index + 1, 3, false );
		hsp += random_func( random_index, 4, true ) - 2;
		vsp += -image_index - 3;
	break;
	
	case 101: //floating pebble.
		sprite_index = sprite_get("part_smallrocks");
		image_index = random_func( random_index + 1, 3, false );
		hsp += random_func( random_index, 5, false ) - 2.5;
		vsp -= random_func( random_index + 2, 3, false );
		expire_time = 60;
	break;
	
	case 102: //taunt pebble.
		sprite_index = sprite_get("part_smallrocks");
		image_index = random_func( random_index + 1, 3, false );
		hsp += random_func( random_index, 3, false ) - 1.5 + spr_dir * 0.25;
		hsp += sign(hsp) * 0.5;
		vsp = -random_func( random_index + 2, 1, false ) - 1;
		expire_time = 25;
	break;
		
} //end switch (state) 'create'
	
//no break

//'step'
default:

switch (state) {
	case 0: //d-special dirt. spawns hitboxes as the move charges.
	
		if (exist_timer mod 5 == 1) {
		
			if (!expired && player_id != noone && instance_exists(player_id) && player_id.state == PS_ATTACK_GROUND && player_id.attack == AT_DSPECIAL && player_id.window < 5) {
				//x = xstart - spr_dir * random_func( 0, 1, true );
				x += spr_dir;
				image_index = (min(3, floor(exist_timer/20)));
				if (exist_timer mod 10 == 1) {
					var temp_x = round(x - spr_dir * (exist_timer * 2.5 - 64) * image_xscale);
					spawn_hit_fx( temp_x , y, 193 );
					spawn_hit_fx( temp_x , y, player_id.epinel_fx_spike  ).depth = player_id.depth - 1;
					sound_play(asset_get("sfx_gus_dirt"));
					var hb = create_hitbox( AT_DSPECIAL, 3, temp_x, y - 16 );
					var hb2 = create_hitbox( AT_DSPECIAL, 7, temp_x, y - 32 );
					var newarticle = instance_create(temp_x, y, "obj_article1");
					newarticle.state = 100;
					newarticle.player_id = player_id;
					
				}
			}
			else {expired = true; }
		}
		
		if (expired) {
			image_alpha -= 0.01;
			if (image_alpha <= 0) destroy = true;
		}
	break; //end case 0
	
	
	case 100: //pebble
		vsp += 0.4;
		hsp *= 0.99;
		if (exist_timer > 20) destroy = true;
	break; //end 100 (pebble)
	
	
	case 101: //floating pebble
	case 102: //taunt pebble
		if (exist_timer >= expire_time) {
			if (exist_timer == expire_time) {
				vsp *= expire_time / 15;
				hsp *= expire_time / 15;
				vsp -= 0.1;
				spawn_hit_fx( x, y, 0 );
			}
			vsp += expire_time / 200 + 0.1;
			hsp *= 0.99;
			
			if (exist_timer > expire_time * 2) destroy = true;
		}
	break; //end 101 (floating pebble), 102 (taunt pebble)
	
} //end switch (state) 'step'


break; //end default (step)
} //end switch (exist_timer)


exist_timer += 1;
if (destroy) { instance_destroy(); }
