if (("mamizou_mark_id" in self) && instance_exists(mamizou_mark_id)) {
    for (var i = 0; i < 2; i++) {
        var time = get_gameplay_time() * 4 - 90 - (i * (360/2));
        var x_offset = round(lengthdir_x(56, time));
        var y_offset = floor(char_height/2);
        
        if (time % 360 <= 180) {
            with (mamizou_mark_id) {
                shader_start();
                draw_sprite_ext(mark_spr, ease_linear(0, 10, round(time + 90), 360), other.x + x_offset, other.y - y_offset, 2, 2, 0, c_white, 1);
                shader_end();
            }
        }
    }
}

if (("mamizou_trans" in self) && mamizou_trans) {
    get_trans_spr();
}

#define get_trans_spr()
var spr = sprite_get("net_disc_spr");
var img = 0;
    
with (other_player_id) {
    var spr = sprite_get("tanuki_hurt");
    var img = 0;
    var scale = 0;
    var mamizou_transform_sprite = 0;
    
    if (variable_instance_exists(other, "mamizou_transform_spr"))  { //A compatible character
        mamizou_transform_sprite = -1;
    }
    else
    {
    	if ( other.select - 1 < 19 && other.select - 1 > 0){
            mamizou_transform_sprite = other.select - 1;
        }
        switch ( other.url) {
            case "1865940669": //Sandbert
                mamizou_transform_sprite = 19;
                break;
            case "1866016173": //Guadua
                mamizou_transform_sprite = 20;
                break;
            //Reimu
            case "2263955842": 
            case "2019721304": 
            case "1874261698": 
                mamizou_transform_sprite = 21;
                break;
            //Mystia
        	case "2350985664":
                mamizou_transform_sprite = 22;
                break;
            //Seija
        	case "2406439382":
                mamizou_transform_sprite = 23;
                break;
            //Nitori
        	case "2459562158":
                mamizou_transform_sprite = 24;
                break;
            //Marisa
        	case "2494517317":
        	case "1942628561":
                mamizou_transform_sprite = 25;
                break;
            //Tenshi
        	case "2520533233":
        	case "2357574273":
                mamizou_transform_sprite = 26;
                break;
            //Youmu
        	case "2630469587":
        	case "1872163618":
                mamizou_transform_sprite = 27;
                break;
            //Rin
        	case "2801831547":
                mamizou_transform_sprite = 28;
                break;
            //Sayukya (yes all of them)
        	case "2802424939":
        	case "2237984605":
        	case "2175214440":
        	case "1874888096":
        	case "1869125757":
                mamizou_transform_sprite = 29;
                break;
            //Wriggle Nightbug
        	case "2849669092":
                mamizou_transform_sprite = 30;
                break;
            //Fumo Reimu
        	case "2552853220":
                mamizou_transform_sprite = 31;
                break;
            //Fumo Sakuya
        	case "2570853715":
                mamizou_transform_sprite = 32;
                break;
            //Fumo Reisin
        	case "2557400455":
                mamizou_transform_sprite = 33;
                break;
            //Yuuto Ichika
        	case "2105839293":
        	case "2626409326":
                mamizou_transform_sprite = 34;
                break;
        }
        
    }
    switch (mamizou_transform_sprite) {
        case -1:
        	spr = other.mamizou_transform_spr;
            scale = other.small_sprites + 1;
        break;
        default:
        	if (mamizou_transform_sprite <= 20 && mamizou_transform_sprite > 0){
        	    spr = sprite_get("transformations_base");
                img = mamizou_transform_sprite - 1;
                scale = 2;
            }
        	if (mamizou_transform_sprite <= 34 && mamizou_transform_sprite > 20){
        	    spr = sprite_get("transformations_touhou");
                img = mamizou_transform_sprite - 21;
                scale = 1;
            }
        break;
    }
}
shader_start();
draw_sprite_ext(spr, img, x, y, (spr_dir) * scale, scale, 0, c_white, 1);
shader_end();