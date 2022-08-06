//Dspecial Prevent Use Off Stage
var stage_x = get_stage_data (SD_X_POS);

if (x < stage_x || x > room_width - stage_x){
	move_cooldown[AT_DSPECIAL] = 99999;
}

if (x > stage_x && x < room_width - stage_x){
	move_cooldown[AT_DSPECIAL] = 0;
}



//Ice Clone Gauge
if (GAUGE_CURRENT = 0){
	move_cooldown[AT_FSPECIAL] = 5;
}

if (GAUGE_CURRENT = 1){
	move_cooldown[AT_FSPECIAL] = 10;
}

if (GAUGE_CURRENT = 2){
	move_cooldown[AT_FSPECIAL] = 20;
}

if (GAUGE_CURRENT = 3){
	move_cooldown[AT_FSPECIAL] = 30;
}

if (GAUGE_CURRENT = 4){
	move_cooldown[AT_FSPECIAL] = 40;
}

if (GAUGE_CURRENT = 5){
	move_cooldown[AT_FSPECIAL] = 50;
}

if (GAUGE_CURRENT = 6){
	move_cooldown[AT_FSPECIAL] = 60;
}

if (GAUGE_CURRENT = 7){
	move_cooldown[AT_FSPECIAL] = 70;
}

if (GAUGE_CURRENT = 8){
	move_cooldown[AT_FSPECIAL] = 80;
}

if (GAUGE_CURRENT = 9){
	move_cooldown[AT_FSPECIAL] = 90;
}

if (GAUGE_CURRENT = 10){
	move_cooldown[AT_FSPECIAL] = 100;
}

if (GAUGE_CURRENT = 11){
	move_cooldown[AT_FSPECIAL] = 110;
}


if (GAUGE_CURRENT = GAUGE_MAX){
	move_cooldown[AT_FSPECIAL] = 0;
}



//Alt Colours Hit Effects
if (get_player_color( player ) == 1) {

	set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 125);

	set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
	set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 127);

	set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 125);

	set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 125);

	set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 127);

	set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 125);

	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
	set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 127);

	set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 127);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 127);

	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
	set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 127);
	set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 125);

	set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_DESTROY_EFFECT, 125);
	set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_DESTROY_EFFECT, 125);
	set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_DESTROY_EFFECT, 125);

	set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 125);

	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 125);

	set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 125);

	set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
	set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 127);

	set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 125);
}

if (get_player_color( player ) == 2) {

	set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 3);

	set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
	set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 148);

	set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 3);

	set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 3);

	set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 148);

	set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 3);

	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
	set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 148);

	set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 148);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 148);

	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
	set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 148);
	set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 3);

	set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_DESTROY_EFFECT, 3);
	set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_DESTROY_EFFECT, 3);
	set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_DESTROY_EFFECT, 3);

	set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 3);

	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 3);

	set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 3);

	set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
	set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 148);

	set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 3);
}

if (get_player_color( player ) == 3) {

	set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 117);

	set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
	set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 120);

	set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 117);

	set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 117);

	set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 120);

	set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 117);

	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
	set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 120);

	set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 120);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 120);

	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
	set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 120);
	set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 117);

	set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_DESTROY_EFFECT, 117);
	set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_DESTROY_EFFECT, 117);
	set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_DESTROY_EFFECT, 117);

	set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 117);

	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 117);

	set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 117);

	set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
	set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 120);

	set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 117);
}

if (get_player_color( player ) == 4) {

	set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 13);

	set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
	set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 196);

	set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 13);

	set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 13);

	set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 196);

	set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 13);

	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
	set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 196);

	set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 196);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 196);

	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
	set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 196);
	set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 13);

	set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_DESTROY_EFFECT, 13);
	set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_DESTROY_EFFECT, 13);
	set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_DESTROY_EFFECT, 13);

	set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 13);

	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 13);

	set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 13);

	set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
	set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 196);

	set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 13);
}

if (get_player_color( player ) == 5) {

	set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 150);

	set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_troupple_splash_big"));
	set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 161);

	set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 150);

	set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 150);

	set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_troupple_splash_big"));
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 161);

	set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 150);

	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_troupple_splash_big"));
	set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 161);

	set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 161);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_troupple_splash_big"));
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 161);

	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_troupple_splash_big"));
	set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 161);
	set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 150);

	set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_DESTROY_EFFECT, 150);
	set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_DESTROY_EFFECT, 150);
	set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_DESTROY_EFFECT, 150);

	set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 150);

	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 150);

	set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 150);

	set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_troupple_splash_big"));
	set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 161);

	set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 150);
}



//Runes

