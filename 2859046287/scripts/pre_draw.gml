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