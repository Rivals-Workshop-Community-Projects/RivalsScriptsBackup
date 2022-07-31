//pre_draw.gml

if ((state == PS_RESPAWN) || (attack == AT_TAUNT && free)) && !place_meeting(x,y+4,(asset_get("par_block"))) &&(sprite_index == sprite_get("idle") || sprite_index == sprite_get("taunt")){
    draw_sprite(sprite_get("plat_drawbehind"), 0, x, y);
    //draw_sprite(sprite_get("plat"), 0, x, y);
}