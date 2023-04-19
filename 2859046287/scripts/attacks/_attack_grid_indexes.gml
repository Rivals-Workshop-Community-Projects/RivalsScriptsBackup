//this attack (_attack_grid_indexes.gml) is made to store every known attack, window and hitbox grid values
//feel free to copy around the lines with set_X_value to your attacks

//NOTICE: the attack, window and hitbox values are don't slightly differently from normal in Tester
//this is done to prevent confusion in numbers and values and allows you to focus on making the attacks as you want
//  - atk = the value of the attack
//  - window_num = the value of the window you are on, make sure to increase it's value every new window
//  - hitbox_num = same thing as window_num but for hitboxes

//bellow all these base rivals values, i've added my own special attack values to make things more convinient



//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                                  //
//                                                       SET_ATTACK_VALUE                                                           //
//                                                                                                                                  //
//                    these values are used for the attacks' basic variables, setting it up before everything else                  //
//                                                                                                                                  //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/*
    //atk = AT_; // name this the attack name like AT_JAB or AT_FSPECIAL_2, or put a number



    set_attack_value(atk, AG_CATEGORY, [0 | 1 | 2]);
    //  0 = ground attack | 1 = air attack | 2 = any

    set_attack_value(atk, AG_SPRITE, sprite_get("sprite_name"));
    //  don't put the _strip part

    set_attack_value(atk, AG_AIR_SPRITE, sprite_get("sprite_name"));
    //  works only if AG_CATEGORY is 2

    set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("sprite_name"));
    //  tells the game where the player can be hit while in this attack

    set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("sprite_name"));
    //  same thing but in the air, works only if AG_CATEGORY is 2

    set_attack_value(atk, AG_NUM_WINDOWS, [number]);
    //  tells the game how many windows the attack has
    //  fun fact, with how i did the windows, you can also put this at the bottom of the window with "window_num" inside and the game will know

    set_attack_value(atk, AG_HAS_LANDING_LAG, [0 | 1]);
    //  1 will put the player in landing lag, only if AG_CATEGORY is 1

    set_attack_value(atk, AG_LANDING_LAG, [number]);
    //  the amount of frames the player is in landing lag

    set_attack_value(atk, AG_OFF_LEDGE, [0 | 1]);
    //  makes the player go off the ledge if the attack is done near it

    set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, [number]);
    //  the player will charge a strong at the end of the window written

    set_attack_value(atk, AG_USES_CUSTOM_GRAVITY, [0 | 1]);
    //  allows windows in the attack to use AG_WINDOW_CUSTOM_GRAVITY

    set_attack_value(atk, AG_NO_PARRY_STUN, [0 | 1]);
    //  will prevent the player from going into parry stun