//A
if (has_rune("A")){
	set_num_hitboxes(AT_UAIR,6);

	set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2);

	set_hitbox_value(AT_UAIR, 2, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
	set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
	set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
	set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 2);
	set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -100);
	set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 50);
	set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, -1);

	set_hitbox_value(AT_UAIR, 3, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
	set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 6);
	set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 2);
	set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 2);
	set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -100);
	set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 50);
	set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, -1);

	set_hitbox_value(AT_UAIR, 4, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 2);
	set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 9);
	set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 2);
	set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, 2);
	set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -100);
	set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 50);
	set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, -1);

	set_hitbox_value(AT_UAIR, 5, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 2);
	set_hitbox_value(AT_UAIR, 5, HG_WINDOW_CREATION_FRAME, 12);
	set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 2);
	set_hitbox_value(AT_UAIR, 5, HG_HITBOX_X, 2);
	set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -100);
	set_hitbox_value(AT_UAIR, 5, HG_WIDTH, 50);
	set_hitbox_value(AT_UAIR, 5, HG_HITBOX_GROUP, -1);

	set_hitbox_value(AT_UAIR, 6, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_UAIR, 6, HG_WINDOW, 2);
	set_hitbox_value(AT_UAIR, 6, HG_WINDOW_CREATION_FRAME, 15);
	set_hitbox_value(AT_UAIR, 6, HG_LIFETIME, 2);
	set_hitbox_value(AT_UAIR, 6, HG_HITBOX_X, 2);
	set_hitbox_value(AT_UAIR, 6, HG_HITBOX_Y, -100);
	set_hitbox_value(AT_UAIR, 6, HG_WIDTH, 50);
	set_hitbox_value(AT_UAIR, 6, HG_HEIGHT, 80);
	set_hitbox_value(AT_UAIR, 6, HG_SHAPE, 2);
	set_hitbox_value(AT_UAIR, 6, HG_PRIORITY, 5);
	set_hitbox_value(AT_UAIR, 6, HG_DAMAGE, 5);
	set_hitbox_value(AT_UAIR, 6, HG_ANGLE, 90);
	set_hitbox_value(AT_UAIR, 6, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_UAIR, 6, HG_KNOCKBACK_SCALING, .3);
	set_hitbox_value(AT_UAIR, 6, HG_BASE_HITPAUSE, 4);
	set_hitbox_value(AT_UAIR, 6, HG_HITPAUSE_SCALING, .2);
	set_hitbox_value(AT_UAIR, 6, HG_HIT_SFX, asset_get("sfx_ice_nspecial_hit_ground"));
	set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT, 28);
	set_hitbox_value(AT_UAIR, 6, HG_HITBOX_GROUP, -1);
}

if (has_rune("A") && get_player_color( player ) == 1) {
	set_hitbox_value(AT_UAIR, 6, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT, 125);
}

if (has_rune("A") && get_player_color( player ) == 2) {
	set_hitbox_value(AT_UAIR, 6, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT, 3);
}

if (has_rune("A") && get_player_color( player ) == 3) {
	set_hitbox_value(AT_UAIR, 6, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT, 117);
}

if (has_rune("A") && get_player_color( player ) == 4) {
	set_hitbox_value(AT_UAIR, 6, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT, 13);
}

if (has_rune("A") && get_player_color( player ) == 5) {
	set_hitbox_value(AT_UAIR, 6, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT, 150);
}


//B


//C
if (has_rune("C")){
	set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 12);
	set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .7);
}


//D
if (has_rune("D")){
	set_num_hitboxes(AT_USPECIAL, 1);

	set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 3);
	set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 7);
	set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 0);
	set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -35);
	set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 90);
	set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 90);
	set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
	set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 7);
	set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 7);
	set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 45);
	set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 6);
	set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, .9);
	set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 6);
	set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, .4);
	set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 199);
	set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ice_shatter_big"));
}

if (has_rune("D") && get_player_color( player ) == 1) {
	set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
	set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 127);
}

if (has_rune("D") && get_player_color( player ) == 2) {
	set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
	set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 148);
}

if (has_rune("D") && get_player_color( player ) == 3) {
	set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
	set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 120);
}

if (has_rune("D") && get_player_color( player ) == 4) {
	set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
	set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 196);
}

if (has_rune("D") && get_player_color( player ) == 5) {
	set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_troupple_splash_big"));
	set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 161);
}


//E
if (has_rune("E")){
	set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 30);
	set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 30);
}


//F
if (has_rune("F")){
	set_num_hitboxes(AT_FSTRONG,4);

	set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_SPRITE, sprite_get("nspec_proj2"));
	set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_ANIM_SPEED, .25);
	set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_HSPEED, 8);
	set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_VSPEED, 0);
	set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_GRAVITY, 0);
	set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_WALL_BEHAVIOR, 0);
	set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
	set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
	set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_UNBASHABLE, false);
	set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_PARRY_STUN, false);
	set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_DOES_NOT_REFLECT, false);
	set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_IS_TRANSCENDENT, false);
	set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_DESTROY_EFFECT, 28);
	set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_PLASMA_SAFE, false);
	set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 3);
	set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 180);
	set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 60);
	set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -50);
	set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 45);
	set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 30);
	set_hitbox_value(AT_FSTRONG, 4, HG_SHAPE, 0);
	set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 6);
	set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 7);
	set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 45);
	set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_FSTRONG, 4, HG_KNOCKBACK_SCALING, .8);
	set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 4);
	set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, asset_get("sfx_ice_shatter"));
	set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, 28);
}

if (has_rune("F") && get_player_color( player ) == 1) {
	set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_DESTROY_EFFECT, 125);
}

if (has_rune("F") && get_player_color( player ) == 2) {
	set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_DESTROY_EFFECT, 3);
}

if (has_rune("F") && get_player_color( player ) == 3) {
	set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_DESTROY_EFFECT, 117);
}

if (has_rune("F") && get_player_color( player ) == 4) {
	set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_DESTROY_EFFECT, 13);
}

if (has_rune("F") && get_player_color( player ) == 5) {
	set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_DESTROY_EFFECT, 150);
}


//G
if (has_rune("G")){
	set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
}


//H
if (has_rune("H")){
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
}


