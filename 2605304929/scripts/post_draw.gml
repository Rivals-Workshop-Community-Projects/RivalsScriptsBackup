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
/*
if(instance_exists(dspecial_surf_hitbox_id) && surf_cancelled != true){
    draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,1,0,c_white,1);
}
*/
#define Spawn_Bubbles(x,y)
{
    var bubble_hitfx_object = spawn_hit_fx(x,y,hitfx_bubbles); // 5 - dark water small
    bubble_hitfx_object.depth = depth - 1;
    //crouch_bubble.vsp = -4;
    //sound_play(asset_get( "sfx_bubblepop" ),false,noone,.05,1); // soundID,looping,panning,volume,pitch
}