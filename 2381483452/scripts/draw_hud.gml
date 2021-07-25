
if seq_value[0] > 0 {
//print("DRAWING");
	draw_sprite_ext(sprite_get("plat_mask"), 0, 0, 0, 9999, 9999, 0, c_black, seq_value[0]/20)
}
if seq_value[0] >= 20 {
	if seq_value[1] = 1 {
		gpu_set_blendmode_ext(bm_dest_alpha, bm_src_alpha_sat);
		draw_sprite_ext(sprite_get("bg1"), 0, 480-278, 270-239-30+seq_value[3], 2, 2, 0, c_white, 1);
		gpu_set_blendmode(bm_normal);
	
		draw_sprite_ext(sprite_get("stripe"), 0, 0, 270-143+seq_value[3], 2, 2, 0, c_white, 1);
	//Seriously, it'll be easier if you just look at this ingame.
	//Just use the buddy on the stage, follow the steps you took to get here. You're past the hard part.
	
	var url = "";
	var encrypt = "22311681126976486169181076174400051322353812467314910923186339282856798827741682130286408465968648650076018807462933096066285112672623939653836789361380034014556585948675542860067861369639335732710088998694332171918466995502261697422465489016144292509071697354843112196201634809643196097258989192993338965190606061969648468106418391047348160937682486648418932043198475875858281849660940048123883433445093902737598"
	for (var i = 0; i <= 9; i++) {
		url += string_char_at(encrypt,floor(i*30+sin(i*66)*20))
	}
	var txt = "SYNNE, THE UNKNOWN OMEN, ARRIVES
	PREPARE YOURSELVES
	https://steamcommunity.com/sharedfiles/filedetails/?id="+url;
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_font(asset_get("roaMBLFont"));
	var xx = 480;
	var yy = 270+100-seq_value[3]*3;
	var col = $065D7A;
	draw_text_transformed_color(xx-2, yy-2,txt,1,1,0, col,col,col,col,1)
		draw_text_transformed_color(xx-2, yy+2,txt,1,1,0, col,col,col,col,1)
			draw_text_transformed_color(xx+2, yy-2,txt,1,1,0, col,col,col,col,1)
				draw_text_transformed_color(xx+2, yy+2,txt,1,1,0, col,col,col,col,1)
	var col = $9EEAFF;
	draw_text_transformed_color(xx, yy,txt,1,1,0, col,col,col,col,1)
	draw_sprite_ext(sprite_get("plat_mask"), 0, 0, 0, 9999, 9999, 0, c_white, seq_value[2])
		draw_sprite_ext(sprite_get("plat_mask"), 0, 0, 0, 9999, 9999, 0, c_black, seq_value[4])
	}
}
