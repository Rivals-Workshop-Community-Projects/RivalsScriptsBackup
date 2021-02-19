//draw_hud.gml

//draw_debug_text(20, 20, "FPS: " + string(fps));
//draw_debug_text(20, 40, "Real FPS: " + string(fps_real));

//draw_debug_text(temp_x,temp_y-20,"press attack or special while taunting to switch fspecials");

//draw_sprite(sprite_get("dspecial_cooldown_icon"),move_cooldown[AT_DSPECIAL]!=0,temp_x+188,temp_y-12);

if(state==PS_SPAWN&&show_spedometer=false){
    draw_debug_text(temp_x,temp_y-20,"Press Special to Activate Speedometer");
}

if(show_spedometer&&!guide_fd_active){
    var sped_x = temp_x;
    var sped_y = temp_y;
    var sped_angle_temp = clamp(130-(hitpause*(abs(hitpause_hsp))+(!hitpause*(abs(hsp))))*16.25,-130,130);
    sped_angle+=(sped_angle_temp-sped_angle)/4;
    var boosted = sped_angle_temp<=0;
    draw_sprite(sprite_get("spedometer_back"),0,sped_x,sped_y);
    draw_sprite_ext(sprite_get("spedometer_pointer"),0,sped_x+1,sped_y+1,1,1,sped_angle,c_white,1);
    draw_sprite(sprite_get("spedometer_front"),0,sped_x,sped_y);
    draw_sprite(sprite_get("spedometer_boost"),(boosted*((get_gameplay_time()/12)%10))+10*!boosted,sped_x,sped_y);
    draw_debug_text(temp_x+40,temp_y-30,"strong");
    draw_debug_text(temp_x+45,temp_y-10,"boost");
}

if(practice&&get_gameplay_time()<500&&!guide_active){
    draw_debug_text(temp_x+100,temp_y-40,"press special during");
    draw_debug_text(temp_x+100,temp_y-20,"taunt to open guide");
}

if(guide_fd_active){
    get_framedata();
    draw_sprite(sprite_get("framedata"),0,0,-10);
    //draw_debug_text(150,420, "Move | Startup | Active Frames | Endlag | FAF | Damage | Angle | Base kb | kb Scaling | Notes");
    //draw_debug_text(10,440, "Damage | Angle | Base Knockback | Knockback Scaling | Notes");
    for(var i=9;i>=0;i--){
        var h_start=0;
        switch i {
            case 1:
                h_start=100;
            break;
            case 2:
                h_start=136;
            break;
            case 3:
                h_start=195;
            break;
            case 4:
                h_start=225;
            break;
            case 5:
                h_start=245;
            break;
            case 6:
                h_start=279;
            break;
            case 7:
                h_start=305;
            break;
            case 8:
                h_start=340;
            break;
            case 9:
                h_start=383;
            break;
            default:
                
            break;
        }
        h_start*=2;
        for(var j=2;j>=0;j--;){
            if(i==0){
                h_start=guide_fd_f_h_start[j];
            }
            draw_debug_text(h_start,428+j*20,string(guide_fd_grid[i,j]));
        }
    }
    draw_debug_text(384*2,248*2-10,"*damage scales with");
    draw_debug_text(384*2,248*2+10," speed. uses formula:");
    draw_debug_text(384*2,248*2+30,"     1+(speed/30)");
}

