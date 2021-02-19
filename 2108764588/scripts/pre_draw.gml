// pre-draw
if (fspecial_charge>=fspecial_max_charge){
    shader_start();
    draw_sprite(sprite_get("ice_status_back"), get_gameplay_time()*.3, x, y);
    shader_end();
}

shader_start();

var timer=0;
var istate=0;

with(asset_get("obj_article1")){
    if(player_id.url==other.url){
        //draw_sprite(sprite_get("ground_ice"),1,x+left_start,y);
        //draw_sprite(sprite_get("ground_ice"),1,x+left_start+length_total*16,y);
        //draw_sprite(sprite_get("ground_ice"),0+2*free,x,y);
        //draw_debug_text(x, y-120, string(length_left));
        //draw_debug_text(x, y-100, string(length_right));
        //draw_debug_text(x, y-80, string(id_length_left));
        //draw_debug_text(x, y-60, string(id_length_right));
        
        for(var i=0;i<length_total;i++){
            timer=livetimer-ice[i,0];
            istate = (timer >= state_1_start) + (timer >= state_2_start);
            /*if(timer<state_1_start){
                istate=0;
            } else if(timer<state_2_start){
                istate=1;
            } else if(timer<=die_start){
                istate=2;
            }//*/
            if(ice[i,1]==other&&timer>5&&timer<die_start){
                draw_sprite(sprite_index,istate,x+left_start+8+16*i,y+ground);
            }
            //draw_debug_text(x+left_start+i*16,y-(((x+left_start+i*16)%120)*2),string(ice[i,0]));
        }//*/
        /*
        //trying to make code that checked for adjacent ice with the same state 
        //and draw them together, but it was worse in the end
        var esc = false;
        var i = 0;
        while !esc {
            if(i>=length_total-1){
                esc=true;
            }
            var timer=livetimer-ice[i,0];
            var istate=0;
            if(timer<state_1_start){
                istate=0;
            } else if(timer<state_2_start){
                istate=1;
            } else if(timer<=die_start){
                istate=2;
            }
            var adjacents=1;
            if(!esc&&timer<=die_start&&timer>5&&ice[i,0]>-1){
                var esc2 = false;
                var ii = 1;
                while !esc2 {
                    var timer2=livetimer-ice[i+ii,0];
                    var istate2=0;
                    if(timer2<state_1_start){
                        istate2=0;
                    } else if(timer2<state_2_start){
                        istate2=1;
                    } else if(timer2<=die_start){
                        istate2=2;
                    }
                    if(istate==istate2&&ice[i,1]==ice[i+ii,1]&&timer2<=die_start&&timer2>5&&ice[i+ii,0]>-1){
                        adjacents++;
                    } else {
                        esc2=true;
                    }
                    ii++;
                    if(i+ii==length_total||adjacents>=8){
                        esc2=true;
                    }
                }
            }
            if(adjacents>=8){
                adjacents=8;
                sprite_index=eightofthem;
            } else if(adjacents>=4){
                adjacents=4;
                sprite_index=fourofthem;
            } else if(adjacents>=2){
                adjacents=2;
                sprite_index=twoofthem;
            } else {
                adjacents=1;
                sprite_index=oneofthem;
            }
            if(ice[i,1]==other&&timer>5&&timer<die_start){
                with other { shader_start(); }
                draw_sprite(sprite_index,istate,x+left_start+8+16*i,y+ground);
                with other { shader_end(); }
            }
            i+=adjacents;
            if(i>=length_total){
                esc=true;
            }
        }//*/
    }
}//*/
shader_end();