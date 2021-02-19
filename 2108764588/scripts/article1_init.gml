//article1_init

sprite_index=sprite_get("plat_ice");
mask_index=sprite_get("ice_collision");
visible=false;

oneofthem=sprite_index;

y+=3;
ground=place_meeting(x,y,asset_get("par_block"));
static=false;

livetimer=0;

left_start=0;
length_total=0;

var length_left=0;
var id_length_left=0;
var length_right=0;
var id_length_right=0;
var g_id=noone;
var t_obj=noone;
if(ground){
    t_obj=asset_get("par_block");
} else {
    t_obj=asset_get("par_jumpthrough");
}
g_id=instance_place(x,y,t_obj);
if(instance_place(x-16,y,t_obj)==g_id){
    var itt=2;
    var esc=false;
    while(!esc){
        if(instance_place(x-16*itt,y,t_obj)!=g_id){
            esc=true;
            id_length_left=itt-1;
        }
        itt++;
        if(itt>128){
            esc=true;
        }
    }
} else {
    id_length_left=0;
}
if(instance_place(x+16,y,t_obj)==g_id){
    var itt=2;
    var esc=false;
    while(!esc){
        if(instance_place(x+16*itt,y,t_obj)!=g_id){
            esc=true;
            id_length_right=itt-1;
        }
        itt++;
        if(itt>128){
            esc=true;
        }
    }
} else {
    id_length_right=0;
}
if(id_length_left+id_length_right+1<=2){
    static=true;
}

if(static){
    var itt=1;
    var esc=false;
    while(!esc){
        if(!place_meeting(x-16*itt,y,t_obj)){
            esc=true;
            length_left=itt-1;
        }
        itt++;
        if(itt>128){
            esc=true;
        }
    }
    itt=1;
    esc=false;
    while(!esc){
        if(!place_meeting(x+16*itt,y,t_obj)){
            esc=true;
            length_right=itt-1;
        }
        itt++;
        if(itt>128){
            esc=true;
        }
    }
} else {
    length_left=id_length_left;
    length_right=id_length_right;
}

left_start=(-length_left)*16-8;
length_total=length_left+length_right+1;

for(var i=length_total-1;i>=0;i--){
    //timer
    ice[i,0]=-1;
    //owner
    ice[i,1]=noone;
    
    istate[i]=-1;
}
//normal
//*
state_1_start=20;

state_2_start=300*(1+player_id.runeB);

die_start=30+state_2_start;
//*/

//new
/*
state_1_start=120;

state_2_start=600*(1+player_id.runeB)+state_1_start;

die_start=30+state_2_start
//*/

//vsp=1;

can_be_grounded = true;
ignores_walls = false;
uses_shader = true;