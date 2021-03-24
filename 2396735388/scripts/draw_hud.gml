if "practice" in self {
    // draw_hud.gml
    
    draw_sprite(sprite_get("nspecial_cooldown_icon"),move_cooldown[AT_NSPECIAL]!=0,temp_x+188,temp_y-16);
    
    //guide stuff
    if(practice&&get_gameplay_time()<500&&!guide_active){
        draw_debug_text(temp_x+10,temp_y-20,"press special during taunt");
        draw_debug_text(temp_x+10,temp_y-40,"to open guide,");
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
    }
    
    if(guide_active){
        draw_sprite_ext(sprite_get("guide"),guide_frame,0,0,2,2,0,c_white,1);
        draw_sprite_ext(sprite_get("guide_text"),0,266,136,1,1,0,c_white,guide_menu_alpha*1.2);
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
                        draw_debug_text(424, 116, "Quick Rundown");
                    break;
                    case 1:
                        draw_debug_text(426, 116, "In-depth Tour");
                    break;
                    case 2:
                        draw_debug_text(422, 116, "Misc Move Info");
                    break;
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
}

#define is_text_over
switch guide_textbox {
	case 51: 
		return true; 
	break;
	case 103: 
		return true; 
	break;
	case 150: 
		return true; 
	break;
	case 200: 
		return true; 
	break;
	case 250: 
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
var eff_attack = prev_attack;

switch eff_attack {
    case AT_JAB:
        guide_fd_f_h_start[0]=150;
        guide_fd_grid[0,0]="Jab 1"; guide_fd_grid[1,0]="4"; guide_fd_grid[2,0]="5-7"; guide_fd_grid[3,0]="13"; guide_fd_grid[4,0]="20";
            guide_fd_grid[5,0]="2"; guide_fd_grid[6,0]="35"; guide_fd_grid[7,0]="4"; guide_fd_grid[8,0]="0"; guide_fd_grid[9,0]="";
        guide_fd_f_h_start[1]=150;
        guide_fd_grid[0,1]="Jab 2"; guide_fd_grid[1,1]="4"; guide_fd_grid[2,1]="5-7"; guide_fd_grid[3,1]="13"; guide_fd_grid[4,1]="22";
            guide_fd_grid[5,1]="2"; guide_fd_grid[6,1]="35"; guide_fd_grid[7,1]="4"; guide_fd_grid[8,1]="0"; guide_fd_grid[9,1]="";
        guide_fd_f_h_start[2]=150;
        guide_fd_grid[0,2]="Jab 3"; guide_fd_grid[1,2]="4"; guide_fd_grid[2,2]="5-10"; guide_fd_grid[3,2]="6/14"; guide_fd_grid[4,2]="24";
            guide_fd_grid[5,2]="6"; guide_fd_grid[6,2]="55"; guide_fd_grid[7,2]="8"; guide_fd_grid[8,2]=".5"; guide_fd_grid[9,2]="";
    break;
    case AT_DATTACK:
        guide_fd_f_h_start[0]=102;
        guide_fd_grid[0,0]="Dash Attack"; guide_fd_grid[1,0]="9"; guide_fd_grid[2,0]="10-11"; guide_fd_grid[3,0]="12/18"; guide_fd_grid[4,0]="38";
            guide_fd_grid[5,0]="7"; guide_fd_grid[6,0]="-80"; guide_fd_grid[7,0]="6"; guide_fd_grid[8,0]=".3"; guide_fd_grid[9,0]="";
    break;
    case AT_FTILT:
        guide_fd_f_h_start[0]=86;
        guide_fd_grid[0,0]="FTilt: Hits 1-3"; guide_fd_grid[1,0]="8"; guide_fd_grid[2,0]="9-17"; guide_fd_grid[3,0]="--"; guide_fd_grid[4,0]="--";
            guide_fd_grid[5,0]="2"; guide_fd_grid[6,0]="0"; guide_fd_grid[7,0]="5"; guide_fd_grid[8,0]="0"; guide_fd_grid[9,0]="";
        guide_fd_f_h_start[1]=154;
        guide_fd_grid[0,1]="Hit 4"; guide_fd_grid[1,1]="--"; guide_fd_grid[2,1]="18-20"; guide_fd_grid[3,1]="13/20"; guide_fd_grid[4,1]="40";
            guide_fd_grid[5,1]="3"; guide_fd_grid[6,1]="361"; guide_fd_grid[7,1]="8"; guide_fd_grid[8,1]=".7"; guide_fd_grid[9,1]="";
    break;
    case AT_DTILT:
        guide_fd_f_h_start[0]=122;
        guide_fd_grid[0,0]="Down Tilt"; guide_fd_grid[1,0]="6"; guide_fd_grid[2,0]="7-8"; guide_fd_grid[3,0]="12/18"; guide_fd_grid[4,0]="26";
            guide_fd_grid[5,0]="6"; guide_fd_grid[6,0]="80"; guide_fd_grid[7,0]="7"; guide_fd_grid[8,0]=".5"; guide_fd_grid[9,0]="";
    break;
    case AT_UTILT:
        guide_fd_f_h_start[0]=142;
        guide_fd_grid[0,0]="Up Tilt"; guide_fd_grid[1,0]="12"; guide_fd_grid[2,0]="13-15"; guide_fd_grid[3,0]="16/24"; guide_fd_grid[4,0]="39";
            guide_fd_grid[5,0]="10"; guide_fd_grid[6,0]="70"; guide_fd_grid[7,0]="7"; guide_fd_grid[8,0]="1.15"; guide_fd_grid[9,0]="";
    break;
    
    case AT_NAIR:
        guide_fd_f_h_start[0]=110;
        guide_fd_grid[0,0]="Neutral Air"; guide_fd_grid[1,0]="5"; guide_fd_grid[2,0]="6-8"; guide_fd_grid[3,0]="10"; guide_fd_grid[4,0]="18";
            guide_fd_grid[5,0]="5"; guide_fd_grid[6,0]="55"; guide_fd_grid[7,0]="6"; guide_fd_grid[8,0]=".4"; guide_fd_grid[9,0]="Landing Lag: 4/6";
    break;
    case AT_FAIR:
        guide_fd_f_h_start[0]=56;
        guide_fd_grid[0,0]="Forward Air: Early"; guide_fd_grid[1,0]="6"; guide_fd_grid[2,0]="7-9"; guide_fd_grid[3,0]="--"; guide_fd_grid[4,0]="--";
            guide_fd_grid[5,0]="7"; guide_fd_grid[6,0]="55"; guide_fd_grid[7,0]="7"; guide_fd_grid[8,0]=".65"; guide_fd_grid[9,0]="Landing Lag: 4/6";
        guide_fd_f_h_start[1]=156;
        guide_fd_grid[0,1]="Late"; guide_fd_grid[1,1]="--"; guide_fd_grid[2,1]="10-15"; guide_fd_grid[3,1]="10/15"; guide_fd_grid[4,1]="30";
            guide_fd_grid[5,1]="5"; guide_fd_grid[6,1]="35"; guide_fd_grid[7,1]="6"; guide_fd_grid[8,1]=".3"; guide_fd_grid[9,1]="";
    break;
    case AT_UAIR:
        guide_fd_f_h_start[0]=100;
        guide_fd_grid[0,0]="Up Air: Early"; guide_fd_grid[1,0]="7"; guide_fd_grid[2,0]="8-10"; guide_fd_grid[3,0]="--"; guide_fd_grid[4,0]="--";
            guide_fd_grid[5,0]="5"; guide_fd_grid[6,0]="361"; guide_fd_grid[7,0]="7"; guide_fd_grid[8,0]=".5"; guide_fd_grid[9,0]="Landing Lag: 7/11";
    	guide_fd_f_h_start[1]=156;
        guide_fd_grid[0,1]="Late"; guide_fd_grid[1,1]="--"; guide_fd_grid[2,1]="11-13"; guide_fd_grid[3,1]="14/21"; guide_fd_grid[4,1]="34";
            guide_fd_grid[5,1]="4"; guide_fd_grid[6,1]="-65"; guide_fd_grid[7,1]="6"; guide_fd_grid[8,1]=".3"; guide_fd_grid[9,1]="";
    break;
    case AT_BAIR:
        guide_fd_f_h_start[0]=84;
        guide_fd_grid[0,0]="Back Air: Early"; guide_fd_grid[1,0]="7"; guide_fd_grid[2,0]="8-9"; guide_fd_grid[3,0]="--"; guide_fd_grid[4,0]="--";
            guide_fd_grid[5,0]="7"; guide_fd_grid[6,0]="135"; guide_fd_grid[7,0]="7"; guide_fd_grid[8,0]=".5"; guide_fd_grid[9,0]="Landing Lag: 6/9";
        guide_fd_f_h_start[1]=156;
        guide_fd_grid[0,1]="Late"; guide_fd_grid[1,1]="--"; guide_fd_grid[2,1]="10-19"; guide_fd_grid[3,1]="9/14"; guide_fd_grid[4,1]="34";
            guide_fd_grid[5,1]="5"; guide_fd_grid[6,1]="115"; guide_fd_grid[7,1]="6"; guide_fd_grid[8,1]=".3"; guide_fd_grid[9,1]="";
    break;
    case AT_DAIR:
        guide_fd_f_h_start[0]=56;
        guide_fd_grid[0,0]="Down Air: Hits 1-5"; guide_fd_grid[1,0]="6"; guide_fd_grid[2,0]="7-21"; guide_fd_grid[3,0]="--"; guide_fd_grid[4,0]="--";
            guide_fd_grid[5,0]="1"; guide_fd_grid[6,0]="45"; guide_fd_grid[7,0]="5"; guide_fd_grid[8,0]="0"; guide_fd_grid[9,0]="Landing Lag: 7/11";
        guide_fd_f_h_start[1]=154;
        guide_fd_grid[0,1]="Hit 6"; guide_fd_grid[1,1]="--"; guide_fd_grid[2,1]="22-24"; guide_fd_grid[3,1]="12/18"; guide_fd_grid[4,1]="42";
            guide_fd_grid[5,1]="3"; guide_fd_grid[6,1]="90"; guide_fd_grid[7,1]="8"; guide_fd_grid[8,1]=".45"; guide_fd_grid[9,1]="";
    break;
    
    case AT_FSTRONG:
    case AT_FSTRONG_2:
        guide_fd_f_h_start[0]=74;
        guide_fd_grid[0,0]="FStrong: Normal"; guide_fd_grid[1,0]="15"; guide_fd_grid[2,0]="16-21"; guide_fd_grid[3,0]="15/23"; guide_fd_grid[4,0]="44";
            guide_fd_grid[5,0]="10"; guide_fd_grid[6,0]="45"; guide_fd_grid[7,0]="8 -> 6"; guide_fd_grid[8,0]=".8"; guide_fd_grid[9,0]="Landing Lag: 14/21";
        guide_fd_f_h_start[1]=42;
        guide_fd_grid[0,1]="Empowered Hits 1-3"; guide_fd_grid[1,1]="18"; guide_fd_grid[2,1]="19-24"; guide_fd_grid[3,1]=""; guide_fd_grid[4,1]="--";
            guide_fd_grid[5,1]="2"; guide_fd_grid[6,1]="--"; guide_fd_grid[7,1]="--"; guide_fd_grid[8,1]="--"; guide_fd_grid[9,1]="grabs";
        guide_fd_f_h_start[2]=68;
        guide_fd_grid[0,2]="Empowered Hit 4"; guide_fd_grid[1,2]="--"; guide_fd_grid[2,2]="25-26"; guide_fd_grid[3,2]="22/33"; guide_fd_grid[4,2]="59";
            guide_fd_grid[5,2]="6"; guide_fd_grid[6,2]="40"; guide_fd_grid[7,2]="8"; guide_fd_grid[8,2]=".9"; guide_fd_grid[9,2]="";
    break;
    case AT_USTRONG:
    case AT_USTRONG_2:
        guide_fd_f_h_start[0]=74;
        guide_fd_grid[0,0]="UStrong: Normal"; guide_fd_grid[1,0]="15"; guide_fd_grid[2,0]="16-21"; guide_fd_grid[3,0]="15/23"; guide_fd_grid[4,0]="44";
            guide_fd_grid[5,0]="10"; guide_fd_grid[6,0]="85"; guide_fd_grid[7,0]="8 -> 5"; guide_fd_grid[8,0]=".8"; guide_fd_grid[9,0]="Landing Lag: 14/21";
        guide_fd_f_h_start[1]=42;
        guide_fd_grid[0,1]="Empowered Hits 1-3"; guide_fd_grid[1,1]="18"; guide_fd_grid[2,1]="19-24"; guide_fd_grid[3,1]=""; guide_fd_grid[4,1]="--";
            guide_fd_grid[5,1]="2"; guide_fd_grid[6,1]="--"; guide_fd_grid[7,1]="--"; guide_fd_grid[8,1]="--"; guide_fd_grid[9,1]="grabs";
        guide_fd_f_h_start[2]=68;
        guide_fd_grid[0,2]="Empowered Hit 4"; guide_fd_grid[1,2]="--"; guide_fd_grid[2,2]="25-26"; guide_fd_grid[3,2]="22/33"; guide_fd_grid[4,2]="59";
            guide_fd_grid[5,2]="6"; guide_fd_grid[6,2]="90"; guide_fd_grid[7,2]="8"; guide_fd_grid[8,2]=".9"; guide_fd_grid[9,2]="";
    break;
    case AT_DSTRONG:
    case AT_DSTRONG_2:
    	if window == 1 {
	        guide_fd_f_h_start[0]=74;
	        guide_fd_grid[0,0]="DStrong: Normal"; guide_fd_grid[1,0]="15"; guide_fd_grid[2,0]="16-21"; guide_fd_grid[3,0]="15/23"; guide_fd_grid[4,0]="44";
	            guide_fd_grid[5,0]="10"; guide_fd_grid[6,0]="-90"; guide_fd_grid[7,0]="6 -> 5"; guide_fd_grid[8,0]=".5"; guide_fd_grid[9,0]="Landing Lag: 14/21";
	        guide_fd_f_h_start[1]=42;
	        guide_fd_grid[0,1]="Empowered Hits 1-3"; guide_fd_grid[1,1]="18"; guide_fd_grid[2,1]="19-24"; guide_fd_grid[3,1]=""; guide_fd_grid[4,1]="--";
	            guide_fd_grid[5,1]="2"; guide_fd_grid[6,1]="--"; guide_fd_grid[7,1]="--"; guide_fd_grid[8,1]="--"; guide_fd_grid[9,1]="grabs";
	        guide_fd_f_h_start[2]=68;
	        guide_fd_grid[0,2]="Empowered Hit 4"; guide_fd_grid[1,2]="--"; guide_fd_grid[2,2]="25-26"; guide_fd_grid[3,2]="22/33"; guide_fd_grid[4,2]="59";
	            guide_fd_grid[5,2]="6"; guide_fd_grid[6,2]="-90"; guide_fd_grid[7,2]="6"; guide_fd_grid[8,2]=".7"; guide_fd_grid[9,2]="";
    	} else {
    		guide_fd_f_h_start[0]=20;
	        guide_fd_grid[0,0]="DStrong: Landing Hitbox"; guide_fd_grid[1,0]="0"; guide_fd_grid[2,0]="1-2"; guide_fd_grid[3,0]="12/18"; guide_fd_grid[4,0]="20";
	            guide_fd_grid[5,0]="10"; guide_fd_grid[6,0]="80"; guide_fd_grid[7,0]="8"; guide_fd_grid[8,0]=".5"; guide_fd_grid[9,0]="Frame advance to";
	            																								guide_fd_grid[9,1]="see the rest";
    	}
    break;
    
    case AT_NSPECIAL:
        guide_fd_f_h_start[0]=82;
        guide_fd_grid[0,0]="Neutral Special"; guide_fd_grid[1,0]="14"; guide_fd_grid[2,0]="--"; guide_fd_grid[3,0]="18"; guide_fd_grid[4,0]="32";
            guide_fd_grid[5,0]="--"; guide_fd_grid[6,0]="--"; guide_fd_grid[7,0]="--"; guide_fd_grid[8,0]="--"; guide_fd_grid[9,0]="";
        guide_fd_f_h_start[1]=120;
        guide_fd_grid[0,1]="Projectile"; guide_fd_grid[1,1]="--"; guide_fd_grid[2,1]="15-26"; guide_fd_grid[3,1]="--"; guide_fd_grid[4,1]="--";
            guide_fd_grid[5,1]="3"; guide_fd_grid[6,1]="70"; guide_fd_grid[7,1]="7"; guide_fd_grid[8,1]=".2"; guide_fd_grid[9,1]="Creates ring";
    break;
    case AT_FSPECIAL:
    case AT_FSPECIAL_AIR:
        guide_fd_f_h_start[0]=132;
        guide_fd_grid[0,0]="Fspecial"; guide_fd_grid[1,0]=5 + 7 * (eff_attack == AT_FSPECIAL_AIR); guide_fd_grid[2,0]="--"; guide_fd_grid[3,0]="--"; guide_fd_grid[4,0]=26 + 7 * (eff_attack == AT_FSPECIAL_AIR);
            guide_fd_grid[5,0]="--"; guide_fd_grid[6,0]="--"; guide_fd_grid[7,0]="--"; guide_fd_grid[8,0]="--"; guide_fd_grid[9,0]="";
        guide_fd_f_h_start[1]=156;
        guide_fd_grid[0,1]="Slide"; guide_fd_grid[1,1]="0"; guide_fd_grid[2,1]="1 ->"; guide_fd_grid[3,1]="10+"; guide_fd_grid[4,1]="10+";
            guide_fd_grid[5,1]="4"; guide_fd_grid[6,1]="100"; guide_fd_grid[7,1]="9"; guide_fd_grid[8,1]=".3"; guide_fd_grid[9,1]="";
        guide_fd_f_h_start[2]=132;
        guide_fd_grid[0,2]="Recover"; guide_fd_grid[1,2]="--"; guide_fd_grid[2,2]="--"; guide_fd_grid[3,2]="--"; guide_fd_grid[4,2]="15";
            guide_fd_grid[5,2]="--"; guide_fd_grid[6,2]="--"; guide_fd_grid[7,2]="--"; guide_fd_grid[8,2]="--"; guide_fd_grid[9,2]="";
    break;
    case AT_USPECIAL:
    case AT_USPECIAL_GROUND:
    	var wootus11 = eff_attack == AT_USPECIAL_GROUND
        guide_fd_f_h_start[0]=64;
        guide_fd_grid[0,0]="Up Special: Sweet"; guide_fd_grid[1,0]="12"; guide_fd_grid[2,0]="13-14"; guide_fd_grid[3,0]="--"; guide_fd_grid[4,0]="--";
            guide_fd_grid[5,0]="12"; guide_fd_grid[6,0]=-100 + 245 * wootus11; guide_fd_grid[7,0]=6 + 3 * wootus11; guide_fd_grid[8,0]=.6 + .4 * wootus11; guide_fd_grid[9,0]="";
        guide_fd_f_h_start[1]=140;
        guide_fd_grid[0,1]="Normal"; guide_fd_grid[1,1]="--"; guide_fd_grid[2,1]="12-20"; guide_fd_grid[3,1]="29"; guide_fd_grid[4,1]="49";
            guide_fd_grid[5,1]="6"; guide_fd_grid[6,1]="45"; guide_fd_grid[7,1]="7"; guide_fd_grid[8,1]=".3"; guide_fd_grid[9,1]="";
        guide_fd_f_h_start[2]=124;
        guide_fd_grid[0,2]="Explosion"; guide_fd_grid[1,2]="--"; guide_fd_grid[2,2]="15-19"; guide_fd_grid[3,2]="--"; guide_fd_grid[4,2]="--";
            guide_fd_grid[5,2]="5"; guide_fd_grid[6,2]="115"; guide_fd_grid[7,2]="5"; guide_fd_grid[8,2]=".3"; guide_fd_grid[9,2]="";
    break;
    case AT_DSPECIAL:
        guide_fd_f_h_start[0]=98;
        guide_fd_grid[0,0]="Down Special"; guide_fd_grid[1,0]="28"; guide_fd_grid[2,0]="--"; guide_fd_grid[3,0]="20"; guide_fd_grid[4,0]="48";
            guide_fd_grid[5,0]="--"; guide_fd_grid[6,0]="--"; guide_fd_grid[7,0]="--"; guide_fd_grid[8,0]="--"; guide_fd_grid[9,0]="";
        guide_fd_f_h_start[1]=160;
        guide_fd_grid[0,1]="Held"; guide_fd_grid[1,1]="6"; guide_fd_grid[2,1]="7-8"; guide_fd_grid[3,1]="32"; guide_fd_grid[4,1]="40";
            guide_fd_grid[5,1]="10"; guide_fd_grid[6,1]="80"; guide_fd_grid[7,1]="9"; guide_fd_grid[8,1]=".8"; guide_fd_grid[9,1]="";
    break;
    default:
    break;
}