// post_draww.gml
// https://rivalslib.com/workshop_guide/programming/reference/scripts/animation_scripts.html#draw-scripts
// Draws in FRONT of your character

shader_start();

if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_FSPECIAL && ((window == 2 && window_timer > 0) || (window == 3 && window_timer == 0) && geyser_spawn_x != url){
    draw_sprite(sprite_get("fspecial_proj_indicator"), get_gameplay_time()/4, round(geyser_spawn_x), round(geyser_spawn_y));
}

shader_end();
