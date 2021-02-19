//Article 3: TNT

if (cycle_timer >= cycle_timer_max){
	if (cycle == cycle_max){
		//explode!
		var spawn_y = y - 56;
		var hbox = create_hitbox(AT_USPECIAL, 3, x, spawn_y);
		hbox.can_hit_self = true;
		hbox.blast_blocks = (steve_water_last_frame != get_gameplay_time());
		with oPlayer if !clone && muno_char_id == other.player_id.muno_char_id && soft_armor{
			soft_armor = 9999;
			blocked_special = 2;
		}
		spawn_hit_fx(x, spawn_y, player_id.vfx_tnt_blast);
		sound_play(player_id.sfx_minecraft_explode);
		spawnVfx(10);
		instance_destroy();
		exit;
	}
	else{
		cycle_timer = 0;
		cycle++;
		real_index++;
	}
}

if (cycle >= cycle_max){
	var growth = ease_quartIn(2, 3, cycle_timer, cycle_timer_max) / 2;
	image_xscale = growth;
	image_yscale = growth;
}

var grav = 0.4;
var fric = free ? 0.05 : 0.5;

if !free{
	hit_check = false;
}

if has_rune("O"){
	hit_check = 1;
	hit_char = player_id;
}

if !free && was_free{
	if !has_bounced{
		has_bounced = true;
		vsp = -5;
		hsp *= 0.5;
		free = true;
	}
	else{
		has_bounced = false;
	}
}

var tnt = self;
with oPlayer if ((other.hit_check && self != other.hit_char) || burned) && self != other.player_id{
	with hurtboxID if place_meeting(x, y, tnt) with tnt{
		cycle = cycle_max;
		cycle_timer = cycle_timer_max;
	}
}

if (y > room_height){
	cycle = cycle_max;
	cycle_timer = cycle_timer_max;
}

vsp += grav;
hsp -= sign(hsp) * fric;
if (abs(hsp) < fric) hsp = 0;
if !free vsp = 0;

if cycle hitbox_detection();

cycle_timer++;



if !(exist_timer % 10) && !player_id.phone.phone_settings[player_id.phone.setting_fast_graphics]{
	var hfx = spawn_hit_fx(x, y - 20, player_id.vfx_smoke);
	hfx.vsp = -5;
	hfx.hsp = hsp * 0.2 + clamp(random_func(0, 4, true), 0, 3) - 1;
	
	hfx.steve_manip_id = player_id;
	hfx.type = 0;
	hfx.depth = depth + 1;
	hfx.num = 0;
	hfx.hit_length = 100;
	
	hfx.ignore_gravity = true;
}



//Make time progress

exist_timer++;
was_free = free;
image_index = real_index;



#define spawnVfx(count)

with player_id if fast_graphics return;

for (i = 0; i < count; i++){
	var hfx_x = x + random_func(00 + i, 20, true) - 10;
	var hfx_y = y + random_func(10 + i, 20, true);
	var hfx_v = random_func(20 + i, 8, true) - 3;
	var hfx_h = random_func(30 + i, 4, true);
	hfx_h *= (i % 2) ? -1 : 1;
	
	hfx_v *= 2;
	hfx_h *= 5;
	
	var hfx_d = depth - 1;
	var hfx_a = random_func(40 + i, 40, true) - 20;
	
	with player_id{
		var hfx = spawn_hit_fx(hfx_x, hfx_y, vfx_smoke);
		hfx.hsp = hfx_h;
		hfx.vsp = hfx_v;
		hfx.depth = hfx_d;
		hfx.parent_y = other.y;
		hfx.asp = hfx_a;
		
		hfx.steve_manip_id = self;
		hfx.type = 0;
		hfx.num = other.i;
		
		hfx.go_up = true;
		hfx.ignore_gravity = true;
	}
}



#define hitbox_detection //BY SUPERSONIC
//estimated like 80% accurate imo
 
var article = self;
//reset hitbox groups when necessary
with (oPlayer)
    if (state == clamp(state, 5, 6) && window == 1 && window_timer == 1) {
        other.hbox_group[@ player-1][@ attack] = array_create(10,0);
        //with other print_debug(`${article}: reset hb group for ${other.player},${other.attack}`);
    }
 
var currentHighestPriority = noone;
with (pHitBox) 
    if `hit_${article}` not in self
        if place_meeting(x,y,other) && (groundedness == 0 || groundedness == 1+free) {
            if (effect == 1 && other.cycle < other.cycle_max) with other{ //by muno
            	cycle = cycle_max;
            	cycle_timer = 0;
            }
            if hbox_group == -1 || ( hbox_group != -1 && other.hbox_group[@ orig_player-1][@ attack][@ hbox_group] == 0) {
                //hit
                if currentHighestPriority != noone {
                    if currentHighestPriority.hit_priority < hit_priority
                        currentHighestPriority = self;
                } else {
                    currentHighestPriority = self;
                }
                
                variable_instance_set(self, `hit_${article}`, true);
            }
        } else if place_meeting(x,y,other) && hbox_group != -1 && other.hbox_group[@ orig_player-1][@ attack][@ hbox_group] == 1 {
            //prevent from running hit detection for optimization sake
            //with other print_debug("hit but also not");
            variable_instance_set(self, `hit_${article}`, true);
        }
 
if instance_exists(currentHighestPriority) with currentHighestPriority {
    sound_play(sound_effect);
    spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y,hit_effect);
    with other {
        //print_debug(`hit_${article}`);
        // set_a_state(AS.HITSTUN); //set_a_state is my article state setting function; replace this with yours lol
        hitstun = other.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + other.damage * 0.12 * other.kb_scale * 4 * 0.65 * kb_adj;
        hitstun_full = hitstun;
        // for you archy. 
        // if other.force_flinch && !other.player_id.free orig_knock = 0; //uncomment this line for enemies
        if other.force_flinch orig_knock = 0.3; //comment out this line for enemies.
        else orig_knock = other.kb_value + damage * other.kb_scale * 0.12 * kb_adj;
        kb_dir = get_hitbox_angle(other);
        
        if (other.player_id != player_id) orig_knock *= 0.5; //by muo
        
        hsp = lengthdir_x(orig_knock, kb_dir);
        vsp = lengthdir_y(orig_knock, kb_dir);
        
        free = true; //by muo
        hit_check = true; //by muo
        hit_char = other.player_id; //by muo
    }
    if type == 1 with player_id {
        old_vsp = vsp;
        old_hsp = hsp;
        hitpause = true;
        var desired_hitstop = other.hitpause + other.damage * other.hitpause_growth * 0.05;
        if hitstop < desired_hitstop {
            hitstop = desired_hitstop;
            hitstop_full = desired_hitstop;
        }
    }
    other.hitstop = floor(desired_hitstop);
    if hbox_group != -1 other.hbox_group[@ orig_player-1][@ attack][@ hbox_group] = 1;
}