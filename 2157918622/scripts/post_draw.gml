shader_start()
var wrap = sprite_get("fspecial_wrap")

with(oPlayer){
		if(id != other.id){
				if(wraptimer < 42 && hitstop > 0){
						hitstop = 42 - wraptimer;
						set_state(PS_HITSTUN);
						draw_sprite_ext(wrap, 0, x, y-floor(char_height*0.25), spr_dir*1.2, char_height/50, 0, -1, 1)
				}
		}
}

shader_end()
