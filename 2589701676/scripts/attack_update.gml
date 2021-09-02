// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
    if (window_timer%2==1) super_armor = true;
    else super_armor = false;
    if (window_timer == 1){
        move_cooldown[AT_NSPECIAL] = 60;
        my_key.desiredX = my_key.current_owner_id.x;
        //check for jail opposite sides
        if (my_jail!=noone && (my_key.y<my_jail.y || y-1<my_jail.y)){
            if (my_key.x<my_jail.x && my_key.current_owner_id.x>my_jail.x){
                my_key.desiredX = my_jail.x-20;
            }
            if (my_key.x>my_jail.x+180 && my_key.current_owner_id.x<my_jail.x+180){
                my_key.desiredX = my_jail.x+200;
            }
        }
        my_key.desiredY = my_key.current_owner_id.y;
    }
}

if (attack == AT_USPECIAL){
    can_wall_jump = true;
    if (window==1 && window_timer == 1){
        counter = 40;//how long you are in the roll
        startup_counter = 60;//how long you need to loop before actionableish
        can_fast_fall = false;
        reset_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX);
    }
    if (window==2){
        if (startup_counter==60){
            my_child = instance_create(x-25, y-65, "obj_article3");
            my_child.overall_despawn_timer = 240;
        }
        if (startup_counter<=0 && !free){
            set_state(PS_IDLE);
        }
        else {
            window_timer = 0;
            if (vsp<0){
                vsp=-18;
            }
            if (startup_counter<=0){
                can_fast_fall = true;
            }
        }
        startup_counter--;
    }
    if (window==3){
        if (counter == 40 || counter==80){
            if (!joy_pad_idle){
                combo_angle = joy_dir * pi / 180;
                set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, spr_dir * 4 * cos(combo_angle));
                set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -4 * sin(combo_angle));
            }
            else {
                set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 0);
                set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, 0);
            }
        }
        else if (counter==39 || counter == 79){
            set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 0);
        }
        counter--;
        if(window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH) && counter>0){
            window_timer = 0;
        }
    }
}

if (attack == AT_DSPECIAL && window_timer == 14){
    if (!instance_exists(obj_article_platform) && my_key.current_owner_id==id){
        my_jail = instance_create(x - 90 +(156 * spr_dir),y-15,"obj_article_platform");
        //move key if necessary
        if (my_key.x>my_jail.x-20 && my_key.x<my_jail.x+200){
            if (my_key.x>my_jail.x+90){
                my_key.desiredX = my_jail.x+200;
            } else {
                my_key.desiredX = my_jail.x-20;
            }
        }
    }
}

if (attack == AT_FSPECIAL && window == 2 && window_timer == 1){
    if (!instance_exists(obj_article2)){
        my_boomerang = instance_create(x, y-19, "obj_article2");
        boom_off_x = x;
        boom_off_y = y;
        has_boom = true;
        reset_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE);
        //my_boomerand.hsp = spr_dir * 10;
    }
}

if (attack == AT_JAB){
    if(window = 1){
        has_ever_hit = false;
    }
    if (attack_down && window==3){
        if(has_hit){
            x+=(spr_dir*-2);
            has_hit=false;
            has_ever_hit = true;
        }
        if (!has_ever_hit || joy_pad_idle)
            window=2;
        else{
            //cancel
            can_attack=true;
            if (down_down) 
            {
                set_attack(AT_DTILT);
            }
            else if (up_down) {
                set_attack(AT_UTILT);
            }
            else if (right_down){
                spr_dir=1;
                set_attack(AT_FTILT);
            }
            else{
                spr_dir=-1;
                set_attack(AT_FTILT);
            }
        }
    }
}

if (attack==AT_TAUNT){
    if (taunt_pressed && window==1 && window_timer>12){
        window=2;
        window_timer=0;
    }
    else if (window_timer==get_window_value(attack, 1, AG_WINDOW_LENGTH)){
        window_timer=0;
        taunting++;
    }
}

