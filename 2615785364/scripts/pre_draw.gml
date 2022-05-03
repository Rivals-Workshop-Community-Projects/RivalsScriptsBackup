/*
*             ----------- pre_draw.gml ------------
*       Use this file to draw sprites on top of your character.
*       Example: This will draw sandberts jab projectile under your character.
*       draw_sprite_ext(sprite_get("jab_proj"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
*/


var sleep = sprite_get("sleepstatus");
with(oPlayer){
    if("ssl_sleep_lag" in self and ssl_sleep_lag > 0 and (state == PS_PRATFALL or state == PS_PRATLAND) and ssl_sleep_owner == other.player){
        shader_start();
        draw_sprite_ext(sleep, get_gameplay_time()/8%4, x-30, y-char_height-32, 1, 1, 0, c_white, 1);
        shader_end();
    }
}