//I
if (has_rune("I")){
	set_num_hitboxes(AT_FTILT,6);

	set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 90);
	set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, -1);

	set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_SPRITE, sprite_get("ftilt_proj1"));
	set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_ANIM_SPEED, .1);
	set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_HSPEED, 6.5);
	set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_VSPEED, -1);
	set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_GRAVITY, 0);
	set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
	set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
	set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
	set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_UNBASHABLE, false);
	set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_PARRY_STUN, false);
	set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_DOES_NOT_REFLECT, false);
	set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_IS_TRANSCENDENT, false);
	set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_DESTROY_EFFECT, 28);
	set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_PLASMA_SAFE, false);
	set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
	set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 4);
	set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 18);
	set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 25);
	set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -45);
	set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 25);
	set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 25);
	set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 0);
	set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 2);
	set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 3);
	set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 95);
	set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .1);
	set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 4);
	set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 28);
	set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_ice_dspecial_ground"));
	set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, -1);

	set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_SPRITE, sprite_get("ftilt_proj2"));
	set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_ANIM_SPEED, .1);
	set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_HSPEED, 6);
	set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_VSPEED, -2);
	set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_GRAVITY, 0);
	set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
	set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
	set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
	set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_UNBASHABLE, false);
	set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_PARRY_STUN, false);
	set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_DOES_NOT_REFLECT, false);
	set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_IS_TRANSCENDENT, false);
	set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_DESTROY_EFFECT, 28);
	set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_PLASMA_SAFE, false);
	set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 3);
	set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 20);
	set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 25);
	set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -50);
	set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 25);
	set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 25);
	set_hitbox_value(AT_FTILT, 3, HG_SHAPE, 0);
	set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 2);
	set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 3);
	set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 95);
	set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, .1);
	set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 4);
	set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, 28);
	set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_ice_dspecial_ground"));
	set_hitbox_value(AT_FTILT, 3, HG_HITBOX_GROUP, -1);

	set_hitbox_value(AT_FTILT, 4, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_SPRITE, sprite_get("ftilt_proj2"));
	set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_ANIM_SPEED, .1);
	set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_HSPEED, 5.5);
	set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_VSPEED, -3.5);
	set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_GRAVITY, 0);
	set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_WALL_BEHAVIOR, 0);
	set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
	set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
	set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_UNBASHABLE, false);
	set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_PARRY_STUN, false);
	set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_DOES_NOT_REFLECT, false);
	set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_IS_TRANSCENDENT, false);
	set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_DESTROY_EFFECT, 28);
	set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_PLASMA_SAFE, false);
	set_hitbox_value(AT_FTILT, 4, HG_WINDOW, 3);
	set_hitbox_value(AT_FTILT, 4, HG_WINDOW_CREATION_FRAME, 4);
	set_hitbox_value(AT_FTILT, 4, HG_LIFETIME, 20);
	set_hitbox_value(AT_FTILT, 4, HG_HITBOX_X, 24);
	set_hitbox_value(AT_FTILT, 4, HG_HITBOX_Y, -54);
	set_hitbox_value(AT_FTILT, 4, HG_WIDTH, 25);
	set_hitbox_value(AT_FTILT, 4, HG_HEIGHT, 25);
	set_hitbox_value(AT_FTILT, 4, HG_SHAPE, 0);
	set_hitbox_value(AT_FTILT, 4, HG_PRIORITY, 2);
	set_hitbox_value(AT_FTILT, 4, HG_DAMAGE, 3);
	set_hitbox_value(AT_FTILT, 4, HG_ANGLE, 95);
	set_hitbox_value(AT_FTILT, 4, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_FTILT, 4, HG_KNOCKBACK_SCALING, .1);
	set_hitbox_value(AT_FTILT, 4, HG_BASE_HITPAUSE, 4);
	set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT, 28);
	set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, asset_get("sfx_ice_dspecial_ground"));
	set_hitbox_value(AT_FTILT, 4, HG_HITBOX_GROUP, -1);

	set_hitbox_value(AT_FTILT, 5, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_FTILT, 5, HG_PROJECTILE_SPRITE, sprite_get("ftilt_proj3"));
	set_hitbox_value(AT_FTILT, 5, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_FTILT, 5, HG_PROJECTILE_ANIM_SPEED, .1);
	set_hitbox_value(AT_FTILT, 5, HG_PROJECTILE_HSPEED, 5);
	set_hitbox_value(AT_FTILT, 5, HG_PROJECTILE_VSPEED, -5);
	set_hitbox_value(AT_FTILT, 5, HG_PROJECTILE_GRAVITY, 0);
	set_hitbox_value(AT_FTILT, 5, HG_PROJECTILE_WALL_BEHAVIOR, 0);
	set_hitbox_value(AT_FTILT, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
	set_hitbox_value(AT_FTILT, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
	set_hitbox_value(AT_FTILT, 5, HG_PROJECTILE_UNBASHABLE, false);
	set_hitbox_value(AT_FTILT, 5, HG_PROJECTILE_PARRY_STUN, false);
	set_hitbox_value(AT_FTILT, 5, HG_PROJECTILE_DOES_NOT_REFLECT, false);
	set_hitbox_value(AT_FTILT, 5, HG_PROJECTILE_IS_TRANSCENDENT, false);
	set_hitbox_value(AT_FTILT, 5, HG_PROJECTILE_DESTROY_EFFECT, 28);
	set_hitbox_value(AT_FTILT, 5, HG_PROJECTILE_PLASMA_SAFE, false);
	set_hitbox_value(AT_FTILT, 5, HG_WINDOW, 4);
	set_hitbox_value(AT_FTILT, 5, HG_LIFETIME, 20);
	set_hitbox_value(AT_FTILT, 5, HG_HITBOX_X, 23);
	set_hitbox_value(AT_FTILT, 5, HG_HITBOX_Y, -57);
	set_hitbox_value(AT_FTILT, 5, HG_WIDTH, 25);
	set_hitbox_value(AT_FTILT, 5, HG_HEIGHT, 25);
	set_hitbox_value(AT_FTILT, 5, HG_SHAPE, 0);
	set_hitbox_value(AT_FTILT, 5, HG_PRIORITY, 2);
	set_hitbox_value(AT_FTILT, 5, HG_DAMAGE, 3);
	set_hitbox_value(AT_FTILT, 5, HG_ANGLE, 95);
	set_hitbox_value(AT_FTILT, 5, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_FTILT, 5, HG_KNOCKBACK_SCALING, .1);
	set_hitbox_value(AT_FTILT, 5, HG_BASE_HITPAUSE, 4);
	set_hitbox_value(AT_FTILT, 5, HG_VISUAL_EFFECT, 28);
	set_hitbox_value(AT_FTILT, 5, HG_HIT_SFX, asset_get("sfx_ice_dspecial_ground"));
	set_hitbox_value(AT_FTILT, 5, HG_HITBOX_GROUP, -1);

	set_hitbox_value(AT_FTILT, 6, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_FTILT, 6, HG_PROJECTILE_SPRITE, sprite_get("ftilt_proj3"));
	set_hitbox_value(AT_FTILT, 6, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_FTILT, 6, HG_PROJECTILE_ANIM_SPEED, .1);
	set_hitbox_value(AT_FTILT, 6, HG_PROJECTILE_HSPEED, 4);
	set_hitbox_value(AT_FTILT, 6, HG_PROJECTILE_VSPEED, -6);
	set_hitbox_value(AT_FTILT, 6, HG_PROJECTILE_GRAVITY, 0);
	set_hitbox_value(AT_FTILT, 6, HG_PROJECTILE_WALL_BEHAVIOR, 0);
	set_hitbox_value(AT_FTILT, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
	set_hitbox_value(AT_FTILT, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
	set_hitbox_value(AT_FTILT, 6, HG_PROJECTILE_UNBASHABLE, false);
	set_hitbox_value(AT_FTILT, 6, HG_PROJECTILE_PARRY_STUN, false);
	set_hitbox_value(AT_FTILT, 6, HG_PROJECTILE_DOES_NOT_REFLECT, false);
	set_hitbox_value(AT_FTILT, 6, HG_PROJECTILE_IS_TRANSCENDENT, false);
	set_hitbox_value(AT_FTILT, 6, HG_PROJECTILE_DESTROY_EFFECT, 28);
	set_hitbox_value(AT_FTILT, 6, HG_PROJECTILE_PLASMA_SAFE, false);
	set_hitbox_value(AT_FTILT, 6, HG_WINDOW, 4);
	set_hitbox_value(AT_FTILT, 6, HG_WINDOW_CREATION_FRAME, 4);
	set_hitbox_value(AT_FTILT, 6, HG_LIFETIME, 23);
	set_hitbox_value(AT_FTILT, 6, HG_HITBOX_X, 23);
	set_hitbox_value(AT_FTILT, 6, HG_HITBOX_Y, -60);
	set_hitbox_value(AT_FTILT, 6, HG_WIDTH, 25);
	set_hitbox_value(AT_FTILT, 6, HG_HEIGHT, 25);
	set_hitbox_value(AT_FTILT, 6, HG_SHAPE, 0);
	set_hitbox_value(AT_FTILT, 6, HG_PRIORITY, 2);
	set_hitbox_value(AT_FTILT, 6, HG_DAMAGE, 3);
	set_hitbox_value(AT_FTILT, 6, HG_ANGLE, 45);
	set_hitbox_value(AT_FTILT, 6, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_FTILT, 6, HG_KNOCKBACK_SCALING, .4);
	set_hitbox_value(AT_FTILT, 6, HG_BASE_HITPAUSE, 3);
	set_hitbox_value(AT_FTILT, 6, HG_HITPAUSE_SCALING, .2);
	set_hitbox_value(AT_FTILT, 6, HG_VISUAL_EFFECT, 28);
	set_hitbox_value(AT_FTILT, 6, HG_HIT_SFX, asset_get("sfx_ice_dspecial_ground"));
	set_hitbox_value(AT_FTILT, 6, HG_HITBOX_GROUP, -1);
}

if (has_rune("I") && get_player_color( player ) == 1) {
	set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_DESTROY_EFFECT, 125);
	set_hitbox_value(AT_FTILT, 5, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_FTILT, 5, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_FTILT, 5, HG_PROJECTILE_DESTROY_EFFECT, 125);
	set_hitbox_value(AT_FTILT, 6, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_FTILT, 6, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_FTILT, 6, HG_PROJECTILE_DESTROY_EFFECT, 125);
}

if (has_rune("I") && get_player_color( player ) == 2) {
	set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_DESTROY_EFFECT, 3);
	set_hitbox_value(AT_FTILT, 5, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_FTILT, 5, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_FTILT, 5, HG_PROJECTILE_DESTROY_EFFECT, 3);
	set_hitbox_value(AT_FTILT, 6, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_FTILT, 6, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_FTILT, 6, HG_PROJECTILE_DESTROY_EFFECT, 3);
}

if (has_rune("I") && get_player_color( player ) == 3) {
	set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_DESTROY_EFFECT, 117);
	set_hitbox_value(AT_FTILT, 5, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_FTILT, 5, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_FTILT, 5, HG_PROJECTILE_DESTROY_EFFECT, 117);
	set_hitbox_value(AT_FTILT, 6, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_FTILT, 6, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_FTILT, 6, HG_PROJECTILE_DESTROY_EFFECT, 117);
}

