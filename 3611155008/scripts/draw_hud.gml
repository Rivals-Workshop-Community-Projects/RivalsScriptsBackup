draw_sprite_ext(sprite_get("qihud"), 0, temp_x - 6, temp_y - 30, 2, 2, 0, c_white, 1);
var g = 0;
repeat 5{
	var col = make_color_rgb(lerp(get_color_profile_slot_r(alt_cur, 6), 255, qianim[g]/20), lerp(get_color_profile_slot_g(alt_cur, 6), 255, qianim[g]/20), lerp(get_color_profile_slot_b(alt_cur, 6), 255, qianim[g]/20));
	if qianim[g] draw_sprite_ext(sprite_get("qicharge"), qifrm[g], temp_x + 12 + 34*g, temp_y - 12, 4 - qianim[g]/10, 4 - qianim[g]/10, 0, col, 1.5*qianim[g]/20);
	g++;
}
shader_start();
draw_sprite_ext(sprite_get("nymphhud"), 0, temp_x + 170, temp_y - 26, 2, 2, 0, (nymph_cooldown? c_gray: c_white), 1);
shader_end();

if codec_intro{
	var cx = 480;
	var cy = 270;
	var st = (codec_intro >= 186) + (codec_intro > 186);
	switch st{
		case 0: //open
		var stst = (codec_intro > 17) + (codec_intro > 52) + (codec_intro > 137) + (codec_intro > 153);
		switch stst{
			case 0:
			var t = min(codec_intro, 12)/12;
			draw_talkbox(cx - 93*t, cy - 80, 186*t, 80, t*2, color_lerp($8DE5FC, $7E5530, max(0, t*2 - 1)), (t < .5? t*t*4: 1.5 - t), 0, t > .5 && (codec_intro < 15 || codec_intro == 17), 0, 0, 0, 0);
			break;
			
			case 1:
			var t = (codec_intro-17)
			draw_talkbox(cx - 93, cy - 80, 186, 80, 1, (t < 21? color_lerp($7E5530, $F3BB36, t/20): color_lerp($7E5530, $F3BB36, abs(dsin(90 + (t-20)*18)))), .5, 0, 1, t > 4, t > 4, 0, 0);
			draw_sprite_ext(sprite_get("calling_logo_big"), 0, cx, cy - 40, 2, 2, 0, c_white, (t < 21? dsin(t*22.5): 1));
			break;
			
			case 2:
			var t = (codec_intro-52)
			draw_talkbox(cx - 93, cy - 80, 186, 80, 1, color_lerp($7E5530, $F3BB36, (t > 80? 1 - .2*(t-80): 0)), .5, 0, 1, 1, 1 + (t > 80), 0, 0);
			draw_sprite_ext(sprite_get("calling_logo_big"), 0, cx, cy - 40, 2, 2, 0, c_white, (t < 24? 1 - t/18: (t-24 < 21? dsin((t-24)*22.5): 1 - .2*(t-80))));
			break;
			
			case 3:
			var t = (codec_intro-137)
			var t1 = min(1, t/16)
			draw_talkbox(cx - 93 - 5*t1, cy - 80 - 140*t1, 186 + 10*t1, 80 + 160*t1, 1, $7E5530, .5, 0, 1, 1, 2, 0, 0);
			draw_sprite_ext(sprite_get("calling_logo_small"), 0, cx + 78*t1, cy - 40 - 162*t1, 2, 2, 0, c_white, t/4);
			draw_talkbox(cx - 93 - 5*t1, cy - 80 - 140*t1, 186 + 10*t1, 80 + 160*t1, 1, color_lerp($7E5530, $7F654C, t1), .5 + .5*t1, 0, 0, 0, 0, 1, 0);
			break;
			
			case 4:
			var t = (codec_intro-153)
			var al = .7*min(t/15, 1)
			draw_primitive_begin(pr_trianglestrip);
			draw_vertex_color(0, 540, 0, al);
			draw_vertex_color(960, 540, 0, al);
			draw_vertex_color(0, 270, 0, 0);
			draw_vertex_color(960, 270, 0, 0);
			draw_primitive_end();
			var movex = floor(t > 8? ease_cubeInOut(0, 340, t-8, 25): 0)
			draw_talkbox(cx - 98 + movex, cy - 220, 196, 240, 1, $7E5530, .5, 0, 1, 1, 2, 0, 1);
			draw_sprite_ext(sprite_get("calling_logo_small"), 0, cx + 78 + movex, cy - 202, 2, 2, 0, c_white, 1);
			if t < 8 draw_talkbox(cx - 98, cy - 220, 196, 240, 1, color_lerp($7F654C, $7E5530, t/8), 1 - t/8, 0, 0, 0, 0, 1, 0);
			break;
		}
		break;
		case 1: //talk loop
		draw_primitive_begin(pr_trianglestrip);
		draw_vertex_color(0, 540, 0, .7);
		draw_vertex_color(960, 540, 0, .7);
		draw_vertex_color(0, 270, 0, 0);
		draw_vertex_color(960, 270, 0, 0);
		draw_primitive_end();
		draw_talkbox(cx + 242, cy - 220, 196, 240, 1, $7E5530, .5, 0, 1, 1, 2, 0, 1);
		draw_sprite_ext(sprite_get("calling_logo_small"), 0, cx + 418, cy - 202, 2, 2, 0, c_white, 1);
		if codec_yi{
			var t1 = min(codec_yi/8, 1);
			var t2 = clamp(codec_yi/10 - 1, 0, 1);
			var t3 = clamp((codec_yi-10)/15, 0, 1)
			var t4 = codec_yi/5 - 4;
			draw_talkbox(cx - 340 - 98*t1, cy - 110 - 110*t2, 196*t1, 20 + 220*t2, t1, color_lerp($8DE5FC, $7E5530, t3), (t2 > 0? 1 - .5*t2: t1), 1, t4, t4, 0, 0, t4);
		}
		if codec_timer{
			var spkr = codec_play[0].char != "yi";
			var t1 = min(codec_timer/10, 1);
			var nm = codec_play[0].txt;
			var s = string_copy(nm, 0, floor((codec_timer-10)/codex_textspeed));
			draw_boxbox(cx + (spkr? 420 - 500*t1: -420), cy + 40, 500*t1, 150, t1, $7E5530, t1*.5, !spkr, codec_timer > 10, codec_timer > 12, 1, s, codec_timer >= string_length(nm)*codex_textspeed + 25);
		}
		break;
		case 2: //close
		var t = codec_intro - 186;
		var al = .7*(1 - t/15)
		draw_primitive_begin(pr_trianglestrip);
		draw_vertex_color(0, 540, 0, al);
		draw_vertex_color(960, 540, 0, al);
		draw_vertex_color(0, 270, 0, 0);
		draw_vertex_color(960, 270, 0, 0);
		draw_primitive_end();
		var t1 = min(1, t/12);
		var t2 = min(1, (t-12)/8);
		var t3 = clamp((t-34)/16, 0, 1);
		var t4 = clamp((t-54)/12, 0, 1);
		draw_talkbox(cx + 242 + min(98*t4, 88), cy - 220, max(196 - 196*t4, 20), 240 - 220*t3, 2 - t4*2, color_lerp($7E5530, $8DE5FC, t3), .5 + (t2? .5 - .5*t2: t1*.5) + .5*t3 - t4, 0, t < 50, t < 20, 2*(t < 48), 0, 1 - t1);
		if codec_yi draw_talkbox(cx - 438 + min(98*t4, 88), cy - 220, max(196 - 196*t4, 20), 240 - 220*t3, 2 - t4*2, color_lerp($7E5530, $8DE5FC, t3), .5 + (t2? .5 - .5*t2: t1*.5) + .5*t3 - t4, 1, t < 50, t < 20, 0, 0, 1 - t1);
		if t < 8{
			var spkr = codec_play[0].char != "yi";
			var nm = codec_play[0].txt;
			draw_boxbox(cx + (spkr? 420 - 500: -420), cy + 40, 500, 150, 1 - t/8, $7E5530, .5, !spkr, 1 - t/8, 0, 1 - t/8, nm, 1);
		}
		break;
	}
}

