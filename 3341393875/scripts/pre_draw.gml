for (var e = 0; e < array_length(particles); e++){
    var p = particles[e];
    gpu_set_fog(1, p[5], 0, 0);
    draw_sprite_ext(p[0], p[8], p[6], p[7], p[10] * p[9], p[10], 0, p[5], p[1]);
    gpu_set_fog(0, p[5], 0, 1);
}

shader_start();

if (attack == AT_DSPECIAL_2 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
    if (window == 4 && window_timer < 3){
            draw_sprite_ext(sprite_get("pizzahead_dspecial2_TV_frame"), 0, x + 50 * spr_dir, y + 100, -2 * spr_dir, 2, 0, -1, 1);
        if (instance_exists(hit_player_obj) && "pizzaTVcontent" in hit_player_obj){
            draw_sprite_ext(hit_player_obj.pizzaTVcontent, 0, x + 130 * spr_dir, y - 60, -2 * spr_dir, 2, 0, -1, 1);
        } else {
            draw_sprite_ext(sprite_get("pizzahead_dspecial2_TV_content"), 0, x + 50 * spr_dir, y + 100, -2 * spr_dir, 2, 0, -1, 1);
        }
        
        
    }

    if (window == 12 || window == 13 || window == 14 || window == 15){
        draw_sprite_ext(sprite_get("pizzahead_dspecial_stone"), min(image_index, 18), towerX, towerY, 2 * towerSprDir, 2, 0, -1, 1);
    }

    
}


if ((attack == AT_TAUNT || attack == AT_TAUNT_2) && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (sprite_index == sprite_get("rizzahead") || sprite_index == sprite_get("rizzaheadSketch") || sprite_index == sprite_get("mogface"))){
    draw_sprite_ext(sprite_index, 0, x, y + (state_timer*2), (state_timer*0.15) * spr_dir, (state_timer*0.15), 0, -1, 0.25);
}

if (towerLifetime < 300 && !(attack == AT_DSPECIAL_2 && (window == 12 || window == 13 || window == 14 || window == 15) && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR))){
    draw_sprite_ext(sprite_get("pizzahead_dspecial_stone"), 18, towerX, towerY + (towerLifetime * 2), 2 * towerSprDir, 2, 0, -1, 1);
}

shader_end();

for (var i = 0; i < array_length_1d(afterimage_array); ++i){
    
    shader_end();
    var obj = afterimage_array[i];
    var spriteSize = obj.smallSprites;
    gpu_set_fog(true, get_player_hud_color(player), 0, 0);
    draw_sprite_ext(obj.sprite_index, obj.image_index, obj.x, obj.y, obj.spr_dir*(1+spriteSize), 1+spriteSize, obj.rot, obj.col, 1-obj.timer/obj.timerMax);
    gpu_set_fog(false, c_black, 0, 0);

}