if (has_rune("I") && get_player_color( player ) == 4) {
	set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_DESTROY_EFFECT, 13);
	set_hitbox_value(AT_FTILT, 5, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_FTILT, 5, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_FTILT, 5, HG_PROJECTILE_DESTROY_EFFECT, 13);
	set_hitbox_value(AT_FTILT, 6, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_FTILT, 6, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_FTILT, 6, HG_PROJECTILE_DESTROY_EFFECT, 13);
}

if (has_rune("I") && get_player_color( player ) == 5) {
	set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_DESTROY_EFFECT, 150);
	set_hitbox_value(AT_FTILT, 5, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_FTILT, 5, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_FTILT, 5, HG_PROJECTILE_DESTROY_EFFECT, 150);
	set_hitbox_value(AT_FTILT, 6, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_FTILT, 6, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_FTILT, 6, HG_PROJECTILE_DESTROY_EFFECT, 150);
}


//J
if (has_rune("J")){
	set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0);
	set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0);
	set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_JAB, 3, HG_EXTRA_HITPAUSE, 90);
}


//K
if (has_rune("K")){
	set_num_hitboxes(AT_DSTRONG,8);

	set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_SPRITE, sprite_get("ftilt_proj1"));
	set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_ANIM_SPEED, .1);
	set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_HSPEED, 7);
	set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_VSPEED, 0);
	set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_GRAVITY, 0);
	set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
	set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
	set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
	set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_UNBASHABLE, false);
	set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_PARRY_STUN, false);
	set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_DOES_NOT_REFLECT, false);
	set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_IS_TRANSCENDENT, false);
	set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_DESTROY_EFFECT, 28);
	set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_PLASMA_SAFE, false);
	set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
	set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 15);
	set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 25);
	set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -20);
	set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 25);
	set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 25);
	set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 0);
	set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 3);
	set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 3);
	set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 45);
	set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, .4);
	set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 3);
	set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .2);
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 28);
	set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_ice_dspecial_ground"));
	set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, -1);

	set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_SPRITE, sprite_get("ftilt_proj2"));
	set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_ANIM_SPEED, .1);
	set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_HSPEED, 6);
	set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_VSPEED, -2);
	set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_GRAVITY, 0);
	set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
	set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
	set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
	set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_UNBASHABLE, false);
	set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_PARRY_STUN, false);
	set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_DOES_NOT_REFLECT, false);
	set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_IS_TRANSCENDENT, false);
	set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_DESTROY_EFFECT, 28);
	set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_PLASMA_SAFE, false);
	set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 3);
	set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 20);
	set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 25);
	set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -30);
	set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 25);
	set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 25);
	set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 0);
	set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 3);
	set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 3);
	set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 45);
	set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, .4);
	set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 3);
	set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, .2);
	set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 28);
	set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_ice_dspecial_ground"));
	set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, -1);

	set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_SPRITE, sprite_get("ftilt_proj3"));
	set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_ANIM_SPEED, .1);
	set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_HSPEED, 5);
	set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_VSPEED, -5);
	set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_GRAVITY, 0);
	set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_WALL_BEHAVIOR, 0);
	set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
	set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
	set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_UNBASHABLE, false);
	set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_PARRY_STUN, false);
	set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_DOES_NOT_REFLECT, false);
	set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_IS_TRANSCENDENT, false);
	set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_DESTROY_EFFECT, 28);
	set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_PLASMA_SAFE, false);
	set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 3);
	set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 20);
	set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 23);
	set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -40);
	set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 25);
	set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 25);
	set_hitbox_value(AT_DSTRONG, 4, HG_SHAPE, 0);
	set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 3);
	set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 3);
	set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 45);
	set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, .4);
	set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 3);
	set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, .2);
	set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, 28);
	set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_ice_dspecial_ground"));
	set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_GROUP, -1);

	set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_SPRITE, sprite_get("rune_proj1"));
	set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_ANIM_SPEED, .1);
	set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_HSPEED, -7);
	set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_VSPEED, 0);
	set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_GRAVITY, 0);
	set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_WALL_BEHAVIOR, 0);
	set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
	set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
	set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_UNBASHABLE, false);
	set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_PARRY_STUN, false);
	set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_DOES_NOT_REFLECT, false);
	set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_IS_TRANSCENDENT, false);
	set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_DESTROY_EFFECT, 28);
	set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_PLASMA_SAFE, false);
	set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 3);
	set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 15);
	set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, -25);
	set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -20);
	set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 25);
	set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 25);
	set_hitbox_value(AT_DSTRONG, 5, HG_SHAPE, 0);
	set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 3);
	set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 3);
	set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 135);
	set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, .4);
	set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 3);
	set_hitbox_value(AT_DSTRONG, 5, HG_HITPAUSE_SCALING, .2);
	set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, 28);
	set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, asset_get("sfx_ice_dspecial_ground"));
	set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_GROUP, -1);

	set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_SPRITE, sprite_get("rune_proj2"));
	set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_ANIM_SPEED, .1);
	set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_HSPEED, -6);
	set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_VSPEED, -2);
	set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_GRAVITY, 0);
	set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_WALL_BEHAVIOR, 0);
	set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
	set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
	set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_UNBASHABLE, false);
	set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_PARRY_STUN, false);
	set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_DOES_NOT_REFLECT, false);
	set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_IS_TRANSCENDENT, false);
	set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_DESTROY_EFFECT, 28);
	set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_PLASMA_SAFE, false);
	set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW, 3);
	set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 20);
	set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, -25);
	set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, -30);
	set_hitbox_value(AT_DSTRONG, 6, HG_WIDTH, 25);
	set_hitbox_value(AT_DSTRONG, 6, HG_HEIGHT, 25);
	set_hitbox_value(AT_DSTRONG, 6, HG_SHAPE, 0);
	set_hitbox_value(AT_DSTRONG, 6, HG_PRIORITY, 3);
	set_hitbox_value(AT_DSTRONG, 6, HG_DAMAGE, 3);
	set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE, 135);
	set_hitbox_value(AT_DSTRONG, 6, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_DSTRONG, 6, HG_KNOCKBACK_SCALING, .4);
	set_hitbox_value(AT_DSTRONG, 6, HG_BASE_HITPAUSE, 3);
	set_hitbox_value(AT_DSTRONG, 6, HG_HITPAUSE_SCALING, .2);
	set_hitbox_value(AT_DSTRONG, 6, HG_VISUAL_EFFECT, 28);
	set_hitbox_value(AT_DSTRONG, 6, HG_HIT_SFX, asset_get("sfx_ice_dspecial_ground"));
	set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_GROUP, -1);

	set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_DSTRONG, 7, HG_PROJECTILE_SPRITE, sprite_get("rune_proj3"));
	set_hitbox_value(AT_DSTRONG, 7, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_DSTRONG, 7, HG_PROJECTILE_ANIM_SPEED, .1);
	set_hitbox_value(AT_DSTRONG, 7, HG_PROJECTILE_HSPEED, -5);
	set_hitbox_value(AT_DSTRONG, 7, HG_PROJECTILE_VSPEED, -5);
	set_hitbox_value(AT_DSTRONG, 7, HG_PROJECTILE_GRAVITY, 0);
	set_hitbox_value(AT_DSTRONG, 7, HG_PROJECTILE_WALL_BEHAVIOR, 0);
	set_hitbox_value(AT_DSTRONG, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
	set_hitbox_value(AT_DSTRONG, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
	set_hitbox_value(AT_DSTRONG, 7, HG_PROJECTILE_UNBASHABLE, false);
	set_hitbox_value(AT_DSTRONG, 7, HG_PROJECTILE_PARRY_STUN, false);
	set_hitbox_value(AT_DSTRONG, 7, HG_PROJECTILE_DOES_NOT_REFLECT, false);
	set_hitbox_value(AT_DSTRONG, 7, HG_PROJECTILE_IS_TRANSCENDENT, false);
	set_hitbox_value(AT_DSTRONG, 7, HG_PROJECTILE_DESTROY_EFFECT, 28);
	set_hitbox_value(AT_DSTRONG, 7, HG_PROJECTILE_PLASMA_SAFE, false);
	set_hitbox_value(AT_DSTRONG, 7, HG_WINDOW, 3);
	set_hitbox_value(AT_DSTRONG, 7, HG_LIFETIME, 20);
	set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_X, -23);
	set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_Y, -40);
	set_hitbox_value(AT_DSTRONG, 7, HG_WIDTH, 25);
	set_hitbox_value(AT_DSTRONG, 7, HG_HEIGHT, 25);
	set_hitbox_value(AT_DSTRONG, 7, HG_SHAPE, 0);
	set_hitbox_value(AT_DSTRONG, 7, HG_PRIORITY, 3);
	set_hitbox_value(AT_DSTRONG, 7, HG_DAMAGE, 3);
	set_hitbox_value(AT_DSTRONG, 7, HG_ANGLE, 135);
	set_hitbox_value(AT_DSTRONG, 7, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_DSTRONG, 7, HG_KNOCKBACK_SCALING, .4);
	set_hitbox_value(AT_DSTRONG, 7, HG_BASE_HITPAUSE, 3);
	set_hitbox_value(AT_DSTRONG, 7, HG_HITPAUSE_SCALING, .2);
	set_hitbox_value(AT_DSTRONG, 7, HG_VISUAL_EFFECT, 28);
	set_hitbox_value(AT_DSTRONG, 7, HG_HIT_SFX, asset_get("sfx_ice_dspecial_ground"));
	set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_GROUP, -1);

	set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_DSTRONG, 8, HG_WINDOW, 5);
	set_hitbox_value(AT_DSTRONG, 8, HG_LIFETIME, 5);
	set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_X, 5);
	set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_Y, -35);
	set_hitbox_value(AT_DSTRONG, 8, HG_WIDTH, 140);
	set_hitbox_value(AT_DSTRONG, 8, HG_HEIGHT, 95);
	set_hitbox_value(AT_DSTRONG, 8, HG_SHAPE, 0);
	set_hitbox_value(AT_DSTRONG, 8, HG_PRIORITY, 7);
	set_hitbox_value(AT_DSTRONG, 8, HG_DAMAGE, 7);
	set_hitbox_value(AT_DSTRONG, 8, HG_ANGLE, 45);
	set_hitbox_value(AT_DSTRONG, 8, HG_ANGLE_FLIPPER, 6);
	set_hitbox_value(AT_DSTRONG, 8, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_DSTRONG, 8, HG_KNOCKBACK_SCALING, .9);
	set_hitbox_value(AT_DSTRONG, 8, HG_BASE_HITPAUSE, 6);
	set_hitbox_value(AT_DSTRONG, 8, HG_HITPAUSE_SCALING, .4);
	set_hitbox_value(AT_DSTRONG, 8, HG_VISUAL_EFFECT, 199);
	set_hitbox_value(AT_DSTRONG, 8, HG_HIT_SFX, asset_get("sfx_ice_back_air"));
	set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_GROUP, -1);
}

