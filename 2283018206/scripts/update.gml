user_event(14);
attacking = phone_attacking;
if attacking window_end = phone_window_end;
playtest = phone_playtest;
practice = phone_practice;
inited = phone_inited;
ditto = phone_ditto;
blastzone_l = phone_blastzone_l;
blastzone_r = phone_blastzone_r;
blastzone_t = phone_blastzone_t;
blastzone_b = phone_blastzone_b;

/*






nspecial has a non storable charge for the powered up ball



nspecial 1: throw ball
nspecial 2: bounce ball backward, arcing
nspecial 3: lock ball in place



dtilt: spindash (make it hit twice to combo? weak hit at start --> second hitbox that comes out at very end, launching upward. limit movement OR command grab code?)
dattack: shoulder barge, goes off ledges but otherwise acts differently from old airdash

nair: incineroar nspecial, maybe angled forward a bit for 45 degree ball angle?
fair: cue stab
bair: elbow sex kick
uair: same as before? or k rool uair
dair: cue swing below

fstrong: same as before
dstrong: same as before
ustrong: doomfist ustrong? command grab?



strongs can't be used from the bike? also, getting off bike sets your parry cooldown. so these options aren't available right away while on bike

bair: wing strike as they thrust out and become beeg. fast and covers a good area, but pretty low RANGE
uair: cue thrust upward, lingering?
dair: fast kick?

ustrong: upward straight punch? reach above with an open hand, and command grab if it hits? i like this a lot. maybe add a jump to it too, then it acts like epinel dspecial








New Moveset Idea

Gimmick: Ball & Bike Duality
- Your bike IS the ball!
- Directional specials put you on the bike. NSpecial shoots the ball.
- If a ball is in play, the ball turns into the bike and you teleport to it!
- Bike is no longer a stage object. As a result, there's no longer a cooldown mechanic.
- Instead, the focus is on bike mobility combined with ball play. Having balls AND bike as projectiles made Otto more ranged-y than I'd want.
- Using an attack turns the bike into a stored charged ball. Airdodge no longer dismounts. DJump goes higher than before.

NSpecial: Billiards
- Shoot a ball with 3 spin options for knockback (hold up/down).
- Perform this move from the bike state, and the ball will be super-charged with more knockback, damage, and hitpause.
- Use NSpecial again while it's in flight, and the ball bounces off an invisible wall in a high arc! Inspired by DHD can, but Otto has an animation still and the ball has a high speed.
- Do it AGAIN, and the ball bounces at a DOWNWARD angle this time. Then you can't do it anymore.
- If you hold the button when doing either bounce, the ball stops dead in its tracks instead, losing its hitbox. Then you can hit it easily with a normal, or save it for later to bike-port to.
- ...In this state, ENEMIES can hit the ball at YOU, so be careful. If this happens, the ball won't be a valid target for bike teleporting, so using a directional special won't make it disappear.

FSpecial: Bike Spin
- Old FAir/BAir, but involving the bike. An excellent combo move, and a good way to follow up on a ball throw.
- No pratfall, but high midair endlag and only 1 use per airtime.

USpecial: Bike Flip
- A backflip with the bike, only having as much upward reach as Maypul's Up B.
- However, on hit, it lacks pratfall - and its hitbox is great for comboing!
- Recovery isn't great on this move, which is why you need to use billiards to recover. Get creative with those 2 bounces!

DSpecial Air: Bike Drop
- A ground-pound move with the bike, spiking at the start but dealing horizontal KB later on. Basically a port of current DAir. Anim where he dives down holding the bike in his hands? Like an upside down weight-lifting pose

DSpecial Ground: Quick Mount
- Just a way to quickly get on the bike.





-- old --

DSpecial Air: Drop Dash
- A ground-pound move with the bike, spiking at the start but dealing horizontal KB later on.
- High startup and commitment, as it's impossible to cancel before landing.
- Upon hitting the ground or an enemy, you transition into a dash, though you can't act for the first part of it.

DSpecial Ground: Drop Drift
- Lean the bike onto the ground as you slide across the tarmac, building up energy for a super-jump that leaps off of the bike!
- You knock enemies upward during the slide, prime for a follow-up.





planned big changes
- new fair/bair; old behavior/physics moved to side b
- no nspecial pacman charge; instead, get 1 billiard ball type with
--- 3 knockback angles chosen by adding up/down "spins" as you fire (using control stick)
--- a "charged-up" state that it gains after bouncing on a bike, enemy, or wall; bit more hitpause, more damage, kill kb
- no dthrow
- bike has hitstun and tumble caused by enemy hits, during which otto can't summon new bike. no bike HP or cooldown meter
- bike disappears after otto launches it with a melee hit
- bike and balls will be re-coded from the ground up
- beastball beastball

misc goals
- make on-bike movement relevant; buff djump? bike nair/fair/bair?
- make bouncing ball off bike into an adequate dthrow replacement; doesn't bounce in an arc, instead bouncing straight back toward you?







Ball idea (newer than any below it): these are the 3 spins
- Neutral: diagonal kb
- Up: inward kb
- Down: spike kb

Stripe ball has moderate launch power, solid ball has KO launch power



FOR NSPECIAL: The "portal" the ball goes through is the pool triangle! NSpecial uses triangle to recall ball, change fstrong's gimmick (maybe smacks you with the ball)? Pool triangle floats alongside you when you've captured a ball.







Bike can only be launched (by otto) once before poofing away

Add fstrong functionality to nspecial somehow? Press it again w/ a ball out and nearby?





NSpecial: brief charge to make it act like a beastball that targets the bike!

Bike: when you call a new one, instead of exploding, it just teleports away (illusion: it's the same bike)











billiard balls
- only one ball type: acts like 4ball, but becomes like 8ball after having bounced on something. store the 8ball with fstrong, but it won't bounce again
- ball spin: hold up/down when firing to select a different bounce type

bike (article)
- no longer gets HP depleted by foe; instead, they launch it offstage
- new hitstun and tumble states during which bike can't be summoned

misc
- new fair/bair
- fspecial acts like old fair/bair
- bike djump higher



NSpecial: Billiard Serve
- Fire a striped ball, which turns into a solid after bouncing off of something
- 



Stripes
- up spin: forward kb
- no spin: upward kb
- down spin: inward kb
Solids
- up spin: upward kill kb
- no spin: stun
- down spin: spike
Bounces
- up spin: straight up
- no spin: straight back
- down spin: wide arc
Colors
- up spin: yellow
- no spin: black
- down spin: brown

Solids don't bounce off of stuff? (Go thru foes/bike, destroyed on walls)



charged vs uncharged: solid vs stripe
spins: different colors



*/



