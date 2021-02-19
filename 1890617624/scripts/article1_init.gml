// Apple bomb

init = 0;
sprite_index = sprite_get("apple");
mask_index = sprite_get("apple_mask");

state = 0;
state_timer = 0;
can_be_grounded = true;
ignores_walls = false;
free = true;
timer = 0;
bounced = false;
fuse = 130;
fusewarning = 50;
ticksnd = 0;
explodeticks = 0;
lifetime = 100;

explosion =  hit_fx_create( sprite_get( "explosion" ), 32);
sprite_change_offset("explosion", 110, 112);
sprite_change_offset("apple_mask", 16, 0);