if (attack == AT_UAIR){
    can_wall_jump = true;
    if (window == 1 && window_timer == 1){
        reset_window_value(AT_UAIR, 4, AG_WINDOW_HSPEED);
        reset_window_value(AT_UAIR, 4, AG_WINDOW_VSPEED);
        reset_window_value(AT_UAIR, 5, AG_WINDOW_HSPEED);
        reset_window_value(AT_UAIR, 5, AG_WINDOW_VSPEED);
        grabbed = false;
    }
    if (!grabbed && has_hit){
        if (window == 2){
            window_timer = (3 - floor((window_timer-1)/2))
        }
        window = 4;
        grabbed = true;
        set_window_value(AT_UAIR, 4, AG_WINDOW_HSPEED, 0);
        set_window_value(AT_UAIR, 4, AG_WINDOW_VSPEED, 0);
        set_window_value(AT_UAIR, 5, AG_WINDOW_HSPEED, 5);
        set_window_value(AT_UAIR, 5, AG_WINDOW_VSPEED, -10);
    }
}

if (attack == AT_DAIR){
    
    if (window == 1 && window_timer == 1){
        reset_hitbox_value(attack, 1, HG_WINDOW);
    }
    if (window==2 && window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)){
        window_timer = 1;
        can_jump = true;
        set_hitbox_value(attack, 1, HG_WINDOW, 1);
    }
    if (has_hit){
        window = 3;
        vsp = -3;
        hsp = 0;
    }
}

if (attack==AT_FAIR){
    //draw_debug_text(x+190*spr_dir, y, "CHECK");
    //draw_debug_text(my_jail.x, my_jail.y, "JAIL");
    if (window==1 && my_jail!=noone && window_timer==get_window_value(attack, 1, AG_WINDOW_LENGTH) && 
        ((x+190*spr_dir>my_jail.x && x+190*spr_dir<my_jail.x+180 && y<my_jail.y) ||
        (x+100*spr_dir>my_jail.x && x+100*spr_dir<my_jail.x+180 && y<my_jail.y) ||
        (x>my_jail.x && x<my_jail.x+180 && y<my_jail.y))){
            //draw_debug_text(x, y, "HERE");
            //print_debug("OI");
            set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED, 11);
            set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
            set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED, 0);
            set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
        }
    else if (window==1 && window_timer==1){
        reset_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED);
        reset_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED_TYPE);
        reset_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED);
        reset_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED_TYPE);
    }
}

if (attack==AT_BAIR){
    //draw_debug_text(x+190*spr_dir, y, "CHECK");
    //draw_debug_text(my_jail.x, my_jail.y, "JAIL");
    if (window==1 && my_jail!=noone && window_timer==get_window_value(attack, 1, AG_WINDOW_LENGTH) && 
        ((x-210*spr_dir>my_jail.x && x-210*spr_dir<my_jail.x+180 && y<my_jail.y) ||
        (x-100*spr_dir>my_jail.x && x-100*spr_dir<my_jail.x+180 && y<my_jail.y) ||
        (x>my_jail.x && x<my_jail.x+180 && y<my_jail.y))){
            //draw_debug_text(x, y, "HERE");
            //print_debug("OI");
            set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED, -11);
            set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
            set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED, 0);
            set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
        }
    else if (window==1 && window_timer==1){
        reset_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED);
        reset_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED_TYPE);
        reset_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED);
        reset_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED_TYPE);
    }
}


if (attack==AT_FTILT){
    //draw_debug_text(x+190*spr_dir, y, "CHECK");
    //draw_debug_text(my_jail.x, my_jail.y, "JAIL");
    if (window==1 && my_jail!=noone && window_timer==get_window_value(attack, 1, AG_WINDOW_LENGTH) && 
        ((x+210*spr_dir>my_jail.x && x+210*spr_dir<my_jail.x+180 && y<my_jail.y+1) ||
        (x+100*spr_dir>my_jail.x && x+100*spr_dir<my_jail.x+180 && y<my_jail.y+1) ||
        (x>my_jail.x && x<my_jail.x+180 && y<my_jail.y+1))){
            //draw_debug_text(x, y, "HERE");
            //print_debug("OI");
            set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 11);
            set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED_TYPE, 1);
            set_window_value(AT_FTILT, 2, AG_WINDOW_VSPEED, 0);
            set_window_value(AT_FTILT, 2, AG_WINDOW_VSPEED_TYPE, 1);
        }
    else if (window==1 && window_timer==1){
        reset_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED);
        reset_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED_TYPE);
        reset_window_value(AT_FTILT, 2, AG_WINDOW_VSPEED);
        reset_window_value(AT_FTILT, 2, AG_WINDOW_VSPEED_TYPE);
    }
}