*/


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                                  //
//                                                       SET_WINDOW_VALUE                                                           //
//                                                                                                                                  //
//                          these values are used for the attacks' windows, the animation of the attack                             //
//                                                                                                                                  //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/*
    window_num = 1;   //put this at the start of window 1
    window_num ++;    //copy this line above every window that isn't window 1

    set_window_value(atk, window_num, AG_WINDOW_TYPE, [0 | 7 | 8 | 9 | 10]);
    //  0 = normal
    //  7 = pratfall at the end
    //  8 = skip this window on the ground but not in the air
    //  9 = loop window
    //  10 = go to the next window if it's on the ground but loop in the air

    set_window_value(atk, window_num, AG_WINDOW_LENGTH, [number]);
    //  how long the window is in frames

    set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, [number]);
    //  how many sprites from the strip the window uses

    set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, [number]);
    //  what's the first sprites from the strip the window uses

    set_window_value(atk, window_num, AG_WINDOW_HSPEED, [number]);
    //  horizontal speed to apply in this window (positive values make the character go forward)

    set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, [0 | 1 | 2]);
    //  0 = adds horizontal momentum (if AG_WINDOW_HSPEED isn't 0)
    //  1 = constant horizontal speed
    //  2 = applies a speed boost only on the first frame

    set_window_value(atk, window_num, AG_WINDOW_VSPEED, [number]);
    //  vertical speed to apply in this window (negative values make the character go up)

    set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, [0 | 1 | 2]);
    //  0 = adds vertical momentum (if AG_WINDOW_VSPEED isn't 0)
    //  1 = constant vertical speed
    //  2 = applies a speed boost only on the first frame

    set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, [0 | 1]);
    //  allows you to give certain windows different friction with the ground/air

    set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, [number]);
    //  sets the window's custom air friction only if AG_WINDOW_HAS_CUSTOM_FRICTION is 1

    set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, [number]);
    //  same as AG_WINDOW_CUSTOM_AIR_FRICTION but on the ground

    set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GRAVITY, [number]);
    //  sets custom gravity for the window if AG_USES_CUSTOM_GRAVITY is 1
    //  sadly it cannot be set per attack and has to be set per window (normally)

    set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, [0 | 1]);
    //  a value of 1 will make the window 1.5x longer if you haven’t hit someone

    set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, [0 | 1 | 2]);
    //  0 = no invincibility
    //  1 = Invincible to all attacks
    //  2 = Invincible to projectiles (HG_HITBOX_TYPE = 2)

    set_window_value(atk, window_num, AG_WINDOW_HITPAUSE_FRAME, [number]);
    //  0 = no specific frame
    //  +1 = displays the sprite value written when you hit while in this window

    set_window_value(atk, window_num, AG_WINDOW_CANCEL_TYPE, [0 | 1 | 2]);
    //  0 = normal
    //  1 = if attack is pressed go to the next window (on jab it can be used to cancel into tilts)
    //  2 = if special is pressed go to the next window
    //  8 = cancels don't work

    set_window_value(atk, window_num, AG_WINDOW_CANCEL_FRAME, [number]);
    //  if AG_WINDOW_CANCEL_TYPE is above 0, the attack becomes cancellable on the frame written

    set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, [0 | 1]);
    //  a value of 1 will allows sounds to be played on this window

    set_window_value(atk, window_num, AG_WINDOW_SFX, [sound_get("sound_name") | asset_get("sound_name")]);
    //  the sound to play in this window
    //  sound_get("sound_name") is for sounds in your sounds folder
    //  asset_get("sound_name") is for sounds in the game engine (list of in-game sounds: https://www.rivalsofaether.com/workshop/sfx-list/)

    set_window_value(atk, window_num, AG_WINDOW_GOTO, [number]);
    //  at the end of the window it will jump to the window value specified
