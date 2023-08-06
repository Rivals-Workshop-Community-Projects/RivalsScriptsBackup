//article3_init.gml

sprite_index = sprite_get("empty");
depth = -5;

player_id.shards_exist++;
var shard_number = 4*(player_id.shards_exist);
shard_spread = player_id.shard_spread;
var shard_hdir = player_id.hsp/abs(player_id.hsp);
var shard_vdir = player_id.vsp/abs(player_id.vsp);
if player_id.hsp == 0{ shard_hdir = 1; }
if player_id.vsp == 0{ shard_vdir = 1; }
shard_before_break = 0;
shard_sprite = 0;

switch(shard_spread){
	case 1: //explosion
		shard_size = sprite_get("shards");
		x = x + ((random_func_2(1+shard_number, 4, true) * 16) - 32);
		y = y + ((random_func_2(2+shard_number, 4, true) * 16) - 32);
		shard_before_break = random_func_2(3+shard_number, 6, true) + 24;
		shard_sprite = random_func_2(4+shard_number, 6, true);

		hsp = (random_func_2(1+shard_number, 32, true)/8) - 2;
		vsp = (random_func_2(2+shard_number, 32, true)/8) - 4;
	break;
	case 2: //directional
		if shard_hdir == 1 || shard_hdir == -1 {
			shard_size = sprite_get("shards");
			x = x + ((random_func_2(1+shard_number, 4, true) * 16) - 32*(shard_hdir + 1));
			y = y + ((random_func_2(2+shard_number, 4, true) * 16) - 32);
			shard_before_break = random_func_2(3+shard_number, 6, true) + 24;
			shard_sprite = random_func_2(4+shard_number, 6, true);

			hsp = (random_func_2(1+shard_number, 32, true)/8) - 2*(shard_hdir + 1);
			vsp = (random_func_2(2+shard_number, 32, true)/8) - 2*(shard_vdir + 1);
			
		} else {
			x = x + ((random_func_2(1+shard_number, 4, true) * 16) - 32);
			y = y + ((random_func_2(2+shard_number, 4, true) * 16) - 32);
			shard_before_break = random_func_2(3+shard_number, 6, true) + 24;
			shard_sprite = random_func_2(4+shard_number, 6, true);

			hsp = (random_func_2(1+shard_number, 32, true)/8) - 2;
			vsp = (random_func_2(2+shard_number, 32, true)/8) - 4;
		}
	break;
	case 3: //explosion small
		shard_size = sprite_get("shards_small");
		x = x + ((random_func_2(1+shard_number, 4, true) * 4) - 8);
		y = y + ((random_func_2(2+shard_number, 4, true) * 4) - 8);
		shard_before_break = random_func_2(3+shard_number, 6, true) + 24;
		shard_sprite = random_func_2(4+shard_number, 6, true);

		hsp = (random_func_2(1+shard_number, 32, true)/16) - 2;
		vsp = (random_func_2(2+shard_number, 32, true)/16) - 4;
	break;
	case 4: //directional small
		if shard_hdir == 1 || shard_hdir == -1 {
			shard_size = sprite_get("shards_small");
			x = x + ((random_func_2(1+shard_number, 4, true) * 16) - 32*(shard_hdir + 1));
			y = y + ((random_func_2(2+shard_number, 4, true) * 16) - 32);
			shard_before_break = random_func_2(3+shard_number, 6, true) + 24;
			shard_sprite = random_func_2(4+shard_number, 6, true);

			hsp = (random_func_2(1+shard_number, 32, true)/8) - 2*(shard_hdir + 1);
			vsp = (random_func_2(2+shard_number, 32, true)/8) - 2*(shard_vdir + 1);
			
		} else {
			x = x + ((random_func_2(1+shard_number, 4, true) * 16) - 32);
			y = y + ((random_func_2(2+shard_number, 4, true) * 16) - 32);
			shard_before_break = random_func_2(3+shard_number, 6, true) + 24;
			shard_sprite = random_func_2(4+shard_number, 6, true);

			hsp = (random_func_2(1+shard_number, 32, true)/8) - 2;
			vsp = (random_func_2(2+shard_number, 32, true)/8) - 4;
		}
	break;
	case 5: //explosion small
		shard_size = sprite_get("shards");
		spawn_x = x;
		spawn_y = y;
		x = x + ((random_func_2(1+shard_number, 8, true) * 16) - 32);
		y = y + ((random_func_2(2+shard_number, 8, true) * 16) - 32);
		
		shard_before_break = 0;
		angletocenter = point_direction(x, y, spawn_x, spawn_y);
		shard_sprite = random_func_2(4+shard_number, 6, true);
		
		depth = -5;
	break;
}