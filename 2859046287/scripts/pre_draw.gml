//pre_draw.gml
//we use this script to draw under the player character, both text and sprites can be used here

shader_start(); //everything between this and shader_end(); will be affected by alts

//respawn platform - check if the player is either in the respawn state or taunting while in the respawn state
if (state == PS_RESPAWN || respawn_taunt > 0) draw_sprite_ext(sprite_get("plat_pre"), game_time * plat_speed, x, y, small_sprites + 1, small_sprites + 1, 0, c_white, 1);

shader_end();


//particle system
for(var i = 0; i < array_length(fx_part); i++)
{
    var cur_part = fx_part[i];

    if (cur_part.shader) shader_start();
    if (cur_part.layer == 1)
    {
        gpu_set_fog(cur_part.filled, cur_part.color, 0, 1);
        draw_sprite_ext(
            cur_part.spr,
            cur_part.img,
            cur_part.xpos,
            cur_part.ypos,
            cur_part.xscale * cur_part.dir,
            cur_part.yscale,
            cur_part.angle,
            cur_part.color,
            cur_part.alpha
        )
        gpu_set_fog(false, cur_part.color, 0, 0);
    }
    if (cur_part.shader) shader_end();
}

//milestone alt mask - this draws directly behind the character, so you should make the character somewhat transparent for the effect to work
if (alt_cur == 15)
{
    //these 3 functions are custom functions which allow you to draw masks in the range of whatever you want

    //this section starts with you setting up the frame for the mask, think of it like a hole that's shaped like what you're putting here
    //in this case, this is our player
    maskHeader(); 
    draw_sprite_ext(
        sprite_index, image_index, //these will take the current sprite and frame of our object, in this case the character
        x + draw_x, //we need to do this for the x and y offsets
        y + draw_y, //just in case the characters moves their offsets around for certain illusions
        (small_sprites + 1) * spr_dir, //spr_dir makes sure the mask faces the same direction as our player
        (small_sprites + 1),           //small_sprites + 1 makes sure that our player is in our size
        spr_angle, //spr_angle makes sure our mask is also in the correct rotation
        c_black,   //color actually has no effect here
        1 //affects how visible our texture will be, >= 1 being visible and <= 0 being invisible
    );

    //this section stops the shape of our mask and starts the set up for the actual texture we put below it
    //basically, this is what we see through our "hole"
    //we use draw_sprite_tiled as it coverts the entire screen, but it doesn't need to
    maskMidder();
    draw_sprite_tiled(
        sprite_get("vfx_milestone_mask"),
        game_time * mask_anim_speed,
        x + game_time * mask_move_x,
        y + game_time * mask_move_y
    );

    //closes the masking and goes back to drawing normally again
    maskFooter();
}

//this version works properly for the CSS playtest
#define maskHeader
{
    //this saves some gpu data, it's used to allow us to draw masks safetly without breaking anything
    //as we later reset the state
    gpu_push_state();
    
    //set the mask to take effect on pretty much everything in the room
    //below this function, add the MASK
    gpu_set_alphatestenable(false);
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false, false, false, true);
    draw_set_alpha(0);
    draw_rectangle_color(-200 ,-200 , room_width + 200, room_height + 200, c_white, c_white, c_white, c_white, false);
    draw_set_alpha(1);
}
#define maskMidder
{
    //sets the thing underneath the mask to be drawn
    //below this function, add the TEXTURE
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
}
#define maskFooter
{
    //playtest zone fix by frtoud
    //this piece of code essencially cancels out the black void in playtest when using masks
    if (object_index == oTestPlayer)
    {
        gpu_set_blendenable(false);
        gpu_set_alphatestenable(false);
        gpu_set_colorwriteenable(false, false, false, true);
        draw_rectangle_color(-200 ,-200 , room_width + 200, room_height + 200, c_white, c_white, c_white, c_white, false);
    }
    //gpu state reset, restores everything back to normal
    gpu_pop_state();
}