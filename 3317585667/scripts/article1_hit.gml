with enemy_hitboxID {
var hitpause_number = get_hitstop_formula(0, 0, hitpause, hitpause_growth, extra_hitpause);
spawn_hit_fx(lerp(x, other.x, 0.5) + (hit_effect_x * spr_dir), lerp(y, other.y, 0.5) + (hit_effect_y * spr_dir), hit_effect );
sound_play(sound_effect, false, noone, 0.5);
}
hitstop = hitpause_number;

state = "hitpause";
spins = 0;
mask_index = empty_mask;

sound_play(sound_get("smw_block_hit"));
sound_play(sound_get("smw_block_hit"));

