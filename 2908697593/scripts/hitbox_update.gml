// hitbox_update is a script called every frame for each of your character's hitboxes. Always from the prespective of the hitbox.

// Plasma Cutter

if attack == AT_NSPECIAL {
	player_id.attack_cooldown[AT_NSPECIAL] = 90
}

// Detonator Mine

if attack == AT_DSPECIAL{
	if !free hsp = 0;
	if !free || collision_rectangle(x - 1, y, x + 1, y - 40, asset_get("par_block"), 1, 1){
		if arm_timer sprite_index = sprite_get("isaac_detonator_projectile_arm");
		else sprite_index = sprite_get("isaac_detonator_mine");
		image_index = (33 - arm_timer)/33 * 11;
		if free{
			if instance_exists(collision_line(x + 3, y - 10, x + 20, y - 10, asset_get("par_block"), 1, 1)){
				proj_angle = 90;
				mask_index = sprite_get("isaac_detonator_mine_mask2")
			}else if instance_exists(collision_line(x - 3, y - 10, x - 20, y - 10, asset_get("par_block"), 1, 1)){
				proj_angle = -90;
				mask_index = sprite_get("isaac_detonator_mine_mask1")
			}
		}
		hsp = 0;
		vsp = 0;
		if arm_timer arm_timer--;
		if arm_timer == 10 sound_play(sound_get("isaac_detonatormine_armed"))
		if arm_timer == 1 for(var b = 1; b < 5; b++) if b != player_id.player can_hit[b] = 1;
	}
	if !arm_timer{
		colbox = instance_place(x, y, pHitBox);
		if instance_exists(colbox) && !exploded && colbox.player_id == player_id{
			exploded = 1;
			spawn_hit_fx(x, y, 197);
			mask_index = asset_get("hitbox_circle_spr");
			image_index = 0;
			image_xscale = 150/200;
			image_yscale = 150/200;
			hitbox_timer = 0;
			length = 10;
			sound_play(sound_effect);
			sound_effect = 0;
		}
		if exploded visible = 0;
	}
}