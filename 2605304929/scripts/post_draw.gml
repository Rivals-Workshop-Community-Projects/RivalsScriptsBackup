// Postdraw.gml

// Small Bubble Spawn Code

if(state == PS_IDLE || state == PS_CROUCH){
    if(state_timer > 5){ // Prevents animations from playing at start up of state

        if(state == PS_IDLE && state_timer % 100 == 0  && sprite_index == sprite_get("idle")){
            Spawn_Bubbles((-18 * spr_dir)+x,y-50);
        }
        
        if(state == PS_IDLE && state_timer % 100 == 0 && sprite_index == sprite_get("plat_idle")){
            Spawn_Bubbles((-5 * spr_dir)+x,y-40);
        }
        
        if(state == PS_CROUCH && state_timer % 100 == 0){
            Spawn_Bubbles(x + (-15 * spr_dir),y-20);
        }
    }
}

// fspecial recovery white effect draw
if(fspecial_recovery_enabled_flag == true){
    /*
    gpu_set_fog(true,c_yellow,0,0);
    draw_sprite_ext(sprite_index, image_index, x, y, spr_dir * 1, 1, image_angle, 1, .5);
    gpu_set_fog(false,c_yellow,0,0);
    */
    shader_start();
        draw_sprite_ext(sprite_get("fspecial_recovery_icon"), get_gameplay_time() / 2, x, y - 40, 1, 1, 0, c_white, 1);
    shader_end();
}

/* Removed 3/18/22
//Genesis glitchy thing
if(get_player_color(player) == 22)
{
    var rand_x, rand_y;
    rand_x = random_func(3,50,true);
    rand_y = random_func(6,75,true);
    shader_start();
    if(random_func(2, 100, false) > 95){
        draw_sprite_part_ext(sprite_index,image_index,75+rand_x,50+rand_y,random_func(8,200,true),random_func(2,200,true),x-60*spr_dir+(random_func(6,20,true)+rand_x)*spr_dir,y-130+random_func(10,20,true)+rand_y,spr_dir,1,c_white,.75);
        draw_sprite_part_ext(sprite_get("hitfx_large_elec"),3,75+rand_x,50+rand_y,random_func(8,200,true),random_func(2,200,true),x-60*spr_dir+(random_func(6,20,true)+rand_x)*spr_dir,y-130+random_func(10,20,true)+rand_y,spr_dir * .5,.5,c_white,.75);
    }
    shader_end();
}
*/
#define Spawn_Bubbles(x,y)
{
    var bubble_hitfx_object = spawn_hit_fx(x,y,hitfx_bubbles); // 5 - dark water small
    bubble_hitfx_object.depth = depth - 1;
    //crouch_bubble.vsp = -4;
    //sound_play(asset_get( "sfx_bubblepop" ),false,noone,.05,1); // soundID,looping,panning,volume,pitch
}