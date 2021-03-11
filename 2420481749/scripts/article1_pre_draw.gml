//asd

var use_this_one = false;
with obj_article1 if player_id == other.player_id && sprite_index = sprite_get("icechunk"){
    //this detects if this is the earliest spawned article that's currently alive
    //since that means that it's drawn first at the same depth
    if id == other use_this_one = true;
    break;
}
if use_this_one with obj_article1 if player_id == other.player_id && sprite_index = sprite_get("icechunk") {
    //just replace the sprite and this *should* work.
    //the main sprite should not have the outline, while this one does.
    //make sure they have the same offset.
    //uncomment the shader_start and shader_end if this should recolor w/ alts
    //shader_start();
    draw_sprite_ext(sprite_get("icechunk_predraw"),image_index,x,y,2*spr_dir,image_yscale,image_angle,c_white,image_alpha);
    //shader_end();
}

if state == 13
{
    draw_sprite_ext(sprite_get("fspecial_1000_fold_predraw"), player_image_index, x, y, 2*spr_dir, 2, 0, c_white, 1);
}