if(guide_active){
    draw_sprite(sprite_get("guide"),guide_frame,0,0);
    draw_sprite_ext(sprite_get("guide_text"),0,266,136,1,1,0,c_white,guide_menu_alpha);
    for(var i=0; i<16; i++){
        draw_debug_text(286, 156+20*i, guide_writetext[i]);
    }
    if(guide_menu_state==3){
        draw_sprite(sprite_get("guide_text_selection"),0, 258+(floor((get_gameplay_time()%80)/40)*10), 193+20*guide_menu_selected);
    }
    if(guide_state==1){
        draw_debug_text(430, 450, "attack: open");
    }
    if(guide_state==4){
        draw_debug_text(286, 420, "attack: advance");
        draw_debug_text(436, 420, "special: back");
        draw_debug_text(592, 420, "taunt: close");
        if(guide_textbox>0){
            switch guide_menu_selected {
                case 0:
                    draw_debug_text(440, 116, "Mechanics");
                break;
                case 1:
                    draw_debug_text(444, 116, "Specials");
                break;
                case 2:
                    draw_debug_text(420, 116, "Normals / Strongs");
                break;
                /*case 3:
                    draw_debug_text(438, 116, "Framedata");
                break;//*/
                case 3:
                    draw_debug_text(426, 116, "Combos / Tech");
                break;
                case 4:
                    draw_debug_text(440, 116, "Changelog");
                break;
            }
        } else {
            draw_debug_text(438, 116, "Categories");
        }
        
        
        //draw_debug_text(286, 156-20, string(guide_textbox));
    }
    if(guide_menu_state==5){
        if(is_text_over()){
            draw_sprite_ext(sprite_get("guide_text_selection"),0,676+(floor((get_gameplay_time()%80)/40)*10),390,-1,1,0,c_white,1);
        } else {
            draw_sprite(sprite_get("guide_text_selection"),0,660+(floor((get_gameplay_time()%80)/40)*10),390);
        }
    }
}

if(guide_head_active){
    //draw_sprite(sprite_get("guide_head"),guide_head_frame,638,314);
}

/*draw_debug_text(temp_x, temp_y-60, string(hsp));
draw_debug_text(temp_x+50, temp_y-60, string(hitpause_hsp));
draw_debug_text(temp_x+100, temp_y-60, string(hitpause));
draw_debug_text(temp_x, temp_y-80, string(previous_hsp1));
draw_debug_text(temp_x+50, temp_y-80, string(temping));//*/

