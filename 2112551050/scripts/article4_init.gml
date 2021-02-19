//sans hitbox for fight action, also draw sprites too
timer = 0;
dodgeState = 0;
dodgeTimer = 40; //number of frames of dodge state
endAnims = false; //kill sans animations
endAnimIndex = 0;
endTimer = 0;
endTimer2 = 0;
drawDamage = false;

plzkillme = false;

endModX = 0;
endModY = 0;

sprite_index = asset_get("empty_sprite");
mask_index = sprite_get("sans_hitbox");

depth = -1;