*/


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                                  //
//                                                       SET_HITBOX_VALUE                                                           //
//                                                                                                                                  //
//                          this is where you set your hitboxes for your attacks, their damage, knockback etc.                      //
//                                                                                                                                  //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/*
    set_num_hitboxes(atk, [number]);
    //  tells the game how many hitboxes this attack has like AG_NUM_WINDOWS tells the window amount



    hitbox_num = 1;   //put this at the start of hitbox 1
    hitbox_num ++;    //copy this line above every window that isn't hitbox 1

    ///////////////////////////////////////////////////////// HITBOX TYPE 1 = MELEE /////////////////////////////////////////////////////////
    //  these indexes are used to make pretty much any hitbox you can thing of
    {
        set_hitbox_value(atk, hitbox_num, HG_PARENT_HITBOX, [number]);
        //  if the value is bigger than 0, the hitbox will take every hitbox value with the same HG_PARENT_HITBOX
        //  there are some exceptions that will not take any values:
        //  - HG_HITBOX_TYPE
        //  - HG_WINDOW
        //  - HG_WINDOW_CREATION_FRAME
        //  - HG_LIFETIME
        //  - HG_HITBOX_X
        //  - HG_HITBOX_Y
        //  - HG_HITBOX_GROUP

        set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, [1, 2]);
        //  1 = melee hitbox - goes along with the player
        //  2 = projectile - doesn't move along with the player

        set_hitbox_value(atk, hitbox_num, HG_WINDOW, [number]);
        //  the window this hitbox should appear on

        set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, [number]);
        //  the frame inside the window that the hitbox should appear on
        //  0 spawns it right as the window starts, don't put 0 if the hitbox appears on the first window (why would you even do that)

        set_hitbox_value(atk, hitbox_num, HG_LIFETIME, [number]);
        //  the amount of time the hitbox stays on

        set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, [number]);
        //  position on the horizontal axis of the center of the hitbox, relative to the center of the player
        //  psotivie values offset the hitbox towards where the player is facing

        set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, [number]);
        //  position on the vertical axis of the center of the hitbox, relative to the bottom of the player
        //  negative values offset the hitbox up

        set_hitbox_value(atk, hitbox_num, HG_WIDTH, [number]);
        //  the hitbox's width

        set_hitbox_value(atk, hitbox_num, HG_HEIGHT, [number]);
        //  the hitbox's height

        set_hitbox_value(atk, hitbox_num, HG_SHAPE, [number]);
        //  0 = circle
        //  1 = rectangle
        //  2 = rectangle with rounded edges

        set_hitbox_value(atk, hitbox_num, HG_PRIORITY, [1-10]);
        //  when 2 hitboxes from this attack hit at the same frame, this tells the game which hitbox should register the hit

        set_hitbox_value(atk, hitbox_num, HG_DAMAGE, [number]);
        //  hitbox's damage

        set_hitbox_value(atk, hitbox_num, HG_ANGLE, [0-361]);
        //  0 = forward
        //  90 = up
        //  180 = back
        //  270 = funny spike
        //  361 = 45 degrees for enemies hit in the air, 40 degrees for enemies hit on the ground

        set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, [number]);
        //  the minimal amount of knockback the attack does

        set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, [number]);
        //  the amount of knockback to increase it by according to the target's %

        set_hitbox_value(atk, hitbox_num, HG_EFFECT, [number]);
        //  0 = normal
        //  1 = burn (zetterburn can use his mechanic with this)
        //  2 = burn consume - zetterburn uses this to make people stop burning
        //  3 = burn stun - inflicts extra hitpause of burning opponents to garentee zetterburns' burn consume
        //  4 = wrap - funny maypul trap
        //  5 = freeze - etalus freeze, only actually works on the ground
        //  6 = mark
        //  8 = auto wrap
        //  9 = polite - hitstuns the enemy only if they already are in hitstun
        //  10 = poison - ranno poison
        //  11 = plasma stun - the cooler extra hitpause, i think it multiplies the hitpause value by 1.5 but don't take my word for it
        //  12 = crouch armor - crounching opponents can tank the attack

        set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, [number]);
        //  the minimal amount of hitpause the attack does

        set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, [number]);
        //  the amount of hitpause to increase it by according to the target's %

        set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, [number | string]);
        //  the visual effect to use when you hit someone
        //  you can either type in a number from this page https://www.rivalsofaether.com/workshop/visual-effects-list/ for base game hit effects
        //  or you can put in your hit effect if you set it up on init.gml

        set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, [number]);
        //  offset the effect on the horizontal axis
        //  a positive value brings it forward
        //  a value of 0 does the hit effect at the exact point where it hit

        set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, [number]);
        //  offset the effect on the vertical axis
        //  a negative value brings it upward
        //  a value of 0 does the hit effect at the exact point where it hit

        set_hitbox_value(atk, hitbox_num, HG_HIT_PARTICLE_NUM, [number]);
        //  if you set up any custom particles in init.gml with set_hit_particle_sprite(), putting up the particle's number will display that particle

        set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, [sound_get("sound_name") | asset_get("sound_name")]);
        //  the sound to play when you hit with this hitbox
        //  sound_get("sound_name") is for sounds in your sounds folder
        //  asset_get("sound_name") is for sounds in the game engine (list of in-game sounds: https://www.rivalsofaether.com/workshop/sfx-list/)

        set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, [number]);
        //  0 = sends the same way the knockback arrow is pointing (normal)
        //  1 = away from your center
        //  2 = towards your center
        //  3 = away from the hitbox's center, horizontally
        //  4 = towards the hitbox's center, horizontally
        //  5 = sends the opposite direction of the knockback arrow
        //  6 = away from your center, horizontally
        //  7 = towards your center, horizontally
        //  8 = away from the hitbox's center
        //  9 = towards the hitbox's center
        //  10 = in the direction you are moving

        set_hitbox_value(atk, hitbox_num, HG_EXTRA_HITPAUSE, [number]);
        //  applies hitpause on the enemy only for the amount of frames written, after the normal hitpause

        set_hitbox_value(atk, hitbox_num, HG_GROUNDEDNESS, [0 | 1 | 2]);
        //  normal
        //  ignores enemies in the air
        //  ignores enemies on the ground

        set_hitbox_value(atk, hitbox_num, HG_EXTRA_CAMERA_SHAKE, [-1| 0 | 1]);
        //  no camera shake at all
        //  normal
        //  forces the camera to shake regardless of how strong the move launches

        set_hitbox_value(atk, hitbox_num, HG_IGNORES_PROJECTILES, [0 | 1]);
        //  a value of 1 will make the hitbox not be able to destroy projectiles

        set_hitbox_value(atk, hitbox_num, HG_HIT_LOCKOUT, [number]);
        //  from when the hitbox hits something, the player will not be able to hit the enemies for the amount of frames that are written in

        set_hitbox_value(atk, hitbox_num, HG_EXTENDED_PARRY_STUN, [number]);
        //  when parried, it will inflict extra parry stun depending on how far you were when you got parried
        //  the further you were, the longer you would be parried

        set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, [number]);
        //  hitboxes with the same value basically count as the same hitbox, which allows for more complex hitbox shapes
        //  a value of -1 will always hit, and projectiles belong to this value

        set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, [number]);
        //  not to be confused with HG_HITPAUSE_SCALING, this value multiplies the hitstun after being calculated normally

        set_hitbox_value(atk, hitbox_num, HG_DRIFT_MULTIPLIER, [number]);
        //  the acceleration of the foe's drift DI is multiplied by this value

        set_hitbox_value(atk, hitbox_num, HG_SDI_MULTIPLIER, [number]);
        //  the distance of the foe's SDI is multiplied by this value

        set_hitbox_value(atk, hitbox_num, HG_TECHABLE, [0 | 1 | 2 | 3]);
        //  0 = foe can tech (normal)
        //  1 = foe can't tech
        //  2 = foe can go through platforms while hitstunned
        //  3 = foe can't tech and won't bounce off the ground

        set_hitbox_value(atk, hitbox_num, HG_FORCE_FLINCH, [0 | 1 | 2 | 3]);
        //  0 = normal
        //  1 = forces enemies on the ground to flinch
        //  2 = can't cause enemies to flinch
        //  3 = causes foes to flinch only if they are currently crouching

        set_hitbox_value(atk, hitbox_num, HG_FINAL_BASE_KNOCKBACK, [number]);
        //  if bigger than 0, HG_BASE_KNOCKBACK will change from the HG_BASE_KNOCKBACK value to this value for the hitbox's lifespan duration

        set_hitbox_value(atk, hitbox_num, HG_THROWS_ROCK, [number]);
        //  0 = breaks kragg's rock
        //  1 = knocks kragg's rock away
        //  2 = ignores kragg's rock

        set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_DISTANCE, [number]);
        //  Let's you adjust how far away from the player hit FX spawn.
    }

    ////////////////////////////////////////////////////// HITBOX TYPE 2 = PROJECTILES //////////////////////////////////////////////////////
    //  these indexes are used for projectiles specifically (type 2)
    {
        set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, sprite_get("sprite_name"));
        //  sets up the sprite for the projectile to use
        //  there are some cases where you might need the projectile to not have a sprite, in which case use sprite_get("empty")
        //  the sprite "empty" is a custom 16x16 image with nothing i made for this specifically

        set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, [sprite_get("sprite_name") | -1]);
        //  sets up the collision for the projectile to use (it also shows it if hitbox view is on)
        //  if the value is -1, it uses the hitbox's default variables like shape. width and height etc.
        //  alternatively, using sprite_get() makes the projectile ignore those variables entirely

        set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("sprite_name"));
        //  the sprite to use for collision with terrain
        //  if the value is 0 (default), it will use the HG_PROJECTILE_SPRITE value

        set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ANIM_SPEED, [number]);
        //  the animation speed of the projectile
        //  the animation loops, make of that what you will

        set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_HSPEED, [number]);
        //  the horizontal speed of the projectile
        //  a positive value brings it forward

        set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_VSPEED, [number]);
        //  the vertical speed of the projectile
        //  a negative value brings it down

        set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GRAVITY, [number]);
        //  applies this as downward acceleration, can be used to make more realistic projectiles like arrows

        set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_FRICTION, [number]);
        //  decreases horizontal speed when the projectile is on the ground

        set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_AIR_FRICTION, [number]);
        //  decreases horizontal speed when the projectile is in the air

        set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, [0 | 1 | 2]);
        //  0 = destroys projectile when it collides with a wall
        //  1 = goes through walls
        //  2 = bounces off walls

        set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, [0 | 1 | 2]);
        //  -1 = breaks projectile when it hits the ground
        //  0 = stops the projectile's vsp when it hits the ground
        //  1 = goes through the ground
        //  2 = bounces off the ground

        set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, [0 | 1]);
        //  0 = stops projectile when it hits an enemy
        //  1 = goes through enemies
        //  lol i wish it could bounce off enemies

        set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_UNBASHABLE, [0 | 1]);
        //  a value of 1 makes it so ori can't grab the projectile

        set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PARRY_STUN, [0 | 1]);
        //  a value of 1 makes the player get parry stunned if the enemy parries the projectile

        set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, [0 | 1]);
        //  a value of 1 makes the projectile not change directions while parried

        set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, [0 | 1]);
        //  a value of 1 makes the projectile unbreakable by hitboxes

        set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT, [number | string]);
        //  the visual effect to use when the projectile is destroyed
        //  you can either type in a number from this page https://www.rivalsofaether.com/workshop/visual-effects-list/ for base game hit effects
        //  or you can put in your hit effect if you set it up on init.gml

        set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PLASMA_SAFE, [0 | 1]);
        //  a value of 1 makes the projectile not get destroyed by clairen's field
    }