//abyss gui code
ab_hud_x = temp_x;
ab_hud_y = temp_y;
//this is for the outdated warning message
if ("depNotice" not in self) depNotice = 0;
if ("abyssEnabled" in self && abyssEnabled && (menuActive || timerActive)) abyssDraw();
#define abyssDraw 
/// abyssDraw()
/// draws text and images the player recieved from the abyss buddy.
if ("abyss_drawArray" in self && ds_list_valid(abyss_drawArray))  {
    if (ds_list_size(abyss_drawArray) > 0) {
        for (var _i = 0; _i < ds_list_size(abyss_drawArray);_i++) {
            var _text = abyss_drawArray[| _i];
            if draw_get_halign() != _text[6] {
                draw_set_halign(_text[6]);
            }
            switch (_text[0]) {
                case 0:
                    draw_debug_text(floor(_text[1]),floor(_text[2]),string(_text[3]));
                    break;
                case 1:
                    draw_sprite_ext(_text[3],_text[5],_text[1],_text[2],1,1,0,_text[4],1);
                    break;
                case 2:
                    draw_text_plus(floor(_text[1]),floor(_text[2]),string(_text[3]),floor(_text[5]),floor(_text[4]));
                    break;
                case 3:
                    if draw_get_font() != 1 draw_set_font(1);
              draw_text_ext_color(floor(_text[1]),floor(_text[2]),string(_text[3]),16,floor(_text[5]),_text[4],_text[4],_text[4],_text[4], 1);
                    break;
                default:
                break;
            }
        }
    }
    //finished drawing, so clear the table for the next frame.
    ds_list_clear(abyss_drawArray);
}
//return draw_calls;
#define draw_text_plus
/// draw_text_plus(x, y, text, font, color = c_white)
/// draws outlined text in any in-game font.
if draw_get_font() != argument[3] {
    draw_set_font(argument[3]);
}
draw_text_color(argument[0]+2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1],argument[2],argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,1);
#define is_text_over
switch guide_textbox {
	case 52: 
		return true; 
	break;
	case 103: 
		return true; 
	break;
	case 151: 
		return true; 
	break;
	case 200: 
		return true; 
	break;
	case 251: 
		return true; 
	break;
	case 300: 
		return true; 
	break;
	default:
		return false;
	break;
}
#define get_framedata
for(var i=9;i>=0;i--){
    for(var j=2;j>=0;j--;){
        guide_fd_grid[i,j]="";
    }
}
switch attack {
    case AT_JAB:
        guide_fd_f_h_start[0]=150;
        guide_fd_grid[0,0]="Jab 1"; guide_fd_grid[1,0]="5"; guide_fd_grid[2,0]="6-8"; guide_fd_grid[3,0]="11/15"; guide_fd_grid[4,0]="23";
            guide_fd_grid[5,0]="2"; guide_fd_grid[6,0]="35"; guide_fd_grid[7,0]="4+"; guide_fd_grid[8,0]="0"; guide_fd_grid[9,0]="knockback scales";
        guide_fd_f_h_start[1]=150;
        guide_fd_grid[0,1]="Jab 2"; guide_fd_grid[1,1]="4"; guide_fd_grid[2,1]="5-7"; guide_fd_grid[3,1]="11/15"; guide_fd_grid[4,1]="22";
            guide_fd_grid[5,1]="2"; guide_fd_grid[6,1]="35"; guide_fd_grid[7,1]="4+"; guide_fd_grid[8,1]="0"; guide_fd_grid[9,1]="with speed";
        guide_fd_f_h_start[2]=150;
        guide_fd_grid[0,2]="Jab 3"; guide_fd_grid[1,2]="4"; guide_fd_grid[2,2]="5-7"; guide_fd_grid[3,2]="13/18"; guide_fd_grid[4,2]="25";
            guide_fd_grid[5,2]="6*"; guide_fd_grid[6,2]="55"; guide_fd_grid[7,2]="8"; guide_fd_grid[8,2]=".5"; guide_fd_grid[9,2]="";
    break;
    case AT_DATTACK:
        guide_fd_f_h_start[0]=102;
        guide_fd_grid[0,0]="Dash Attack"; guide_fd_grid[1,0]="5"; guide_fd_grid[2,0]="6-12"; guide_fd_grid[3,0]="12/18"; guide_fd_grid[4,0]="30";
            guide_fd_grid[5,0]="6"; guide_fd_grid[6,0]="45"; guide_fd_grid[7,0]="7"; guide_fd_grid[8,0]=".4"; guide_fd_grid[9,0]="Jump cancellable on";
                                                                                                                guide_fd_grid[9,1]="hit";
    break;
    case AT_FTILT:
        guide_fd_f_h_start[0]=54;
        guide_fd_grid[0,0]="Forward Tilt: Hit 1"; guide_fd_grid[1,0]="5"; guide_fd_grid[2,0]="6-8"; guide_fd_grid[3,0]="--"; guide_fd_grid[4,0]="--";
            guide_fd_grid[5,0]="3*"; guide_fd_grid[6,0]="--"; guide_fd_grid[7,0]="--"; guide_fd_grid[8,0]="--"; guide_fd_grid[9,0]="First hit grabs into";
        guide_fd_f_h_start[1]=154;
        guide_fd_grid[0,1]="Hit 2"; guide_fd_grid[1,1]="--"; guide_fd_grid[2,1]="14-16"; guide_fd_grid[3,1]="11/15"; guide_fd_grid[4,1]="31";
            guide_fd_grid[5,1]="3*"; guide_fd_grid[6,1]="60"; guide_fd_grid[7,1]="8"; guide_fd_grid[8,1]=".3"; guide_fd_grid[9,1]="second _____";
        guide_fd_f_h_start[2]=126;
        guide_fd_grid[0,2]="Spike Hit"; guide_fd_grid[1,2]="--"; guide_fd_grid[2,2]="14-16"; guide_fd_grid[3,2]="--"; guide_fd_grid[4,2]="--";
            guide_fd_grid[5,2]="4*"; guide_fd_grid[6,2]="270"; guide_fd_grid[7,2]="8"; guide_fd_grid[8,2]=".5"; guide_fd_grid[9,2]="Air targets only";
    break;
    case AT_DTILT:
        guide_fd_f_h_start[0]=108;
        guide_fd_grid[0,0]="Down Tilt 1"; guide_fd_grid[1,0]="6"; guide_fd_grid[2,0]="7-13"; guide_fd_grid[3,0]="14/21"; guide_fd_grid[4,0]="34";
            guide_fd_grid[5,0]="3*"; guide_fd_grid[6,0]="45"; guide_fd_grid[7,0]="10 -> 5"; guide_fd_grid[8,0]=".2"; guide_fd_grid[9,0]="";
        guide_fd_f_h_start[1]=108;
        guide_fd_grid[0,1]="Down Tilt 2"; guide_fd_grid[1,1]="3"; guide_fd_grid[2,1]="4-10"; guide_fd_grid[3,1]="12/18"; guide_fd_grid[4,1]="28";
            guide_fd_grid[5,1]="3*"; guide_fd_grid[6,1]="50"; guide_fd_grid[7,1]="9"; guide_fd_grid[8,1]=".4"; guide_fd_grid[9,1]="";
    break;
    case AT_UTILT:
        guide_fd_f_h_start[0]=98;
        guide_fd_grid[0,0]="Up Tilt: Hit 1"; guide_fd_grid[1,0]="7"; guide_fd_grid[2,0]="8-9"; guide_fd_grid[3,0]="--"; guide_fd_grid[4,0]="--";
            guide_fd_grid[5,0]="2*"; guide_fd_grid[6,0]="--"; guide_fd_grid[7,0]="--"; guide_fd_grid[8,0]="--"; guide_fd_grid[9,0]="First hit grabs into";
        guide_fd_f_h_start[1]=154;
        guide_fd_grid[0,1]="Hit 2"; guide_fd_grid[1,1]="--"; guide_fd_grid[2,1]="10-13"; guide_fd_grid[3,1]="12/18"; guide_fd_grid[4,1]="31";
            guide_fd_grid[5,1]="6*"; guide_fd_grid[6,1]="70"; guide_fd_grid[7,1]="9"; guide_fd_grid[8,1]=".2"; guide_fd_grid[9,1]="second";
    break;
    
    case AT_NAIR:
        guide_fd_f_h_start[0]=38;
        guide_fd_grid[0,0]="Neutral Air: Early Hit"; guide_fd_grid[1,0]="3"; guide_fd_grid[2,0]="4-7"; guide_fd_grid[3,0]="--"; guide_fd_grid[4,0]="--";
            guide_fd_grid[5,0]="7"; guide_fd_grid[6,0]="55"; guide_fd_grid[7,0]="7"; guide_fd_grid[8,0]=".5"; guide_fd_grid[9,0]="Landing Lag: 4/6";
        guide_fd_f_h_start[1]=130;
        guide_fd_grid[0,1]="Late Hit"; guide_fd_grid[1,1]="--"; guide_fd_grid[2,1]="8-15"; guide_fd_grid[3,1]="8/12"; guide_fd_grid[4,1]="27";
            guide_fd_grid[5,1]="5"; guide_fd_grid[6,1]="65"; guide_fd_grid[7,1]="5"; guide_fd_grid[8,1]=".3"; guide_fd_grid[9,1]="";
    break;
    case AT_FAIR:
        guide_fd_f_h_start[0]=58;
        guide_fd_grid[0,0]="Forward Air: Hit 1"; guide_fd_grid[1,0]="6"; guide_fd_grid[2,0]="7-10"; guide_fd_grid[3,0]="--"; guide_fd_grid[4,0]="--";
            guide_fd_grid[5,0]="3*"; guide_fd_grid[6,0]="45"; guide_fd_grid[7,0]="8"; guide_fd_grid[8,0]=".3"; guide_fd_grid[9,0]="Landing Lag: 6/9";
        guide_fd_f_h_start[1]=154;
        guide_fd_grid[0,1]="Hit 2"; guide_fd_grid[1,1]="--"; guide_fd_grid[2,1]="17-20"; guide_fd_grid[3,1]="10/15"; guide_fd_grid[4,1]="35";
            guide_fd_grid[5,1]="3*"; guide_fd_grid[6,1]="45"; guide_fd_grid[7,1]="8"; guide_fd_grid[8,1]=".3"; guide_fd_grid[9,1]="";
    break;
    case AT_UAIR:
        guide_fd_f_h_start[0]=146;
        guide_fd_grid[0,0]="Up Air"; guide_fd_grid[1,0]="4"; guide_fd_grid[2,0]="5-10"; guide_fd_grid[3,0]="12/18"; guide_fd_grid[4,0]="28";
            guide_fd_grid[5,0]="4*"; guide_fd_grid[6,0]="40"; guide_fd_grid[7,0]="6"; guide_fd_grid[8,0]=".6"; guide_fd_grid[9,0]="Landing Lag: 6/9";
    break;
    case AT_BAIR:
        if(state==PS_ATTACK_AIR&&window<3){
            guide_fd_f_h_start[0]=44;
            guide_fd_grid[0,0]="Back Air: Sweetspot"; guide_fd_grid[1,0]="9"; guide_fd_grid[2,0]="10-11"; guide_fd_grid[3,0]="--"; guide_fd_grid[4,0]="--";
                guide_fd_grid[5,0]="10*"; guide_fd_grid[6,0]="40"; guide_fd_grid[7,0]="8"; guide_fd_grid[8,0]=".8"; guide_fd_grid[9,0]="Landing Lag: 11/17";
            guide_fd_f_h_start[1]=124;
            guide_fd_grid[0,1]="Sourspot"; guide_fd_grid[1,1]="--"; guide_fd_grid[2,1]="10-11"; guide_fd_grid[3,1]="--"; guide_fd_grid[4,1]="--";
                guide_fd_grid[5,1]="5*"; guide_fd_grid[6,1]="45"; guide_fd_grid[7,1]="7"; guide_fd_grid[8,1]=".5"; guide_fd_grid[9,1]="";
            guide_fd_f_h_start[2]=88;
            guide_fd_grid[0,2]="Inside Leg Hit"; guide_fd_grid[1,2]="--"; guide_fd_grid[2,2]="10-11"; guide_fd_grid[3,2]="--"; guide_fd_grid[4,2]="--";
                guide_fd_grid[5,2]="5"; guide_fd_grid[6,2]="45"; guide_fd_grid[7,2]="7"; guide_fd_grid[8,2]=".5"; guide_fd_grid[9,2]="";
        } else {
            guide_fd_f_h_start[0]=120;
            guide_fd_grid[0,0]="Travelling"; guide_fd_grid[1,0]="--"; guide_fd_grid[2,0]="12-23"; guide_fd_grid[3,0]="10/15"; guide_fd_grid[4,0]="38";
                guide_fd_grid[5,0]="7"; guide_fd_grid[6,0]="55"; guide_fd_grid[7,0]="8"; guide_fd_grid[8,0]=".2"; guide_fd_grid[9,0]="Frame Advance to";
            guide_fd_f_h_start[1]=120;
            guide_fd_grid[0,1]="Projectile"; guide_fd_grid[1,1]="--"; guide_fd_grid[2,1]="10-12"; guide_fd_grid[3,1]="--"; guide_fd_grid[4,1]="--";
                guide_fd_grid[5,1]="4"; guide_fd_grid[6,1]="45"; guide_fd_grid[7,1]="6"; guide_fd_grid[8,1]=".4"; guide_fd_grid[9,1]="see the rest";
        }
    break;
    case AT_DAIR:
        guide_fd_f_h_start[0]=54;
        guide_fd_grid[0,0]="Down Air: Early Hit"; guide_fd_grid[1,0]="11"; guide_fd_grid[2,0]="12-13"; guide_fd_grid[3,0]="--"; guide_fd_grid[4,0]="--";
            guide_fd_grid[5,0]="8*"; guide_fd_grid[6,0]="270"; guide_fd_grid[7,0]="6"; guide_fd_grid[8,0]=".6"; guide_fd_grid[9,0]="Landing Lag: 9/14";
        guide_fd_f_h_start[1]=130;
        guide_fd_grid[0,1]="Late Hit"; guide_fd_grid[1,1]="--"; guide_fd_grid[2,1]="14-15"; guide_fd_grid[3,1]="--"; guide_fd_grid[4,1]="--";
            guide_fd_grid[5,1]="6*"; guide_fd_grid[6,1]="35"; guide_fd_grid[7,1]="8"; guide_fd_grid[8,1]=".5"; guide_fd_grid[9,1]="";
        guide_fd_f_h_start[2]=122;
        guide_fd_grid[0,2]="Later Hit"; guide_fd_grid[1,2]="--"; guide_fd_grid[2,2]="16-17"; guide_fd_grid[3,2]="14/21"; guide_fd_grid[4,2]="38";
            guide_fd_grid[5,2]="6*"; guide_fd_grid[6,2]="80"; guide_fd_grid[7,2]="8"; guide_fd_grid[8,2]=".7"; guide_fd_grid[9,2]="";
    break;
    
    case AT_FSTRONG:
        guide_fd_f_h_start[0]=74;
        guide_fd_grid[0,0]="Forward Strong"; guide_fd_grid[1,0]="15"; guide_fd_grid[2,0]="16-18"; guide_fd_grid[3,0]="21/32"; guide_fd_grid[4,0]="50";
            guide_fd_grid[5,0]="10*"; guide_fd_grid[6,0]="361"; guide_fd_grid[7,0]="7 (8)"; guide_fd_grid[8,0]=".85 (1.05)"; guide_fd_grid[9,0]="() are boosted values";
    break;
    case AT_USTRONG:
        guide_fd_f_h_start[0]=46;
        guide_fd_grid[0,0]="Up Strong: Early Hit"; guide_fd_grid[1,0]="12"; guide_fd_grid[2,0]="13-15"; guide_fd_grid[3,0]="--"; guide_fd_grid[4,0]="--";
            guide_fd_grid[5,0]="9*"; guide_fd_grid[6,0]="90"; guide_fd_grid[7,0]="8 (9)"; guide_fd_grid[8,0]="1.05 (1.25)"; guide_fd_grid[9,0]="() are boosted values";
        guide_fd_f_h_start[1]=130;
        guide_fd_grid[0,1]="Late Hit"; guide_fd_grid[1,1]="--"; guide_fd_grid[2,1]="16-18"; guide_fd_grid[3,1]="20/30"; guide_fd_grid[4,1]="48";
            guide_fd_grid[5,1]="7*"; guide_fd_grid[6,1]="120"; guide_fd_grid[7,1]="9 (10)"; guide_fd_grid[8,1]=".65 (.85)"; guide_fd_grid[9,1]="";
    break;
    case AT_DSTRONG:
        guide_fd_f_h_start[0]=54;
        guide_fd_grid[0,0]="Down Strong: Hit 1"; guide_fd_grid[1,0]="7"; guide_fd_grid[2,0]="8-10"; guide_fd_grid[3,0]="--"; guide_fd_grid[4,0]="--";
            guide_fd_grid[5,0]="3*"; guide_fd_grid[6,0]="--"; guide_fd_grid[7,0]="--"; guide_fd_grid[8,0]="--"; guide_fd_grid[9,0]="() are boosted values __";
        guide_fd_f_h_start[1]=154;
        guide_fd_grid[0,1]="Hit 2"; guide_fd_grid[1,1]="--"; guide_fd_grid[2,1]="15-17"; guide_fd_grid[3,1]="20/30"; guide_fd_grid[4,1]="47";
            guide_fd_grid[5,1]="6*"; guide_fd_grid[6,1]="45"; guide_fd_grid[7,1]="8 (9)"; guide_fd_grid[8,1]="1 (1.2)"; guide_fd_grid[9,1]="First hit grabs into";
                                                                                                                        guide_fd_grid[9,2]="second";
    break;
    
    case AT_NSPECIAL:
        guide_fd_f_h_start[0]=26;
        guide_fd_grid[0,0]="Neutral Special 1: Sour"; guide_fd_grid[1,0]="8-4"; guide_fd_grid[2,0]="(9-5)-(11-7)"; guide_fd_grid[3,0]="--"; guide_fd_grid[4,0]="30-19";
            guide_fd_grid[5,0]="  5-7"; guide_fd_grid[6,0]="45"; guide_fd_grid[7,0]="7.33-16"; guide_fd_grid[8,0]=".2"; guide_fd_grid[9,0]="(Slowest-Fastest)";
        guide_fd_f_h_start[1]=144;
        guide_fd_grid[0,1]="Tipper"; guide_fd_grid[1,1]="--"; guide_fd_grid[2,1]="--"; guide_fd_grid[3,1]="15-8/19-12"; guide_fd_grid[4,1]="";
            guide_fd_grid[5,1]="9-13"; guide_fd_grid[6,1]="135"; guide_fd_grid[7,1]="8-12"; guide_fd_grid[8,1]=".6-1"; guide_fd_grid[9,1]="";
        guide_fd_f_h_start[2]=68;
        guide_fd_grid[0,2]="Neutral Special 2"; guide_fd_grid[1,2]="5"; guide_fd_grid[2,2]="6-13"; guide_fd_grid[3,2]="10/15"; guide_fd_grid[4,2]="28";
            guide_fd_grid[5,2]="4"; guide_fd_grid[6,2]="55"; guide_fd_grid[7,2]="8"; guide_fd_grid[8,2]=".5"; guide_fd_grid[9,2]="";
    break;
    case AT_FSPECIAL:
        guide_fd_f_h_start[0]=74;
        guide_fd_grid[0,0]="Fspecial: Charge"; guide_fd_grid[1,0]="6"; guide_fd_grid[2,0]="--"; guide_fd_grid[3,0]="12"; guide_fd_grid[4,0]="28";
            guide_fd_grid[5,0]="--"; guide_fd_grid[6,0]="--"; guide_fd_grid[7,0]="--"; guide_fd_grid[8,0]="--"; guide_fd_grid[9,0]="Assumes instant cancel __";
        guide_fd_f_h_start[1]=160;
        guide_fd_grid[0,1]="Kick"; guide_fd_grid[1,1]="4"; guide_fd_grid[2,1]="5-9"; guide_fd_grid[3,1]="10/15"; guide_fd_grid[4,1]="24";
            guide_fd_grid[5,1]="6"; guide_fd_grid[6,1]="45"; guide_fd_grid[7,1]="8"; guide_fd_grid[8,1]=".4"; guide_fd_grid[9,1]="From Charge ______";
        guide_fd_f_h_start[2]=132;
        guide_fd_grid[0,2]="Charged"; guide_fd_grid[1,2]="17"; guide_fd_grid[2,2]="18-22"; guide_fd_grid[3,2]="16/24"; guide_fd_grid[4,2]="46";
            guide_fd_grid[5,2]="12"; guide_fd_grid[6,2]="45"; guide_fd_grid[7,2]="10"; guide_fd_grid[8,2]="1"; guide_fd_grid[9,2]="From idle";
    break;
    case AT_USPECIAL:
        guide_fd_f_h_start[0]=104;
        guide_fd_grid[0,0]="Up Special 1"; guide_fd_grid[1,0]="9"; guide_fd_grid[2,0]="6-8"; guide_fd_grid[3,0]="20/20"; guide_fd_grid[4,0]="23";
            guide_fd_grid[5,0]="2*"; guide_fd_grid[6,0]="~70"; guide_fd_grid[7,0]="10 -> 7"; guide_fd_grid[8,0]="0"; guide_fd_grid[9,0]="sends into pratfall __";
        guide_fd_f_h_start[1]=104;
        guide_fd_grid[0,1]="Up Special 2"; guide_fd_grid[1,1]="6"; guide_fd_grid[2,1]="7->"; guide_fd_grid[3,1]="11/15"; guide_fd_grid[4,1]="22";
            guide_fd_grid[5,1]="2*"; guide_fd_grid[6,1]="~-70"; guide_fd_grid[7,1]="10"; guide_fd_grid[8,1]=".7"; guide_fd_grid[9,1]="cancellable frame 20->";
        guide_fd_f_h_start[2]=136;
        guide_fd_grid[0,2]="Landing"; guide_fd_grid[1,2]="0"; guide_fd_grid[2,2]="1-6"; guide_fd_grid[3,2]="24/24"; guide_fd_grid[4,2]="30";
            guide_fd_grid[5,2]="3*"; guide_fd_grid[6,2]="40"; guide_fd_grid[7,2]="8"; guide_fd_grid[8,2]=".5"; guide_fd_grid[9,2]="";
    break;
    case AT_DSPECIAL:
        guide_fd_f_h_start[0]=64;
        guide_fd_grid[0,0]="Down Special: Flip"; guide_fd_grid[1,0]="--"; guide_fd_grid[2,0]="--"; guide_fd_grid[3,0]="--"; guide_fd_grid[4,0]="50";
            guide_fd_grid[5,0]="--"; guide_fd_grid[6,0]="--"; guide_fd_grid[7,0]="--"; guide_fd_grid[8,0]="--"; guide_fd_grid[9,0]="The kick starts on";
        guide_fd_f_h_start[1]=88;
        guide_fd_grid[0,1]="Kick: Early Hit"; guide_fd_grid[1,1]="6"; guide_fd_grid[2,1]="7-10"; guide_fd_grid[3,1]="--"; guide_fd_grid[4,1]="--";
            guide_fd_grid[5,1]="8"; guide_fd_grid[6,1]="-45"; guide_fd_grid[7,1]="8"; guide_fd_grid[8,1]=".7"; guide_fd_grid[9,1]="frame 18 at the";
        guide_fd_f_h_start[2]=130;
        guide_fd_grid[0,2]="Late Hit"; guide_fd_grid[1,2]="--"; guide_fd_grid[2,2]="11-26"; guide_fd_grid[3,2]="0/10"; guide_fd_grid[4,2]="36";
            guide_fd_grid[5,2]="8"; guide_fd_grid[6,2]="45"; guide_fd_grid[7,2]="8"; guide_fd_grid[8,2]=".5"; guide_fd_grid[9,2]="earliest";
    break;
    
    case AT_TAUNT:
        guide_fd_f_h_start[0]=104;
        guide_fd_grid[0,0]="Taunt: Hit 1"; guide_fd_grid[1,0]="12"; guide_fd_grid[2,0]="8-9"; guide_fd_grid[3,0]="9/9"; guide_fd_grid[4,0]="59";
            guide_fd_grid[5,0]="1"; guide_fd_grid[6,0]="70"; guide_fd_grid[7,0]="3"; guide_fd_grid[8,0]="0"; guide_fd_grid[9,0]="Loops for as long as";
        guide_fd_f_h_start[1]=154;
        guide_fd_grid[0,1]="Hit 2"; guide_fd_grid[1,1]="--"; guide_fd_grid[2,1]="10-13"; guide_fd_grid[3,1]="--"; guide_fd_grid[4,1]="--";
            guide_fd_grid[5,1]="1"; guide_fd_grid[6,1]="110"; guide_fd_grid[7,1]="3"; guide_fd_grid[8,1]="0"; guide_fd_grid[9,1]="the button is held";
    break;
    default:
    break;
}