if (has_rune("K") && get_player_color( player ) == 1) {
	set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_DESTROY_EFFECT, 125);
	set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_DESTROY_EFFECT, 125);
	set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_DESTROY_EFFECT, 125);
	set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_DESTROY_EFFECT, 125);
	set_hitbox_value(AT_DSTRONG, 6, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_DSTRONG, 6, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_DESTROY_EFFECT, 125);
	set_hitbox_value(AT_DSTRONG, 7, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_DSTRONG, 7, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_DSTRONG, 7, HG_PROJECTILE_DESTROY_EFFECT, 125);
	set_hitbox_value(AT_DSTRONG, 8, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
	set_hitbox_value(AT_DSTRONG, 8, HG_VISUAL_EFFECT, 127);
}

if (has_rune("K") && get_player_color( player ) == 2) {
	set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_DESTROY_EFFECT, 3);
	set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_DESTROY_EFFECT, 3);
	set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_DESTROY_EFFECT, 3);
	set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_DESTROY_EFFECT, 3);
	set_hitbox_value(AT_DSTRONG, 6, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_DSTRONG, 6, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_DESTROY_EFFECT, 3);
	set_hitbox_value(AT_DSTRONG, 7, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_DSTRONG, 7, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_DSTRONG, 7, HG_PROJECTILE_DESTROY_EFFECT, 3);
	set_hitbox_value(AT_DSTRONG, 8, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
	set_hitbox_value(AT_DSTRONG, 8, HG_VISUAL_EFFECT, 148);
}

