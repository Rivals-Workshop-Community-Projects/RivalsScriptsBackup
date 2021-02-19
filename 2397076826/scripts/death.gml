///

knockback_adj = 1.10;
smark = 0
		fspechit = 0
		fspechit2 = 0
cloneout = 0
clonetime = 0
with (asset_get("pHitBox")) {
if(player_id == other.id) {
    destroyed = true;
                      sound_play(asset_get("sfx_holy_lightning")); 
                  sound_play(asset_get("sfx_clairen_hit_strong"))	
}
}
