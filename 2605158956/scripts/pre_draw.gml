shader_start();
if (state == PS_RESPAWN || state == PS_ATTACK_GROUND && attack == AT_TAUNT && initial_invince == 1)
    draw_sprite(sprite_get("platBG"), 0, x,y);

with(pHitBox)
    if(attack == AT_DSPECIAL && player_id == other.id && hbox_num == 1 && image_index < 19)
        draw_sprite_ext(sprite_get("arrowbomb"),0, x, y-20, 1, 1, 0, get_player_hud_color(player), 1);

if(x < 150 || x > room_width-150 ||  y < 150 || y > room_height - 150 || portalParry)
	draw_sprite_ext(sprite_get("noportal"), 0, x,y, 1, 1, 0, c_white, 0.5);

shader_end();