if (has_rune("K") && get_player_color( player ) == 3) {
	set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_DESTROY_EFFECT, 117);
	set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_DESTROY_EFFECT, 117);
	set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_DESTROY_EFFECT, 117);
	set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_DESTROY_EFFECT, 117);
	set_hitbox_value(AT_DSTRONG, 6, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_DSTRONG, 6, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_DESTROY_EFFECT, 117);
	set_hitbox_value(AT_DSTRONG, 7, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_DSTRONG, 7, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_DSTRONG, 7, HG_PROJECTILE_DESTROY_EFFECT, 117);
	set_hitbox_value(AT_DSTRONG, 8, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
	set_hitbox_value(AT_DSTRONG, 8, HG_VISUAL_EFFECT, 120);
}

if (has_rune("K") && get_player_color( player ) == 4) {
	set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_DESTROY_EFFECT, 13);
	set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_DESTROY_EFFECT, 13);
	set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_DESTROY_EFFECT, 13);
	set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_DESTROY_EFFECT, 13);
	set_hitbox_value(AT_DSTRONG, 6, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_DSTRONG, 6, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_DESTROY_EFFECT, 13);
	set_hitbox_value(AT_DSTRONG, 7, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_DSTRONG, 7, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_DSTRONG, 7, HG_PROJECTILE_DESTROY_EFFECT, 13);
	set_hitbox_value(AT_DSTRONG, 8, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
	set_hitbox_value(AT_DSTRONG, 8, HG_VISUAL_EFFECT, 196);
}