if has_uspecialed{
	if !free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN has_uspecialed = false;
}



//fix nspecial spin buffer

if special_pressed && joy_pad_idle && !nspecial_buffer nspecial_buffer = 7;



if afterimg_timer afterimg_timer--;



with asset_get("hit_fx_obj") if ("otto" in self && otto == other){ //spin vfx from nspecial
	x = other.x + off_x;
	y = other.y + off_y;
}



if ball == noone && !bike && ball_time != get_gameplay_time(){
	ball = instance_create(round(x), round(y), "obj_article1");
	ball.spr_dir = spr_dir;
	if prev_bike || fix_ball_spawn{
		ball.state = 0;
		ball.x = x;
		ball.y = y - 16;
		ball.sprite_index = spr_ball_compress;
		fix_ball_spawn = false;
		sound_play(asset_get("sfx_absa_cloud_place"));
		sound_play(asset_get("sfx_ell_dtilt1"));
	}
	else{
		ball.x = x - 32 * spr_dir;
		ball.y = y - 64;
		if ball_time == get_gameplay_time() - 1{
			ball.x = ball_x;
			ball.y = ball_y;
		}
	}
}

if bike_vfx_time bike_vfx_time--;



if (!bike && state == PS_DOUBLE_JUMP && vsp > 0){
	if place_meeting(x, y + vsp, asset_get("par_block")){
		vsp = 0;
		state_timer = 7;
	}
	fall_through = true;
}

//don't rise during hitpause if you djumped
if hitpause && attacking vsp = 0;







//Bike air physics

// if (bike && (state == PS_DOUBLE_JUMP) && state_timer < 2 && (left_down ^^ right_down)){
//     if (hsp - abs(hsp) * (right_down - left_down) == 0){
//         spr_dir = (right_down - left_down)
//     }
// }

