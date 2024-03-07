//article1_update
if !hitstop timer++;
if state vsp = 10*free;

switch state{
	case 0: //seed
	can_attack = 0;
	vsp = 10;
	image_index = (free? (timer/4)%3: 3);
	if !free{
		vsp = 0;
		state = 7;
		timer = 0;
		sound_play(asset_get("sfx_blow_weak1"), 0, noone, 1);
		with player_id{
			var g = spawn_hit_fx(other.x, other.y, 301);
			g.depth = other.depth+2;
		}
	}
	break;
	
	case 1: //spawn
	can_attack = 0;
	sprite_index = sprite_get("Venus");
	image_index = timer/4;
	if timer >= 19{
		state = 2;
		timer = 0;
	}
	break;
	
	case 2: //idle
	if free die_timer++;
	else die_timer = 0;
	can_attack = 1;
	image_index = 5 + (timer/4)%5;
	var hitpl = collision_rectangle(x - 24, y, x + 16, y - 40, oPlayer, 1, 1);
	if instance_exists(hitpl) && !hitpl.invincible && get_player_team(hitpl.player) != get_player_team(player){
		state = 6;
		timer = 0;
		sound_play(asset_get("sfx_syl_uspecial_travle_start"));
	}
	if die_timer >= 5{
		state = 4;
		timer = 0;
	}
	break;
	
	case 3: //taunt
	if free die_timer++;
	else die_timer = 0;
	can_attack = 1;
	image_index = 10 + (timer/4)%11;
	if timer >= 43{
		state = 2;
		timer = 0;
	}
	var hitpl = collision_rectangle(x - 24, y, x + 16, y - 40, oPlayer, 1, 1);
	if instance_exists(hitpl) && get_player_team(hitpl.player) != get_player_team(player){
		state = 6;
		timer = 0;
		sound_play(asset_get("sfx_syl_uspecial_travle_start"));
	}
	if die_timer >= 5{
		state = 4;
		timer = 0;
	}
	break;
	
	case 4: //despawn
	if timer = 1 sound_play(asset_get("sfx_syl_ustrong_part3"));
	can_attack = 0;
	sprite_index = sprite_get("Venus");
	image_index = 21 + (timer/4)%4;
	if timer >= 16{
		instance_destroy(self);
		exit;
	}
	break;
	
	case 5: //spawn clone and despawn
	can_attack = 0;
	if timer = 1{
		sound_play(asset_get("sfx_syl_ustrong_part1"));
		sound_play(asset_get("sfx_forsburn_cape_swipe"));
	}
	image_index = 25 + (timer/4)%10;
	if timer = 23{
		sound_play(asset_get("sfx_syl_nspecial"));
		sound_play(asset_get("sfx_syl_dstrong"));
		player_id.clone_pl = instance_create(x + 70*spr_dir, y - 10, (player_id.object_index = oPlayer? "oPlayer": "oTestPlayer"));
		player_id.clone_pl.custom_clone = 1;
		player_id.clone_pl.grabbed_invisible = 1;
		player_id.clone_pl.depth = depth+1;
        player_id.main_pl = player_id;
        player_id.clone_pl.main_pl = player_id;
        player_id.clone_pl.clone_pl = player_id.clone_pl;
        player_id.clone_pl.clone_inputs = player_id.clone_inputs;
        player_id.clone_pl.spr_dir = player_id.spr_dir;
        player_id.clone_pl.input_dir = player_id.spr_dir;
        with asset_get("pet_obj") if owner = other.player_id.clone_pl with other.player_id.clone_pl{
			var g = spawn_hit_fx(0, 0, 0);
			g.white = other;
		}
	}
	if timer = 32 sound_play(asset_get("sfx_syl_ustrong_part3"));
	if timer >= 40{
		instance_destroy(self);
		exit;
	}
	break;
	
	case 6: //bite and despawn
	player_id.move_cooldown[AT_DSPECIAL] = 60;
	if timer = 3 sound_play(asset_get("sfx_syl_dstrong"));
	can_attack = 0;
	image_index = 32 - (timer/4);
	if timer = 5 && !hitstop create_hitbox(AT_DSPECIAL, 1, x, y - 30);
	if timer = 20 sound_play(asset_get("sfx_syl_ustrong_part3"));
	if timer >= 28{
		instance_destroy(self);
		exit;
	}
	break;
	
	case 7: //spawn delay
	can_attack = 0;
	sprite_index = sprite_get("dspecialseed");
	image_index = 3;
	if timer >= 20{
		state = 1;
		timer = 0;
		sound_play(asset_get("sfx_plant_ready"));
		sound_play(asset_get("sfx_syl_nspecial"));
	}
	break;
	
	case 8: //venus parried 1
	can_attack = 0;
	sprite_index = sprite_get("Venus");
	image_index = 36 + timer/4;
	if timer >= 15{
		state = 9;
		timer = 0;
	}
	break;
	
	case 9: //venus parried 2
	can_attack = 0;
	sprite_index = sprite_get("Venus");
	image_index = 40 + (timer/5)%3;
	if timer >= 99{
		state = 10;
		timer = 0;
	}
	break;
	
	case 10: //venus parried 3
	can_attack = 0;
	sprite_index = sprite_get("Venus");
	image_index = 46;
	if timer >= 8{
		instance_destroy(self);
		exit;
	}
	break;
}