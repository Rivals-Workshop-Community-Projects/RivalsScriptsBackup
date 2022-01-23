// afterimage
var tempColour = c_white;

for (var i = 0; i < afterImageMax; ++i) if (afterImage[i] != -1 && afterImage[i].alpha > 0 && draw_indicator)
{
    shader_start();
    gpu_set_blendmode(bm_add);
    draw_sprite_ext(afterImage[i].sprite_index, afterImage[i].image_index, afterImage[i].x, afterImage[i].y, afterImage[i].spr_dir, 1, 0, tempColour, afterImage[i].alpha/20);
    gpu_set_blendmode(bm_normal);
    shader_end();
}
/*
with(speeddisk) {
var tempColour = c_white;

for (var i = 0; i < afterImageMax; ++i) if (afterImage[i] != -1 && afterImage[i].alpha > 0 && draw_indicator)
{
    shader_start();
    gpu_set_blendmode(bm_add);
    draw_sprite_ext(afterImage[i].sprite_index, afterImage[i].image_index, afterImage[i].x, afterImage[i].y, afterImage[i].spr_dir, 1, 0, tempColour, afterImage[i].alpha/20);
    gpu_set_blendmode(bm_normal);
    shader_end();
}}
*/

//if in respawn OR if floating in taunt
if (state == PS_RESPAWN || state == 6 && free && attack == AT_TAUNT){
    
shader_start()
    draw_sprite_ext( sprite_get("TorrenPlat_bg"), 0, x, y, spr_dir, 1, 0, c_white, 1 );

shader_end()
    
}