if (has_rune("K") && get_player_color( player ) == 5) {
	set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_DESTROY_EFFECT, 150);
	set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_DESTROY_EFFECT, 150);
	set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_DESTROY_EFFECT, 150);
	set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_DESTROY_EFFECT, 150);
	set_hitbox_value(AT_DSTRONG, 6, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_DSTRONG, 6, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_DESTROY_EFFECT, 150);
	set_hitbox_value(AT_DSTRONG, 7, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_DSTRONG, 7, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_DSTRONG, 7, HG_PROJECTILE_DESTROY_EFFECT, 150);
	set_hitbox_value(AT_DSTRONG, 8, HG_HIT_SFX, asset_get("sfx_troupple_splash_big"));
	set_hitbox_value(AT_DSTRONG, 8, HG_VISUAL_EFFECT, 161);
}


//L
if (has_rune("L")){
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 143);
	set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 11);
	set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 45);
	set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 1);
	set_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_HITPAUSE, 0);
	set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 143);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));
}

if (has_rune("L") && get_player_color( player ) == 1) {
	set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 143);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 143);
}

if (has_rune("L") && get_player_color( player ) == 2) {
	set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 143);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 143);
}

if (has_rune("L") && get_player_color( player ) == 3) {
	set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 143);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 143);
}

if (has_rune("L") && get_player_color( player ) == 4) {
	set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 143);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 143);
}

if (has_rune("L") && get_player_color( player ) == 5) {
	set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 143);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 143);
}


