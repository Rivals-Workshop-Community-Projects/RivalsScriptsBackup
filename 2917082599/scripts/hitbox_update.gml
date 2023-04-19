//
//flips projectile sprite on parry
if (was_parried){ draw_xscale = spr_dir;
    
 }
if(!free){ 
    destroyed = true
    sound_play(asset_get("sfx_blow_weak1"),false,noone,0.7,1);
}