// death.gml

with (asset_get("oPlayer")) {
	if (vileplume_poison_effect && vileplume_poison_effect_id == other.id) {
		vileplume_poison_effect = false;
	}
}

if (leechseed != 0){
parried_seed = spawn_hit_fx( leechseed.x, leechseed.y, leechseed_despawn );
parried_seed.depth = depth - 1; 
instance_destroy(leechseed);
sound_play(asset_get("sfx_syl_dspecial_plantaway"));
  leechseed = 0;
}

