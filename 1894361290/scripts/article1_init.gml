//article1_init

//is_hittable = true

sprite_index = asset_get("empty_sprite");
mask_index = sprite_get("wt_mask")
image_index = 0;

honk_sfx = undefined;
harmonica_sfx = sound_get("harmonica_wt")

shockwave_large_vfx = hit_fx_create(sprite_get("shockwave_large"), 24);
shockwave_small_vfx = hit_fx_create(sprite_get("shockwave_small"), 18);
sparks_vfx = hit_fx_create(sprite_get("wt_sparks"), 16);
sparks_small_vfx = hit_fx_create(sprite_get("wt_sparks_small"), 16);

timer = 0;
near_player = false; //true if player is in range to be pickd up by dspecial;

disabled_timer = 0;

can_be_grounded = true;
ignores_walls = false;
uses_shader = true;

unbashable = 0;

land_sound = true;

old_hsp = undefined
old_vsp = undefined

hit_hsp = 0;
hit_vsp = 0;
hit_timer = 0;
hit_by_opp = false;

//hit_lockout = 0

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
 
kb_adj = 1;
kb_dir = 0;
orig_knock = 0;
 
hit_lockout = 0;
 
article_should_lockout = true; //set to false if you don't want hit lockout.