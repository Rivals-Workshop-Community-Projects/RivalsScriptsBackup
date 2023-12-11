//Purple Galaxy Effect Fatality
if (instance_exists(hit_player_obj) && hit_player_obj.activated_kill_effect){
	purple += 1;
}

if (instance_exists(hit_player_obj) && !hit_player_obj.activated_kill_effect){
	purple = 0;
}

if (instance_exists(hit_player_obj) && hit_player_obj.activated_kill_effect && purple == 1 && spr_dir == 1){
    	var fx = spawn_hit_fx(x, y-100, fatality)
		fx.depth = -10
}

if (instance_exists(hit_player_obj) && hit_player_obj.activated_kill_effect && purple == 1 && spr_dir == -1){
    	var fx = spawn_hit_fx(x, y-100, fatality2)
		fx.depth = -10
}



//Flip Animations
if (jump_pressed && free && right_down && spr_dir == 1){
	if (state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_IDLE_AIR){
		front_flip = true;
		flip_timer = 30;
	}
}

if (jump_pressed && free && left_down && spr_dir == 1){
	if (state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_IDLE_AIR){
		back_flip = true;
		flip_timer = 30;
	}
}

if (jump_pressed && free && left_down && spr_dir == -1){
	if (state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_IDLE_AIR){
		front_flip = true;
		flip_timer = 30;
	}
}

if (jump_pressed && free && right_down && spr_dir == -1){
	if (state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_IDLE_AIR){
		back_flip = true;
		flip_timer = 30;
	}
}

if (flip_timer > 0){
	flip_timer -= 1;
}

if (flip_timer == 0){
	front_flip = false;
	back_flip = false;
}

if (state != PS_FIRST_JUMP && state!= PS_DOUBLE_JUMP && state != PS_IDLE_AIR){
	flip_timer = 0;
}




//Uspecial Cooldown Reset
if (!free || state == PS_HITSTUN || state == PS_WALL_JUMP){
	move_cooldown[AT_USPECIAL] = 0;
	move_cooldown[AT_USPECIAL_2] = 0;
}


//Parry FX
if (state == PS_PARRY && state_timer == 16){
	var fx = spawn_hit_fx(x, y-30, expire);
		fx.depth = -10;
}

//Roll FX
if (state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD || state == PS_AIR_DODGE){
	if (state_timer == 2 || state_timer == 28){
		var fx = spawn_hit_fx(x, y-30, expire);
			fx.depth = -10;
	}
}

//Air Dodge FX
if (state == PS_AIR_DODGE){
	if (state_timer == 2 || state_timer == 25){
		var fx = spawn_hit_fx(x, y-30, expire);
			fx.depth = -10;
	}
}

//Waveland FX
if (state == PS_WAVELAND && state_timer == 1){
	var fx = spawn_hit_fx(x, y-30, expire);
			fx.depth = -10;
}




//Alt Colours Hit Effects
if (get_player_color( player ) == 1) {

	set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
	set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 20);

	set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
	set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 20);
	set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
	set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 197);
	set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
	set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 20);

	set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 197);
	set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));

	set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
	set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 20);
	set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 20);
	set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
	set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 20);
	set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 20);
	set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
	set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 20);
	set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 20);

	set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
	set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 20);

	set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
	set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 20);
	set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 197);

	set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
	set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 20);
	set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
	set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 20);

	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
	set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 20);
	set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
	set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 197);

	set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 20);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));

	set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, 197);
	set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));

	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
	set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 20);
	set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
	set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 197);
	set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
	set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 20);

	set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
	set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 20);
	set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_DESTROY_EFFECT, 20);
	set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
	set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 20);
	set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_DESTROY_EFFECT, 20);
	set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
	set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, 20);
	set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_DESTROY_EFFECT, 20);
	set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
	set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT, 20);
	set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_DESTROY_EFFECT, 20);

	set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
	set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 20);
	set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
	set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 20);

	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
	set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 20);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 20);

	set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
	set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, 197);
	set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 20);

	set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
	set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 20);
	set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
	set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 20);
	set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
	set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 20);
	set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
	set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, 20);
	set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
	set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT, 20);

	set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
	set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 20);
	set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
	set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 20);
	set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
	set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 20);

	set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
	set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 20);

	set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
	set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 20);
	set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
	set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 197);
	set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
	set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 197);
	set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
	set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 197);

	set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
	set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 20);
}