if (bike && state == PS_FIRST_JUMP && state_timer == 1 && vsp == -short_hop_speed){ //Make it so wheels don't clip
    y -= 4;
}



//Bike turnaround and dash stop

if (state == PS_WALK_TURN && bike){
    hsp = walk_speed * spr_dir;
}

if ((state == PS_DASH_STOP || state == PS_DASH_TURN) && bike){
    hsp *= 0.8;
    // if (attack_pressed){
    //     set_attack(AT_JAB);
    // }
}



//Mount and dismount bike

if bike{
	if (state_cat == SC_HITSTUN || state == PS_WALL_JUMP) bike = false;
	
    else switch(state){
        case PS_PARRY_START:
            set_state(PS_DASH_START);
            clear_button_buffer(PC_SHIELD_PRESSED);
            parry_cooldown = 20;
            bike = false;
            break;
        case PS_CROUCH:
            if (prev_state == PS_IDLE){
                state_timer = prev_state_timer + 1;
            }
            state = PS_IDLE;
            break;
        case PS_DASH_START:
        case PS_DASH_TURN:
        case PS_FIRST_JUMP:
        case PS_DOUBLE_JUMP:
            if (state_timer == 0){
                sound_play(sfx_rev[random_func(1,3,true)]);
            }
            break;
    }
    if !bike fix_ball_spawn = true;
}

if rev_timer{
    rev_timer--;
}



//Double check stats

if (bike != prev_bike){
	statUpdate();
	if bike bobbleLoad();
}



//Bike smoke

if !phone.phone_settings[phone.setting_fast_graphics]{

	var smoke_rate = round(12 - abs(hsp) / 2);
	smoke_rate = clamp(smoke_rate, 1, 100);
	
	if (visible && bike && get_gameplay_time() mod smoke_rate == 0){
		var fx_x = floor(x) - (32 - random_func(1, 8, true)) * spr_dir;
		var fx_y = floor(y) - 34 + random_func(2, 8, true);
		var smoke = spawn_hit_fx(fx_x, fx_y, vfx_smoke);
	}

}



//HUD: bike

switch(hud_state){
    case 0: //Inactive
        if bike{
            hud_state++;
            hud_timer = 0;
            hud_frame = 0;
            hud_sprite = spr_hud;
            handlebars_sprite = spr_hud_handlebars;
        }
        break;
    case 1: //Opening
        hud_timer++;
        hud_frame = round(ease_linear(0, 2, hud_timer, 12));
        bobblehead_frame = 0;
        
        speedometer_offset = (hud_frame == 1) ? -4 : 2;
        
        switch(hud_frame){
        	case 0:
        		bobblehead_body_offset = 200;
        		bobblehead_head_offset = 200;
        		break;
        	case 1:
        		bobblehead_body_offset = -2;
        		bobblehead_head_offset = -4;
        		break;
        	case 2:
        		bobblehead_body_offset = 0;
        		bobblehead_head_offset = 2;
        		break;
        }
        
        if (hud_timer == 13){
            hud_state++;
            hud_timer = 0;
        bobblehead_body_offset = 0;
        bobblehead_head_offset = 0;
        }
        break;
    case 2: //Active
        hud_timer++;
        
        speedometer_offset = 0;
        
        hud_frame = 3;
        if (hud_timer == 12){
            hud_timer = 0;
            hud_sprite = spr_hud;
            handlebars_sprite = spr_hud_handlebars;
	        bobblehead_body_offset = 0;
	        bobblehead_head_offset = 0;
            bobblehead_frame++;
        }
        if (hud_timer == 6){
            hud_sprite = spr_hud_shake;
            handlebars_sprite = spr_hud_handlebars_shake;
            bobblehead_frame++;
	        //bobblehead_body_offset = 2;
	        bobblehead_head_offset = 2;
        }
        if !bike{
            hud_state++;
            hud_timer = 0;
            hud_sprite = spr_hud;
            handlebars_sprite = spr_hud_handlebars;
        }
        break;
    case 3: //Closing
        hud_timer++;
        hud_frame = round(ease_linear(4, 6, hud_timer, 12));
        
        speedometer_offset = (hud_frame == 4) ? 0 : -2;
        
        switch(hud_frame){
        	case 4:
        		bobblehead_body_offset = -2;
        		bobblehead_head_offset = 0;
        		break;
        	case 5:
        		bobblehead_body_offset = 0;
        		bobblehead_head_offset = -2;
        		break;
        	case 6:
        		bobblehead_body_offset = 200;
        		bobblehead_head_offset = 200;
        		break;
        }
        
        if (hud_timer == 13){
            hud_state = 0;
        }
        break;
}