#define draw_talkbox(xp, yp, wdt, hgt, al, col, inal, yi, decoration, side, text, boxonly, portrait)
al = clamp(al, 0, 1);
inal = clamp(inal, 0, 1);
var an_wdt = min(wdt - 2, 18);
var an_hgt = min(hgt - 2, 18);
shader_end();
var c = $8DE5FC;
if yi{
	draw_primitive_begin(pr_trianglestrip);
	draw_vertex_color(xp + 2, yp + 2, col, al*inal);
	draw_vertex_color(xp + wdt - 2, yp + 2, col, al*inal);
	draw_vertex_color(xp + 2, yp + hgt - an_hgt + 1, col, al*inal);
	draw_vertex_color(xp + wdt - 2, yp + hgt - 2, col, al*inal);
	draw_vertex_color(xp + an_wdt - 1, yp + hgt - 2, col, al*inal);
	draw_primitive_end();
	if boxonly return;
	if portrait > 0{
		shader_start();
		draw_sprite_ext(sprite_get("yi_portrait"), 0, xp + 2, yp + hgt - 2, min(2, wdt/96), min(2, hgt/110), 0, $FFB163, portrait);
		shader_end();
	}
	draw_primitive_begin(pr_trianglestrip);
	draw_vertex_color(xp, yp, c, al);
	draw_vertex_color(xp+2, yp+2, c, al);
	draw_vertex_color(xp + wdt, yp, c, al);
	draw_vertex_color(xp + wdt-2, yp+2, c, al);
	draw_vertex_color(xp + wdt, yp + hgt, c, al);
	draw_vertex_color(xp + wdt - 2, yp + hgt - 2, c, al);
	draw_vertex_color(xp + an_wdt - 2, yp + hgt, c, al);
	draw_vertex_color(xp + an_wdt - 1, yp + hgt - 2, c, al);
	draw_vertex_color(xp, yp + hgt - an_hgt + 2, c, al);
	draw_vertex_color(xp + 2, yp + hgt - an_hgt + 1, c, al);
	draw_vertex_color(xp, yp, c, al);
	draw_vertex_color(xp+2, yp+2, c, al);
	draw_primitive_end();
}else{
	draw_primitive_begin(pr_trianglestrip);
	draw_vertex_color(xp + 2, yp + 2, col, al*inal);
	draw_vertex_color(xp + 2, yp + hgt - 2, col, al*inal);
	draw_vertex_color(xp + wdt - 2, yp + 2, col, al*inal);
	draw_vertex_color(xp + wdt - an_wdt + 1, yp + hgt - 2, col, al*inal);
	draw_vertex_color(xp + wdt - 2, yp + hgt - an_hgt + 1, col, al*inal);
	draw_primitive_end();
	if boxonly return;
	if portrait>0 draw_sprite_ext(sprite_get(codec_speakername + "_portrait"), codec_speakerimg, xp + 2, yp + hgt - 2, min(2, wdt/96), min(2, hgt/110), 0, $FFB163, portrait);
	draw_primitive_begin(pr_trianglestrip);
	draw_vertex_color(xp, yp, c, al);
	draw_vertex_color(xp+2, yp+2, c, al);
	draw_vertex_color(xp + wdt, yp, c, al);
	draw_vertex_color(xp + wdt-2, yp+2, c, al);
	draw_vertex_color(xp + wdt, yp + hgt - an_hgt + 2, c, al);
	draw_vertex_color(xp + wdt - 2, yp + hgt - an_hgt + 1, c, al);
	draw_vertex_color(xp + wdt - an_wdt + 2, yp + hgt, c, al);
	draw_vertex_color(xp + wdt - an_wdt + 1, yp + hgt - 2, c, al);
	draw_vertex_color(xp, yp + hgt, c, al);
	draw_vertex_color(xp + 2, yp + hgt - 2, c, al);
	draw_vertex_color(xp, yp, c, al);
	draw_vertex_color(xp+2, yp+2, c, al);
	draw_primitive_end();
}
if decoration>0{
	draw_sprite_ext(sprite_get("calling_top"), 0, xp, yp - 6, 2, 2, 0, c_white, decoration);
	draw_sprite_ext(sprite_get("calling_top"), 0, xp + wdt, yp - 6, -2, 2, 0, c_white, decoration);
}
if side > 0 draw_sprite_ext(sprite_get("on_the_sides"), get_gameplay_time()/4, xp + (yi? wdt + 4: -22), yp - 2, 2, 2, 0, c_white, side);
if text > 0 draw_sprite_ext(sprite_get("calling_text"), ceil(text)-1, xp + wdt/2, yp - 8, 2, 2, 0, c_white, text);