if (get_player_color( player ) == 2) {

	set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 3);

	set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
	set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 148);
	set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 3);

	set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 148);
	set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));

	set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 3);
	set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 3);
	set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 3);

	set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 3);

	set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 148);

	set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 3);

	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
	set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 148);

	set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));

	set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, 148);
	set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));

	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
	set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 148);
	set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 3);

	set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_DESTROY_EFFECT, 3);
	set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_DESTROY_EFFECT, 3);
	set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_DESTROY_EFFECT, 3);
	set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_DESTROY_EFFECT, 3);

	set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 3);

	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 3);

	set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
	set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, 148);
	set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 3);

	set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT, 3);

	set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 3);

	set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 3);

	set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
	set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 148);
	set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
	set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 148);
	set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
	set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 148);

	set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 3);
}

if (get_player_color( player ) == 3) {

	set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 256);

	set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 256);
	set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
	set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 112);
	set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 256);

	set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 112);
	set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));

	set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 256);
	set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 256);
	set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 256);
	set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 256);
	set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 256);
	set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 256);

	set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 256);

	set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 256);
	set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 112);

	set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 256);
	set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 256);

	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 256);
	set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
	set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 112);

	set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 256);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));

	set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, 112);
	set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));

	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 256);
	set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
	set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 112);
	set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 256);

	set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 256);
	set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_DESTROY_EFFECT, 256);
	set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 256);
	set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_DESTROY_EFFECT, 256);
	set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, 256);
	set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_DESTROY_EFFECT, 256);
	set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT, 256);
	set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_DESTROY_EFFECT, 256);

	set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 256);
	set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 256);

	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 256);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 256);

	set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
	set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, 112);
	set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 256);

	set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 256);
	set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 256);
	set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 256);
	set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, 256);
	set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT, 256);

	set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 256);
	set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 256);
	set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 256);

	set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 256);

	set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 256);
	set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
	set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 112);
	set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
	set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 112);
	set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
	set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 112);

	set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 256);
}

if (get_player_color( player ) == 4) {

	set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 116);

	set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 116);
	set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
	set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 116);

	set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));

	set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 116);
	set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 116);
	set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 116);
	set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 116);
	set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 116);
	set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 116);

	set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 116);

	set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 116);
	set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 117);

	set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 116);
	set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 116);

	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 116);
	set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
	set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 117);

	set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 116);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));

	set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));

	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 116);
	set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
	set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 116);

	set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 116);
	set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_DESTROY_EFFECT, 116);
	set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 116);
	set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_DESTROY_EFFECT, 116);
	set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, 116);
	set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_DESTROY_EFFECT, 116);
	set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT, 116);
	set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_DESTROY_EFFECT, 116);

	set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 116);
	set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 116);

	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 116);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 116);

	set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
	set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 116);

	set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 116);
	set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 116);
	set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 116);
	set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, 116);
	set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT, 116);

	set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 116);
	set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 116);
	set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 116);

	set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 116);

	set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 116);
	set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
	set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
	set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
	set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 117);

	set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 116);
}

if (get_player_color( player ) == 5) {

	set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));
	set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 194);

	set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));
	set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 194);
	set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
	set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 66);
	set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));
	set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 194);

	set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 66);
	set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));

	set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));
	set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 194);
	set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 194);
	set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));
	set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 194);
	set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 194);
	set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));
	set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 194);
	set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 194);

	set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));
	set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 194);

	set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));
	set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 194);
	set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 66);

	set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));
	set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 194);
	set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));
	set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 194);

	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));
	set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 194);
	set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
	set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 66);

	set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 194);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));

	set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, 66);
	set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));

	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));
	set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 194);
	set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
	set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 66);
	set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));
	set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 194);

	set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));
	set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 194);
	set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_DESTROY_EFFECT, 194);
	set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));
	set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 194);
	set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_DESTROY_EFFECT, 194);
	set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));
	set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, 194);
	set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_DESTROY_EFFECT, 194);
	set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));
	set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT, 194);
	set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_DESTROY_EFFECT, 194);

	set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));
	set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 194);
	set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));
	set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 194);

	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));
	set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 194);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 194);

	set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
	set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, 66);
	set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 194);

	set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));
	set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 194);
	set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));
	set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 194);
	set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));
	set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 194);
	set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));
	set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, 194);
	set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));
	set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT, 194);

	set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));
	set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 194);
	set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));
	set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 194);
	set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));
	set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 194);

	set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));
	set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 194);

	set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));
	set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 194);
	set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
	set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 66);
	set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
	set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 66);
	set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
	set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 66);

	set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_forsburn_disappear"));
	set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 194);
}

