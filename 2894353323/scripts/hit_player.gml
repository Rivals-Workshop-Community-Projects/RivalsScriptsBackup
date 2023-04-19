//#region Local Variables
if (my_hitboxID.orig_player_id != self) exit;
//multihit logic
with (my_hitboxID)
{
    //if the multihit amount is more than 0 it should activate the multihit code
    if (type == 2 && multihit_amount > 0)
    {
        //proj_hit_count is the current amount of hits done already
        //every time our projectile hits, it counts up by one
        if (multihit_amount > proj_hit_count)
        {
            multihit_hit_player = other.hit_player_obj; //sets the target player that should be dragged along the projectile

            //puts projectile in hitpause and brings the hitbox timer back a bit
            in_hitpause = true;
            if (hitbox_timer = length - multihit_gap*3) hitbox_timer = length - clamp(multihit_gap*3, 0, length);

			other.hit_player_obj.orig_knock += point_distance(0, 0, hsp, vsp);
			other.hit_player_obj.knock_dir = point_direction(x, (y - 32), other.hit_player_obj.x, other.hit_player_obj.y);
			
            //displays hit fx
            spawn_hit_fx(x, y, hit_effect);
        }
        else proj_multihit_final = true;

        if (proj_multihit_final)
        {
        	in_hitpause = false
            multihit_hit_player = noone;
        }
    }
}
//#endregion

var article_times = my_hitboxID.damage;
var spawn_shards = true;
xp_test = 0;

if (spawn_shards){
	if (hit_player_obj != id){  
		var j = 0;
		repeat(article_times) {
			var fx = instance_create(round(hit_player_obj.x), round(hit_player_obj.y - hit_player_obj.char_height/2) , "obj_article2");
			fx.xp_ang = get_hitbox_angle(my_hitboxID) + (-60 + random_func(j, 120, true))
			fx.xp_kb = 8 + random_func(j+1, 8, true);
			fx.exp_given = 1;
			fx.step_length = 16 + random_func(j+2, 48, true);
			j++;
		}
		xp_test++;
		
	}
}

if (my_hitboxID.attack == AT_NSPECIAL_2 && my_hitboxID.hbox_num == 2) {
    var hbox = create_hitbox(AT_NSPECIAL_2, 3, my_hitboxID.x, my_hitboxID.y);
    hbox.spr_dir = my_hitboxID.spr_dir;
    hbox.draw_xscale = my_hitboxID.spr_dir;
    hbox.player = my_hitboxID.player;
    for (var i = 0; i < array_length(my_hitboxID.player); i++) {
    	hbox.can_hit[i] = (i != my_hitboxID.player);
    }
    with hbox sound_play(asset_get("sfx_forsburn_reappear_hit"));
}

if (my_hitboxID.attack == AT_NSPECIAL_2 && my_hitboxID.hbox_num == 4) {
    var hbox = create_hitbox(AT_NSPECIAL_2, 5, my_hitboxID.x, my_hitboxID.y);
    hbox.spr_dir = my_hitboxID.spr_dir;
    hbox.draw_xscale = my_hitboxID.spr_dir;
    hbox.player = my_hitboxID.player;
    for (var i = 0; i < array_length(my_hitboxID.player); i++) {
    	hbox.can_hit[i] = (i != my_hitboxID.player);
    }
    with hbox sound_play(asset_get("sfx_forsburn_combust"));
}

if (my_hitboxID.attack == AT_NSPECIAL_AIR && my_hitboxID.hbox_num == 1) {
    var hbox = create_hitbox(AT_NSPECIAL_AIR, 2, floor(my_hitboxID.x), floor(my_hitboxID.y+32));
    hbox.spr_dir = spr_dir;
    sound_play(sound_get("sfx_ice1"));
}

if (my_hitboxID.attack == AT_FSPECIAL_2 && my_hitboxID.hbox_num == 3) {
	has_hit_player = false;
}
if (my_hitboxID.attack == AT_USPECIAL_GROUND && my_hitboxID.hbox_num == 1) {
	sound_play(asset_get("sfx_bird_screech"));
}

if (my_hitboxID.attack == AT_FSPECIAL_AIR && my_hitboxID.hbox_num == 1) has_hit_player = true;
if (my_hitboxID.attack == AT_USPECIAL && (my_hitboxID.hbox_num <= 9 || my_hitboxID.hbox_num != 18)) {
	hit_player_obj.should_make_shockwave = false;
	if (my_hitboxID.hbox_num >= 10 && my_hitboxID.hbox_num < 18){
		hit_player_obj.orig_knock += point_distance(0, 0, hsp, vsp);
		hit_player_obj.knock_dir = point_direction(x, (y - 32), my_hitboxID.x, my_hitboxID.y);
	}
}

if (my_hitboxID.attack == AT_DSTRONG_2 && (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4)) {
	hit_player_obj.should_make_shockwave = false;
	if (my_hitboxID.hbox_num >= 10 && my_hitboxID.hbox_num < 18){
		hit_player_obj.orig_knock += point_distance(0, 0, hsp, vsp);
		hit_player_obj.knock_dir = point_direction((x - 32 * spr_dir), (y - 32), hit_player_obj.x, hit_player_obj.y);
	}
}

if ("harold_crit" in my_hitboxID) {
	if (my_hitboxID.harold_crit) {
		var fx = spawn_hit_fx(round(my_hitboxID.x), round(my_hitboxID.y), fx_crit);
		fx.depth = -8
		sound_play(sound_get("sfx_crit"));
		sound_play(sound_get("sfx_crit2"));
		shake_camera(18, 20);
		hitstop += 32;
		hit_player_obj.hitstop += 32;
	}
}
#define set_grab_id()
{
    //things to check when you grab someone:
    //  - make sure your grabbed ID is noone so it will grab the first player it collides with
    //  - if the ID is a clone (clones usually disappear which will pop up an error)
    //  - if the hit player is in a hitstun state (so it won't grab armored player)
    //  - if the player isn't in ranno's bubble
    
    if (my_grab_id == noone && !hit_player_obj.clone && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) && !hit_player_obj.bubbled)
    {
        my_grab_id = hit_player_obj;
    }
}