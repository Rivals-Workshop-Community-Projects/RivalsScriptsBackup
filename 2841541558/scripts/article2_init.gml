///      article[index]_init.gml
//You may put this code anywhere in your article init.

// CUSTOMIZABLE VARIABLES

grav = 1; // Vertical gravity applied every frame
bounce_vsp = -9; // The amount of vertical speed applied on a bounce
bounce_hsp = 2; // The amount of horizontal speed applied on a bounce
boost_vsp = -2; // The amount of vertical momentum boost a fully charged NSPECIAL gives
boost_hsp = 4; // The amount of horizontal momentum boost a fully charged NSPECIAL gives
hitstun_fric = 0.98; // The amount of friction applied while in hitstun
destroy_damage = 11; // Minimum damage to destroy
destroy_kb = 9; // Minimum knockback to destroy

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

destroyed = false;

blastzone_b = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);


article_should_lockout = true; //set to false if you don't want hit lockout.

sprite_index = sprite_get("dspecial_proj")
mask_index = sprite_get("dspecial_proj_mask")
can_be_grounded = 1

ignores_walls = 0
spr_dir = other.spr_dir
existtime = 0
hittimes = 0
hittimesmax = 4
apple = hit_fx_create( sprite_get("hfx_apple"), 30 )

player_id.apples += 1;

rolling = false;

x_off = -3;
y_off = -56;
apple_hitbox = create_hitbox(AT_DSPECIAL, 1, x + (x_off * spr_dir), y + y_off);
apple_hitbox.article = self;