if (attack == AT_USTRONG){
    if (window == 1 && window_timer == 1){
        times_through = 0;
        num_frames=0;
    }
    if (window == 2){
        num_frames++;
        if (times_through<6 && (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)) && (strong_down)){
            //window = 2;
            window_timer=0;
            times_through++;
        }
        if (!joy_pad_idle){
            hsp = lengthdir_x(1, joy_dir) * 6;
        }
        if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)){
            //scale damage and knockback
            set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 7+7*0.5*(num_frames/60));
            set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 11+11*0.5*(num_frames/60));
            if(my_key.current_owner_id==id){
            set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 7+7*0.5*(num_frames/60));
            set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 9+9*0.5*(num_frames/60));
            }
        }
    }/*
    if (window == 3 && window_timer == 1){
    }*/
}


if (attack == AT_FSTRONG){
    if (window == 1 && window_timer == 1){
        times_through = 0;
        num_frames=0;
    }
    if (window == 2){
        num_frames++;
        if (times_through<6 && (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)) && (strong_down)){
            //window = 2;
            window_timer=0;
            times_through++;
        }
        if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)){
            //scale damage and knockback
            set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 7+7*0.5*(num_frames/60));
            set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 10+10*0.5*(num_frames/60));
            if (my_key.current_owner_id==id){
                set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 7+7*0.5*(num_frames/60));
                set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 9+9*0.5*(num_frames/60));
            }
        }
    }/*
    if (window == 3 && window_timer == 1){
    }*/
}

/*
if (window == 1 && window_timer == 1){
    appliedChains = false;
}
if(has_hit_player && !appliedChains){
    if  (hit_player_obj.id != my_key.current_owner_id) {
        hit_player_obj.numChains++;
    }
    appliedChains = true;
}*/

