var me = self;
var owner = orig_player_id;
var hitbox = enemy_hitboxID;

if "rockmanrockflag" in hitbox exit;

hitbox.rockmanrockflag = true;

launcher = hitbox.orig_player_id.player;

if hitbox.orig_player_id == owner && hitbox.attack == AT_DSPECIAL owner.hitstop = 0;

if hitbox.throws_rock != 2 && hitbox != rock_hitbox {
	rock_hitbox_player = hit_player_obj.player;
	hitstop = floor(hit_player_obj.hitstop + 1);
	with hitbox.orig_player_id spawn_hit_fx(lerp(hitbox.x, me.x, 0.5), lerp(hitbox.y, me.y, 0.5), hitbox.hit_effect);
	sound_play(hitbox.sound_effect);
	if(hitbox.type == 1 && (hitbox.kb_scale >= .2 || hitbox.kb_value >= 10)){
		old_hsp = lengthdir_x(get_kb_formula(90, 1.2, get_match_setting(SET_SCALING), hitbox.damage, hitbox.kb_value, hitbox.kb_scale), hit_dir);
		old_vsp = lengthdir_y(get_kb_formula(90, 1.2, get_match_setting(SET_SCALING), hitbox.damage, hitbox.kb_value, hitbox.kb_scale), hit_dir);
		if old_hsp != 0 spr_dir = -sign(old_hsp);
	} else {
		old_hsp = 0;
		old_vsp = 0;
	}
	if !hitbox.throws_rock hp -= hitbox.damage;
	rock_damage_alpha = .75;
}

if hitbox.type == 2 && hitbox.enemies == 0 hitbox.destroyed = true;

if hp <= 0{
	sound_play(asset_get("sfx_kragg_rock_shatter"));
	with owner spawn_hit_fx(me.x, me.y, dspec_destroy);
	instance_destroy(self);
	exit;
}