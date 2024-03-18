//draw hud
var vw = view_get_wview()
var vh = view_get_hview()

if ("shade_stock" in self){
	draw_sprite( sprite_get("hud_shade"), shade_stock, temp_x + 192, temp_y - 20)
}

var bh = 330;


if ("dreamreading" in self && "dreambox_timer" in self)
	if (dreamreading = true && dreambox_timer > 0)
		{
			
			dreambox_timer--;
			
			var a = 0
			
			if dreambox_timer < (dreambox_timer_max - 10)
				a = dreambox_timer/20;
			else 
				a = (dreambox_timer_max % dreambox_timer) / 10
				
		
			draw_sprite_ext( sprite_get("dream_dbox"), 1, -24, -112, 1, 1, 0, c_white, a)
	
			draw_set_halign(fa_center);
			draw_set_valign(fa_center);
			draw_set_font(asset_get("roaLBLFont"));
			draw_text_ext_transformed_colour(vw/2, 115, dreamread[dreamorder], 32, 900, 1, 1, 0, c_white, c_white, c_white, c_white, a);
			draw_set_alpha(1);
		}