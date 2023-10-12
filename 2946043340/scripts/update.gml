//FSpecial stuff
/*
if (instance_exists(bead_proj)){
	bead_x = bead_proj.x;
	bead_y = bead_proj.y;
}
//FSpecial Bead creating, needs to retrieve it

if (fspecial_used && !fspecial_hit && !instance_exists(bead_proj) && has_hit = false && !instance_exists(bead_article)){
	move_cooldown[AT_FSPECIAL] = 9999;
	bead_article = instance_create(bead_x+20*spr_dir, bead_y, "obj_article2");
	bead_article.vsp = -4;
}
*/

if state == PS_PRATFALL max_fall = ground_friction_crouch;
else max_fall = ground_friction_init;

print(marked_timer)

//Neat way of getting the enemy state
with (oPlayer){
	if (player != other.player){
		other.enemy_state = state;
	}
}

//If the opponent is marked
if (instance_exists(beaded_player) && marked_timer > 0){
	//Ticks down the timer if the multihits weren't trigger
	if (bead_trigger <= 0){
		marked_timer--;	
	}
	//If it triggered it
	if (bead_trigger > 0 && !hitpause){
		bead_trigger--;
		var multihit_hitbox;
		if (bead_trigger%10 == 0){
			multihit_hitbox = create_hitbox(AT_FSPECIAL, 3, beaded_player.x, beaded_player.y-30);
			multihit_hitbox.spr_dir = launch_direction;
		}
		//Spawns the launch hitbox and changes it, deppending on the attack used
		if (bead_trigger == 2){
			switch (attack_used){
				case AT_FSTRONG:
					set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 361);
					set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 8);
					set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, 1.05);
					set_hitbox_value(AT_FSPECIAL, 4, HG_EXTRA_HITPAUSE, 9);
				break;
				case AT_USTRONG:
					set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 90);
					set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 8);
					set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, 1.05);
					set_hitbox_value(AT_FSPECIAL, 4, HG_EXTRA_HITPAUSE, 9);
				break;
				case AT_FAIR:
					set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 45);
					set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 8);
					set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, 1);
					set_hitbox_value(AT_FSPECIAL, 4, HG_EXTRA_HITPAUSE, 9);
				break;
				case AT_FSPECIAL_2:
					set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 361);
					set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 7);
					set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, .9);
					set_hitbox_value(AT_FSPECIAL, 4, HG_EXTRA_HITPAUSE, 9);
				break;
				case AT_DSPECIAL:
					set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 90);
					set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 10);
					set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, 0);
					set_hitbox_value(AT_FSPECIAL, 4, HG_EXTRA_HITPAUSE, 15);
				break;
			}
			var launch_hitbox;
			launch_hitbox = create_hitbox(AT_FSPECIAL, 4, beaded_player.x, beaded_player.y-30);
			launch_hitbox.spr_dir = launch_direction;
			sound_play(sound_get("Hisako_BackLand_3D_02"));
			marked_timer = 0;
			bead_trigger = 0;
			beaded_player.bead_marked = false;
		}
	}
}

//Resets the Mark if the opponent dies with it
if (instance_exists(beaded_player) && (beaded_player.state == PS_RESPAWN || marked_timer <= 0)){
	beaded_player.bead_marked = false;
	marked_timer = 0;
}