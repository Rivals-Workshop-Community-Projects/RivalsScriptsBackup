if (get_player_color(player) == 12)
{
    for (var i = current_afterimages; i >= 0; i -= 1) {
		var ind = (total_afterimages + index_afterimages - i) % total_afterimages;
		var ai = afterimages[ind];
		var opacity = ai.opacity * (1 - i / (current_afterimages + 1));
		
		var x_offset = -10 * ((i / (current_afterimages + 1)) * (ai.sprdir) * 4);
		if (attack == AT_EXTRA_1 && knight_climb)
		{
		    x_offset = -10 * ((i / (current_afterimages + 1)) * (ai.sprdir * -1) * 4);
		}
		
		if ind % 4 = 0 {
			shader_start();
			draw_sprite_ext(ai.spr, ai.img, ai.prevx + x_offset, ai.prevy, ai.sprdir, 1, 0, c_white, opacity)
			shader_end();
		}
    }
}