*/


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                                  //
//                                                     BAR'S SPECIAL VALUES                                                         //
//                                                                                                                                  //
//             these values are all custom values that i made specifically for convinience sake, feel free to use them too          //
//                                                                                                                                  //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/*
    set_window_value(atk, window_num, AG_WINDOW_LOOP_TIMES, #loops)
    //  if the AG_WINDOW_TYPE is 9, this forces the window to loop a certain amount of times
    //  you can also use the [window_loops] variable to check the current loop

    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MULTIHIT, [number]);
    //  sets the amount of times a projectile would hit

    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_HITRATE, [number]);
    //  similarly to HG_HIT_LOCKOUT, it will tell the projectile how frequently it should hit

    set_hitbox_value(atk, hitbox_num, HG_MULTIHIT_DAMAGE, [number]);
    //  sets a custom damage value to the multihit of the hitbox
    //  if left alone it would keep the damage the same as HG_DAMAGE
    //  if not left alone, HG_DAMAGE only applies to the final hit

    set_hitbox_value(atk, hitbox_num, HG_MULTIHIT_VFX, [number]);
    //  draws a custom hit effect for multihits
    //  HG_VISUAL_EFFECT acts as the effect for the final hit, and writing -1 will keep HG_VISUAL_EFFECT

    set_hitbox_value(atk, hitbox_num, HG_MULTIHIT_SFX, [number]);
    //  plays a custom sound for multihits on hit
    //  HG_HIT_SFX acts as the final hit's sound, and writing -1 will keep HG_HIT_SFX on the multihits
*/