#define draw_boxbox(xp, yp, wdt, hgt, al, col, inal, yi, decoration, line, drawtext, text, arrow)
al = clamp(al, 0, 1);
inal = clamp(inal, 0, 1);
shader_end();
var c = $8DE5FC;
draw_primitive_begin(pr_trianglestrip);
draw_vertex_color(xp + 2, yp + 2, col, al*inal);
draw_vertex_color(xp + wdt - 2, yp + 2, col, al*inal);
draw_vertex_color(xp + 2, yp + hgt - 2, col, al*inal);
draw_vertex_color(xp + wdt - 2, yp + hgt - 2, col, al*inal);
draw_primitive_end();
draw_primitive_begin(pr_trianglestrip);
draw_vertex_color(xp, yp, c, al);
draw_vertex_color(xp+2, yp+2, c, al);
draw_vertex_color(xp + wdt, yp, c, al);
draw_vertex_color(xp + wdt-2, yp+2, c, al);
draw_vertex_color(xp + wdt, yp + hgt, c, al);
draw_vertex_color(xp + wdt - 2, yp + hgt - 2, c, al);
draw_vertex_color(xp, yp + hgt, c, al);
draw_vertex_color(xp + 2, yp + hgt - 2, c, al);
draw_vertex_color(xp, yp, c, al);
draw_vertex_color(xp+2, yp+2, c, al);
draw_primitive_end();
if decoration>0{
	draw_sprite_ext(sprite_get("calling_top2"), 0, xp + (yi? 186: wdt - 186), yp - 4, yi*4 - 2, 2, 0, c_white, decoration);
	draw_set_font(asset_get("roaMBLFont"));
	draw_set_halign(fa_center);
	var nm = codec_play[0].char;
	var s = string_replace(nm, string_char_at(nm, 0), string_upper(string_char_at(nm, 0)));
	draw_text_ext_color(xp + (yi? 254 + 20 + string_width(s)/2: wdt - 254 - 20 - string_width(s)/2), yp - 36, s, 0, 1000, $8DE5FC, $8DE5FC, $8DE5FC, $8DE5FC, decoration);
	if line>0 draw_sprite_ext(sprite_get("calling_piece"), 0, xp + (yi? 254 + 20 + string_width(s)/2: wdt - 254 - 20 - string_width(s)/2), yp - 8, 10 + string_width(s)/2, 4, 0, c_white, line);
	draw_sprite_ext(sprite_get("calling_top"), 0, xp + (yi? 254 + 40 + string_width(s): wdt - 254 - 40 - string_width(s)), yp - 4, yi*4 - 2, 2, 0, c_white, decoration);
	
	draw_sprite_ext(sprite_get("calling_top"), 0, xp + (yi? 34: wdt - 34), yp + hgt + 4, 2 - yi*4, -2, 0, c_white, decoration);
	draw_sprite_ext(sprite_get("calling_top"), 0, xp + (yi? 134: wdt - 134), yp + hgt + 4, yi*4 - 2, -2, 0, c_white, decoration);
	var dy = abs(dsin(get_gameplay_time()*4));
	var px = xp + (yi? 84: wdt - 84);
	var py = yp + hgt + 4 + dy*5;
	if arrow{
		draw_primitive_begin(pr_trianglelist);
		draw_vertex_color(px - 10, py, c, decoration);
		draw_vertex_color(px + 10, py, c, decoration);
		draw_vertex_color(px, py + 10, c, decoration);
		draw_primitive_end();
	}
}
if drawtext>0{
	draw_set_font(asset_get("roaMBLFont"));
	draw_set_halign(fa_left);
	draw_text_ext_color(xp + 16, yp + 16, text, 30, 468, $8DE5FC, $8DE5FC, $8DE5FC, $8DE5FC, drawtext);
}

#define color_lerp(c1, c2, lrp)
return make_color_rgb(lerp(color_get_red(c1), color_get_red(c2), lrp), lerp(color_get_green(c1), color_get_green(c2), lrp), lerp(color_get_blue(c1), color_get_blue(c2), lrp));