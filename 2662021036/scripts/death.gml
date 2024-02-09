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

if grassknot_exists = 1{
	
if grassknot_article.state != PS_IDLE{
	instance_destroy(grassknot_article)
	grassknot_exists = 0;
	sound_stop(grassknot_travel_SFX);
	grassknot_travel_SFX = 0;
	in_grassknot_loop = 0;
}

}