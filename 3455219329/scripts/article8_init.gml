//Barrel launch
sprite_index = asset_get("empty_sprite");
mask_index = sprite_get("bcannon");
image_alpha = 1;

image_xscale = 1;
image_yscale = 1;

/*if(x > 700){
    spr_dir = -1;
}*/

time = 0;
maxtime = 30;

hitplayer = noone;

hitplayer_x = 0;
hitplayer_y = 0;

launch_angle = 0;

depth = -10;

//spawn a hitbox on startup
blast_hit = create_hitbox(AT_JAB, 1, x, y);
blast_hit.player = hitplayer.player
blast_hit.kb_angle = launch_angle;