if (hud_state == clamp(hud_state, 1, 2)){
    speedometer_angle = lerp(speedometer_angle, abs(round(ease_linear(0, 270, round(hsp), 11) - 2 +
    random_func(1, round(ease_linear(3, 60, round(hsp), 20)), true))), 0.4);
}
else{
    speedometer_angle = lerp(speedometer_angle, 0, 0.4);
}

badly_damaged = (get_player_damage(player) >= 100);





prev_bike = bike;
prev_state_timer = state_timer;
if !(phone_attacking && attack == AT_DAIR && has_hit_ball && hitpause) nspecial_buffer--;



#define statUpdate

//Physical size
var stat_used = bike;

if (hurtboxID.sprite_index == stat_hurtbox_spr[!stat_used]){
	hurtboxID.sprite_index = stat_hurtbox_spr[stat_used]
}

//char_height = stat_char_height[stat_used];
knockback_adj = stat_knockback_adj[stat_used];

//Ground movement
walk_speed = stat_walk_speed[stat_used];
walk_accel = stat_walk_accel[stat_used];
initial_dash_speed = stat_initial_dash_speed[stat_used];
dash_speed = stat_dash_speed[stat_used];
dash_turn_accel = stat_dash_turn_accel[stat_used];
dash_stop_time = stat_dash_stop_time[stat_used];
dash_stop_percent = stat_dash_stop_percent[stat_used];
ground_friction = stat_ground_friction[stat_used];
moonwalk_accel = stat_moonwalk_accel[stat_used];

//Air movement
leave_ground_max = stat_leave_ground_max[stat_used];
max_jump_hsp = stat_max_jump_hsp[stat_used];
air_max_speed = stat_air_max_speed[stat_used];
jump_change = stat_jump_change[stat_used];
air_accel = stat_air_accel[stat_used];
air_friction = stat_air_friction[stat_used];
max_fall = stat_max_fall[stat_used];
fast_fall = stat_fast_fall[stat_used];
gravity_speed = stat_gravity_speed[stat_used];

//Jumps
jump_speed = stat_jump_speed[stat_used];
short_hop_speed = stat_short_hop_speed[stat_used];
djump_speed = stat_djump_speed[stat_used];
double_jump_time = stat_double_jump_time[stat_used];
djump_accel = stat_djump_accel[stat_used];
djump_accel_end_time = stat_djump_accel_end_time[stat_used];
djump_sound = stat_djump_sound[stat_used];

//Landing and wavelanding
wave_land_adj = stat_wave_land_adj[stat_used];
wave_friction = stat_wave_friction[stat_used];
air_dodge_speed = stat_air_dodge_speed[stat_used];

//Misc.
hurtbox_spr = stat_hurtbox_spr[bike];



#define bobbleLoad

var bobble_index = 0;

var bobblehead_file = spr_hud_bobblehead;
var bobblebody_file = spr_hud_bobblebody;

with(asset_get("oPlayer")){
	if (id != other.id && "url" in self){
		if "otto_bobblehead_sprite" in self{ //workshop char w/ it set up
			bobblehead_file = otto_bobblehead_sprite;
			if "otto_bobblehead_body_sprite" in self{
				bobblebody_file = otto_bobblehead_body_sprite;
			}
		}
		
		else if (url != ""){
			if (real(url) < 20){ //vanilla char
				bobble_index = real(url) - 1;
			}
			else if (real(url) == 1865940669){ //sandbert
				bobble_index = 15;
			}
			else if (real(url) == 1866016173){ //guadua
				bobble_index = 16;
			}
		
			else{ //dummy
				bobble_index = 17;
			}
		}
		
		else{ //dummy
			bobble_index = 17;
		}
		other.bobble_id = id;
	}
}

if bobble_index{
	bobblehead_file = spr_hud_bobbleguest[bobble_index];
}

bobblehead_sprite = bobblehead_file;
bobblebody_sprite = bobblebody_file;

with(bobble_id){
	otto_bobble_used = true;
	otto_bobble_id = other.id;
}