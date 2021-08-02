if nspec_charge >= blue_arrow_timer
{
    var rad, mult, mult2, wispcol;
    rad = (get_gameplay_time()/30) mod (2*3.14159)
    mult = abs(sin(rad))*0.3;
    mult2 = abs(sin(rad+(3.14/2)))*0.3;
    wispcol = make_color_rgb(wisp_color_r,wisp_color_g,wisp_color_b)
    
    gpu_set_blendmode(bm_add)
    draw_sprite_ext(sprite_index,image_index,x,y+((mult)*20),spr_dir*(mult+.9),mult+.9,0,wispcol,0.4)
    draw_sprite_ext(sprite_index,image_index,x,y+((mult)*20),spr_dir*(mult2+.9),mult2+.9,0,wispcol,0.4)
    gpu_set_blendmode(bm_normal)
}

//draw_debug_text(x,y-70,"move_cooldown: "+string(move_cooldown[AT_NSPECIAL]))

if (fspec_article != noone and "inPractice" in self and crouch_pshow)
{
	var xx, yy, diff;
	xx = clamp(fspec_article.x, bbox_left, bbox_right);
	yy = clamp(fspec_article.y, bbox_top, bbox_bottom);
	
	diff = sqrt( sqr(xx-fspec_article.x) + sqr(yy-fspec_article.y) );
	
	col = diff <= crouch_threshold ? c_lime : c_red;
	outputcol = merge_color( col, make_color_rgb(wisp_color_r,wisp_color_g,wisp_color_b), (crouch_timer/crouch_max) )
    if inPractice and fspec_article.sprite_index == sprite_get("willo_idle")
        {
            //dprint_debug("drawing")
            draw_set_halign(fa_center)
            draw_set_valign(fa_middle)
            draw_debug_text(fspec_article.x-20,fspec_article.y-50,string(diff))
            //if floor(diff) == 69 draw_debug_text(fspec_article.x-20,fspec_article.y+40,"Nice")
            draw_circle_color(fspec_article.x,fspec_article.y,(crouch_threshold),outputcol,outputcol,true)
            draw_circle_color(fspec_article.x,fspec_article.y,(crouch_threshold)-1,outputcol,outputcol,true)
            draw_line_width_color(fspec_article.x,fspec_article.y,xx,yy,2,outputcol,outputcol)
            draw_set_halign(-1)
            draw_set_valign(-1)
        }
}

if (triggerProtection)
{
	draw_set_font(asset_get("roaLBLFont"))
	draw_text_transformed(view_get_xview()+view_get_wview()/2,view_get_yview()+view_get_hview()/2,"FUCK YOU. THIS IS MY CHARACTER.",1,1,0)
	draw_set_font(-1)
}