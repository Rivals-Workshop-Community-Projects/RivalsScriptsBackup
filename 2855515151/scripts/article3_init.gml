//whether the exec item was used out of the hat
hat_item = false;

//article init
can_be_grounded = false;
ignores_walls = true;
uses_shader = true;
free = true;

//timer variables
life = 0;
lifetime = 420;
timer = 0;
anim_time = 0;

//roger variables
roger_state = 0;
hitbox = noone;


///      article[index]_init.gml
//You may put this code anywhere in your article init.
 
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
 
hit_player_obj = noone;
 
kb_adj = 1;
kb_dir = 0;
orig_knock = 0;
 
hit_lockout = 0;
air_friction = .04;
article_should_lockout = true; //set to false if you don't want hit lockout.