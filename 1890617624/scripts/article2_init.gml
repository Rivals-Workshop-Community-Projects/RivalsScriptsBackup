// McShake

init = 0;
sprite_index = sprite_get("shake");
mask_index = sprite_get("shake_mask");

state = 0;
state_timer = 0;
can_be_grounded = true;
ignores_walls = false;
free = true;
timer = 0;
bounced = false;
explodeticks = 0;
lifetime = 100;
soul_active = false;

explosion =  hit_fx_create( sprite_get( "shakeexplosion" ), 24);
sprite_change_offset("shakeexplosion", 88, 496);
sprite_change_offset("shake_mask", 16, 0);