

//i use script order to my advantage and i am smarter than everyone i know.
if(!init_UNshader){
    
    init_UNshader = true;
    init_shader();

}

/*
    Okay but basically the way the sword sprite works is that,
    Pandoria is color-mapped and recolored to have her own alts via article color slots.
    But sometimes she holds the sword, which i want to be colored with Zeke's alt palette.
    But if i try to change the article color slot to zeke colors, draw the sword sprite,
    and then change it back to pandoria colors in the same script,
    the sword has Pandoria colors. So instead of cheating the system with function run order,
    ~~ I cheat it with script order. ~~
    post_draw.gml is run late into the order, while pre_draw.gml is much earlier.
    So at the end of each frame, I change the article colors to Pandoria's, so she gets recolored properly.
    And towards the start of the next frame, I change the colors back to Zeke's.
    The variable name (init_UNshader) doesn't make sense because when I originally found this it worked
    the opposite way, so Pandoria wouldn't be recolored but the sword would.
    So I just changed the boolean values to swap which colors it changes.
    And it just kinda. Worked.
*/

/*
    I don't remember why this works even though I wrote all that.
*/

var col_gold = make_colour_rgb(255, 221, 56);
for (var i = 0; i < 10; i++){
    if (after_image[i] != -1 && after_image[i].alpha > 0){
        
        gpu_set_fog(true,col_gold,0,1);
        
        draw_sprite_ext(after_image[i].sprite_index, after_image[i].image_index, after_image[i].x, after_image[i].y, (1 + small_sprites) * after_image[i].spr_dir,
            1 + small_sprites, 0, c_white, after_image[i].alpha/10 );
            
        gpu_set_fog(false,c_white,0,0);
        
    }
}