if (get_player_color( player ) == 6) {

	set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 9);

	set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 9);
	set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_troupple_splash_big"));
	set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 161);
	set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 9);

	set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 161);
	set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_troupple_splash_big"));

	set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 9);
	set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 9);
	set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 9);
	set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 9);
	set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 9);
	set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 9);


	set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 9);

	set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 9);
	set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_troupple_splash_big"));
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 161);

	set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 9);
	set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 9);

	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 9);
	set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_troupple_splash_big"));
	set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 161);

	set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 9);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));

	set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, 161);
	set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_troupple_splash_big"));

	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 9);
	set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_troupple_splash_big"));
	set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 161);
	set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 9);

	set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 9);
	set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_DESTROY_EFFECT, 9);
	set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 9);
	set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_DESTROY_EFFECT, 9);
	set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, 9);
	set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_DESTROY_EFFECT, 9);
	set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT, 9);
	set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_DESTROY_EFFECT, 9);

	set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 9);
	set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 9);

	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 9);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 9);

	set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_troupple_splash_big"));
	set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, 161);
	set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 9);

	set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 9);
	set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 9);
	set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 9);
	set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, 9);
	set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT, 9);

	set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 9);
	set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 9);
	set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 9);

	set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 9);

	set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 9);
	set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_troupple_splash_big"));
	set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 161);
	set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_troupple_splash_big"));
	set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 161);
	set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_troupple_splash_big"));
	set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 161);

	set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 9);
}




//Runes

//A
if (has_rune("A")){
	set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 7);
	set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 1);

	set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

	set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .2);

}


//B
if (has_rune("B")){
	set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);

	set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
	
	set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
	set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 5);
	set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
	set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
	set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_SFX, 0);

	set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
	set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 2);
	set_hitbox_value(AT_FTILT, 4, HG_WINDOW, 2);

	set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 25);
	set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 25);
	set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 25);
	set_hitbox_value(AT_FTILT, 4, HG_LIFETIME, 25);
}


//C
if (has_rune("C")){
	set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 31);
}


//D
if (has_rune("D")){
	set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 135);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .25);
}


//E
if (has_rune("E")){
	set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 8);
	set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 20);
	set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 18);
}


//F


//G

	
//H
if (has_rune("H")){
	walk_speed = 3.5;
	initial_dash_speed = 6;
	dash_speed = 7.5;
	air_friction = .03;
	knockback_adj = 1.05;
}

//I
if (has_rune("I")){
	set_hitbox_value(AT_FSPECIAL_2, 1, HG_EXTRA_HITPAUSE, 110);
}


//J


//K
if (has_rune("K")){
	set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, .0053);
	set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 900);
}


//L


//M


//N
if (has_rune("N")){
	set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0);
	set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_DSPECIAL_2, 1, HG_EXTRA_HITPAUSE, 50);
}


//O
if (has_rune("O") && BAR < 5){
	knockback_adj = .95;
}

if (has_rune("O") && BAR >= 5 && BAR < 10){
	knockback_adj = .9;
}

if (has_rune("O") && BAR >= 10 && BAR < 15){
	knockback_adj = .85;
}

if (has_rune("O") && BAR == 15){
	knockback_adj = .8;
}


if (has_rune("O") && has_rune("H") && BAR < 5){
	knockback_adj = 1.05;
}

if (has_rune("O") && has_rune("H") && BAR >= 5 && BAR < 10){
	knockback_adj = 1;
}

if (has_rune("O") && has_rune("H") && BAR >= 10 && BAR < 15){
	knockback_adj = .95;
}

if (has_rune("O") && has_rune("H") && BAR == 15){
	knockback_adj = .9;
}



