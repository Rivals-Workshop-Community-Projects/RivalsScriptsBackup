sprite_index = sprite_get("dspecial_portal_appear");          
image_index = 0;                                  
mask_index = sprite_get("dspecial_portal_mask");                                  
uses_shader = true;                                

can_be_grounded = false;                            
ignores_walls = true;     
disable_movement = true;

window = 1;
window_timer = 0;

let_go = false;

shoulddie = false;


//grab code
my_grab_id = noone; //grabbed player ID, the game has it's own way of setting up the grabs but this is easier
grab_time = 0; //timer for grabbing, works as a state_timer of sorts

dspecial_countered = noone;

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
percent = 0;

hit_lockout = 0;
can_hit = array_create(5, true);
 
article_should_lockout = false; //set to false if you don't want hit lockout.
 