///#args atk

if prev_state = PS_RESPAWN && respawn_anim < 149{
	move_cooldown[attack] = 2;
	exit;
}
if !move_cooldown[attack] switch attack{
	case AT_FSTRONG:
	if qi_stack attack = AT_FSTRONG_2;
	break;
	
	case AT_USTRONG:
	if qi_stack attack = AT_USTRONG_2;
	break;
	
	case AT_DSTRONG:
	movepl = [];
	if qi_stack attack = AT_DSTRONG_2;
	break;
	
	case AT_FSPECIAL:
	grabp = noone;
	grabp2 = noone;
	fspec_charge = 0;
	draw_fx = 0;
	fspecial_dashhit = 0;
	break;
	
	case AT_NSPECIAL:
	circletimer = 0;
	break;
	
	case AT_DSPECIAL:
	circletimer = 0;
	if (instance_exists(nymph) && nymph.state >= 3) || nymph_cooldown move_cooldown[attack] = 2;
	break;
	
	case AT_USPECIAL:
	usp_angle = -30;
	grabp = noone;
	usp_pos = -1;
	if free vsp = -3;
	set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 0);
	set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 7);
	usp_pratcancel = 1;
	break;
	
	case AT_TAUNT:
	if codec_avail && (up_down || up_pressed){
		if codec_buffer{
			old_idx = image_index;
			codec_avail = 0;
			codec_timer = 0;
			codec_intro = 1;
			codec_yi = 0;
			codec_speaker = 0;
			codec_col = [$8DE5FC, $8DE5FC];
			attack = AT_EXTRA_3;
			special_url = null;
			codec_speakername = "";
			with oPlayer if self != other && "yi_codec_available" in self && yi_codec_available{
				yi_codec_available = 0;
				if "is_Yi_ninesols" in self other.yi_codec_available = 0;
				if "yi_codec_data" in self && array_length(yi_codec_data) other.codec_play = array_clone(yi_codec_data);
				else other.special_url = url;
			}
			var g = 0;
			if special_url == null repeat array_length(codec_play){//integrity check
				var ch = codec_play[g].char;
				if !(is_string(ch) && array_find_index(codec_chars, string_lower(ch))+1) {special_url = ""; print("Invalid codec character name on block " + string(g)); break;}
				else codec_play[@g].char = string_lower(ch);
				if !is_real(codec_play[g].expr) {special_url = ""; print("character expression must be a number, error on block " + string(g)); break;}
				if !is_string(codec_play[g].txt) {special_url = ""; print("dialogue must be text, error on block " + string(g)); break;}
				if !is_real(codec_play[g].clip) {special_url = ""; print("character voice clip must be a number, error on block " + string(g)); break;}
				g++;
			}
			if special_url != null user_event(1);
			g = 0;
			repeat array_length(codec_play){
				var ch = codec_play[g].char;
				if ch != "yi" && codec_speakername == ""{
					codec_speakername = ch;
					codec_speakerimg = (g == 0)*codec_play[g].expr;
				}
				//format strings with appropriate newlines
				var txt = codec_play[g].txt;
				var i = 1;
				var wdt = 0;
				draw_set_font(asset_get("roaMBLFont"));
				repeat string_length(txt){
					wdt = string_width(string_copy(txt, 0, i));
					if wdt > 468{
						var n = i-1;
						repeat n{
							if string_char_at(txt, n) == " "{
								codec_play[g].txt = string_copy(txt, 0, n-1) + chr(13) + string_copy(txt, n+1, string_length(txt)-n);
								var txt = codec_play[g].txt;
								break;
							}
							n--;
						}
						wdt = 0;
					}
					i++;
				}
				g++;
			}
		}else{
			codec_buffer = 10;
			move_cooldown[attack] = 2;
			clear_button_buffer(PC_TAUNT_PRESSED);
			clear_button_buffer(PC_UP_STICK_PRESSED);
			break;
		}
	}
	if down_down || down_pressed attack = AT_TAUNT_2;
	break;
}