/*Extra thangs to add:
>>>Utilt cannot be DI-edCHECK
>>>Fstrong/Ustrong strong charge sfx?; damage scaling?CHECK
clean up Ftilt sprites (& others?)
Ustrong: shorter height, make flashing better, add spin particles
Fstrong: make flashing consistent with Ustrong
Jab: nerf; cannot destroy projectiles; less active frames?
>>>jab cancels, but better?CHECK
make dattack stick to the stage better
bigger parry stun for disjoints?
something that cancels - platform falling?
there is ONLY ever one key, even if the character exists multiple times; spawns in middle w/ noone as the owner
>>>Make key reflect player colors (blue, red hud) even with sahders/char colors
>>>Nspecial: super armor and animation; make sure it removes all chain upon switch, tweak collision box CHECK
Use draw_sprite_ext to get rid of the weird strong attack sprite stuff????????
ALL attacks except jab/nspecial/dspecial have whifflag
ALL sprites have green dot removed
Implement cooldown for moves like Nspecial, Uair (player variables -> move cooldown []), Dspecial: special case
sfx_spin_longer for dsmash? sfx_stage_pillar may sound like chain; keep in mind
Make a "breaking all chians" animation
>>>Attacks apply chain to EVERY person they hit, not just one
>>>get rid of purple when chained down; restore double jump/remove pratfall/etc when yoinked
>>>put chain effects in hit_player.gml
check that the gameplay timer is running when checking stuff in other pre/post draw
add sfx for applying chains/ chained down start/end, jail return
parrying removes chain/chained down
make jail bars actually come in front of players
>>>make key stop at jail bars?
implement jail bar buffs to moves
>>>MAKE JAIL BARS CARRY BALL AND CHAIN AS A KILL CONFIRM (maybe not instakill tho)
make attacks able to leave ground so they can get picked up by jail? make jail pickup work better
make chains/chained down reset upon opponent death
make chained down less jittery
test with all character's mechanics/all stages
rune idea: chained Down creates hitbox upon exit
runes? color palletes? ai?
make the key color itself better (not gray for cpus; like SK's coins)
lower double jump height and other balance stuff
make chained down appear in front of the player
add particles: sweetspots
disable purple kill when APPLYING chained down
make Dspecial apply chain upon entry, not on timer
extra chains while in chained down/ overflow in general are converted to damage
If multiple of this character -> multiple jails; check ALL
Dair -> on hit, destroy hitboxes (they're still there during flip animation)
Uair -> when handcuffing to platform, the handcuff slides backwards, instead of us sliding to it
Fspec-> get sprite of catching the ball, instead of just boring
Fspec-> make it pull you along a bit? nah, its already fun enough
Fspec-> OP plz nerf: get hit by key-owning enemy while it is active, ball disappears (or they counter ball)
>>>Fspec-> hitboxes sometimes a bit jank after hitting a player (appear at most hit spot first, then actual)
Fspec-> 1%, 2%, 3%, etc for each hit?
Dtilt-> starting to realize its kiiiiiiinda OP
Uair -> make it stun, to seem more like a grab
Fspec-> also seems to cancel current attack if we hit opponent? not just catching
Dair -> shows wrong frame when hitting with spike hitbox
Shorten Chained Down timer: 10 seconds sucks for both combos and killing
This char is VERY much broken, nerf em into the ground while still keeping em fun
All moves have more endlag -> cancelling is more interesting
make fspec ball sprite change directions (spr_dir)
Uspec-> if hit during startup, rolling thunder never occurs
Uspec projectile shouldnt add chain
go through debugging lines stuff: ctrl+8
>>>TODO: Uspec collide w ground, turn properly
bug: when in "balloon" window of up B and catch side B, can sometimes get HUGE vertical momentum
when doing grounded side B w no movement, we shouldnt do a little bounce
dair window 1 sprite should be better (its p bland)
walljump hurtbox is off?
if galaxy effect, no chained down
when we die with fspecial out we go invisible
two non-brugalos parry eachother with a key, it doesnt get transfered
two brugalos and someone else makes article1_update have errors (line 39?)
two brugalos -> instance_exists() works? (like for fspecial)
forsburns clone collects key uh oh

make breaking chains more readable
fix death jankiness
parry grants key ownership
jab push slightly back on hit
uspecial will not put into chained down(projectile or roll); breaks out of it
fspecial ball drops when not key owner
fspecial is just one projectile
fspecial remove grounded bounce
uspecial doesnt spike
dspecial breaks when u lose key
dpecial can be spawned from high up
dspecial gives warning before diappearing
dspecial has gimpy hitbox
do taunt
fix hurt animation
fix animations on fstrong/ustrong

comment code
key return through jail not working?
set walk speed, double jump height, etc.
key singleton
move cooldowns (nspecial)

more whifflag and bigger parry stun? prob not tbh
clean up sprites: ftilt, strong flashing, green dot, transparency
sfx for special events: chained down, cant get key, super jump, etc
runes, particles, and color palletes
fix kragg uspecial, clairen dspecial, etc
two brugalos-> uspecial projectile does negative when key owner; steal key-> jail break doesn't work
read all the above for ideas

//----------------------WHEN COMING BACK: UNFINISHED MOVES---------------

DAIR: I got started on the animation, but it still needs the backflip after hitting someone.
    First hitbox: spike; no bounce (like sheik). Second: similar to Belmonts.
    Make sure Dspecial -> Dair can land on platform, and that it can be jump cancelled.
    Landing will cancel into idle animation and disable all hitboxes.
    
UAIR: Throws handcuff upward, but also a little in front (think y = 2x).
    Sends in opposite direction that handcuff is shot (i.e. downish) if it hits (maybe add extra hitpause)
    Gives a small vertical boost during startup, and large upward boost if it hits anything (including walls)
    Should function similar to Byleth Up-B, but with like half the range.
    Probably do tons of small hitboxes over time (like Pacman Sm4sh grab)
    
USPECIAL: Curls up in ball; Basically Lucas UpB, but if you let go of B you can walk/jump around
    Can also hit key for boost; boost cancels whatever you are currently doing (boost is only a single hit)
    Projectile is not deleted if it touches the ground (lingers there) and goes through platforms
    
FSPECIAL: Throws Ball 'n Chain super far forwards; then Ball accelerates towards you until you catch it.
    Ball hits opponents in the current direction it is travelling, and bounces perfectly off ground/walls
    Catching ball cancels endlag of whatever move you're on; Only one ball out at once
    
Also just read the google doc. its a bit dated but its useful
*/