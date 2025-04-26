//

sprite_index = sprite_get("squares");
mask_index = sprite_get("square_hurt");
orgImageIndex = 0;

can_be_grounded = false;
ignores_walls = true;//false; breaks on kragg
is_hittable = false;
hittable_hitpause_mult = 0;//1;//instead uses custom hitstun

typCol = noone;
gridX = 0;
gridY = 0;

grounded = false;

hpMax = 30;
hp = hpMax;
died = false;
last_hitbox = 0;

hardDropped = false;
sparks = -1;
cleared = false;
playFx = false;
destroyNext = false;

depth = 6;//6 is needed for orcane puddle... but it should be less so kragg wall is behind? idk


//------------------------------------------------ Supersonic's Complex Hit Detection ------------------------------------------------
//taken from https://pastebin.com/zUXGn0QK

//make hbox_group array (the old version was really bad because the array actually affected all players no matter what lol)
hbox_group = array_create(4,0);
var i1 = 0;
var i2 = 0;
repeat(4) {
    hbox_group[@i1] = array_create(50,0);
    repeat(50) {
        hbox_group[@i1][@i2] = array_create(10,0);
        i2++;
    }
    i2 = 0;
    i1++;
}
 
hitstun = 0;
hitstun_full = 0;
 
kb_adj = 1;
kb_dir = 0;
orig_knock = 0;
 
hit_lockout = 0;
 
article_should_lockout = true; //set to false if you don't want hit lockout.