//post-draw

/*
//Debug stuff
draw_debug_text( x, y + 20, string(window));
draw_debug_text( x, y + 40, string(window_timer));
draw_debug_text( x, y + 20, string(hsp));
*/

//thanks muno

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && 
	((attack == AT_FTHROW && (window == 3 && window_timer >= 3 || window == 4) ) ||
	(attack == AT_NTHROW && (window == 1 && window_timer >= 3 || window == 2 || window == 6 && window_timer >= 3 || window == 7)))	{
    var enemy = grabbed_player_obj;
    
    with enemy shader_start();
    draw_sprite_ext(enemy.sprite_index, enemy.image_index, enemy.x, enemy.y, enemy.spr_dir, 1, 0, c_white, 1);
    with enemy shader_end();
}