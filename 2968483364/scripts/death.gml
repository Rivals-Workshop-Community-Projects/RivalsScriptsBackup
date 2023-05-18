//me when i die (but for real)

stored_dmg = 0;
if(blue) blue_buffer = true;

fspec_fresh = [1, 1, 1];

sound_play(sound_get("pichuun"));

if(pipebomb != noone){
    with(pipebomb){
        player_id.pipebomb = noone;
    	sound_play(asset_get("sfx_mol_norm_bounce1"), false, noone, 0.75, 1.0);
		instance_destroy();
		exit;
    }
}