//M
if (has_rune("M")){
	set_num_hitboxes(AT_TAUNT_2, 1);

	set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW, 5);
	set_hitbox_value(AT_TAUNT_2, 1, HG_LIFETIME, 20);
	set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_X, 0);
	set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_Y, 0);
	set_hitbox_value(AT_TAUNT_2, 1, HG_WIDTH, 2000);
	set_hitbox_value(AT_TAUNT_2, 1, HG_HEIGHT, 2000);
	set_hitbox_value(AT_TAUNT_2, 1, HG_SHAPE, 1);
	set_hitbox_value(AT_TAUNT_2, 1, HG_PRIORITY, 10);
	set_hitbox_value(AT_TAUNT_2, 1, HG_DAMAGE, 2);
	set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE, 75);
	set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(AT_TAUNT_2, 1, HG_KNOCKBACK_SCALING, 0);
	set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_TAUNT_2, 1, HG_EXTRA_HITPAUSE, 90);
	set_hitbox_value(AT_TAUNT_2, 1, HG_HIT_SFX, asset_get("ice_hit_heavy1"));
	set_hitbox_value(AT_TAUNT_2, 1, HG_VISUAL_EFFECT, 199);
}

if (has_rune("M") && attack == AT_TAUNT_2 && window == 5){
	move_cooldown[AT_TAUNT_2] = 300;
}

if (has_rune("M") && get_player_color( player ) == 1) {
	set_hitbox_value(AT_TAUNT_2, 1, HG_VISUAL_EFFECT, 127);
	set_hitbox_value(AT_TAUNT_2, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
}

if (has_rune("M") && get_player_color( player ) == 2) {
	set_hitbox_value(AT_TAUNT_2, 1, HG_VISUAL_EFFECT, 148);
	set_hitbox_value(AT_TAUNT_2, 1, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
}

if (has_rune("M") && get_player_color( player ) == 3) {
	set_hitbox_value(AT_TAUNT_2, 1, HG_VISUAL_EFFECT, 120);
	set_hitbox_value(AT_TAUNT_2, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
}

if (has_rune("M") && get_player_color( player ) == 4) {
	set_hitbox_value(AT_TAUNT_2, 1, HG_VISUAL_EFFECT, 196);
	set_hitbox_value(AT_TAUNT_2, 1, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
}

if (has_rune("M") && get_player_color( player ) == 5) {
	set_hitbox_value(AT_TAUNT_2, 1, HG_VISUAL_EFFECT, 161);
	set_hitbox_value(AT_TAUNT_2, 1, HG_HIT_SFX, asset_get("sfx_troupple_splash_big"));
}


//N
if (has_rune("N") && !has_rune("L")){
	set_num_hitboxes(AT_DSPECIAL, 5);

	set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj"));
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, .04);
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_HSPEED, 0);
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_VSPEED, 0);
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_GRAVITY, .8);
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 0);
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, false);
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, false);
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, true);
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 199);
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_PLASMA_SAFE, true);
	set_hitbox_value(AT_DSPECIAL, 5, HG_IGNORES_PROJECTILES, 1);
	set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 1);
	set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 1);
	set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 120);
	set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, 0);
	set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -34);
	set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 50);
	set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 65);
	set_hitbox_value(AT_DSPECIAL, 5, HG_SHAPE, 2);
	set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 9);
	set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 2);
	set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 75);
	set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(AT_DSPECIAL, 5, HG_KNOCKBACK_SCALING, 0);
	set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_DSPECIAL, 5, HG_EXTRA_HITPAUSE, 90);
	set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 199);
	set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));
}

if (has_rune("N") && attack == AT_DSPECIAL && window == 5){
	move_cooldown[AT_DSPECIAL] = 300;
}

if (has_rune("N") && !has_rune("L") && get_player_color( player ) == 1) {
	set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 127);
	set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 127);
}

if (has_rune("N") && !has_rune("L") && get_player_color( player ) == 2) {
	set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 148);
	set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 148);
}

if (has_rune("N") && !has_rune("L") && get_player_color( player ) == 3) {
	set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 120);
	set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 120);
}

if (has_rune("N") && !has_rune("L") && get_player_color( player ) == 4) {
	set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 196);
	set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 196);
}

if (has_rune("N") && !has_rune("L") && get_player_color( player ) == 5) {
	set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 161);
	set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_troupple_splash_big"));
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 161);
}

if (has_rune("N") && has_rune("L")){
	set_num_hitboxes(AT_DSPECIAL, 5);

	set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj"));
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, .04);
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_HSPEED, 0);
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_VSPEED, 0);
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_GRAVITY, .8);
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 0);
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, false);
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, false);
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, true);
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 143);
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_PLASMA_SAFE, true);
	set_hitbox_value(AT_DSPECIAL, 5, HG_IGNORES_PROJECTILES, 1);
	set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 1);
	set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 1);
	set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 120);
	set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, 0);
	set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -34);
	set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 50);
	set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 65);
	set_hitbox_value(AT_DSPECIAL, 5, HG_SHAPE, 2);
	set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 9);
	set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 11);
	set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 45);
	set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_DSPECIAL, 5, HG_KNOCKBACK_SCALING, 1);
	set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_DSPECIAL, 5, HG_EXTRA_HITPAUSE, 0);
	set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 143);
	set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));
}

if (has_rune("N") && has_rune("L")) {
	set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 143);
	set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 143);
}

if (has_rune("N") && has_rune("L") && get_player_color( player ) == 1) {
	set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 143);
	set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 143);
}

if (has_rune("N") && has_rune("L") && get_player_color( player ) == 2) {
	set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 143);
	set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 143);
}

if (has_rune("N") && has_rune("L") && get_player_color( player ) == 3) {
	set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 143);
	set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 143);
}

if (has_rune("N") && has_rune("L") && get_player_color( player ) == 4) {
	set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 143);
	set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 143);
}

if (has_rune("N") && has_rune("L") && get_player_color( player ) == 5) {
	set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 143);
	set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));
	set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 143);
}


//O


