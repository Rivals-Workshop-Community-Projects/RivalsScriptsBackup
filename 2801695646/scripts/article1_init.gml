//article1_init

//------------------------------------------------------
// ID
//------------------------------------------------------
ent_idx = -1;                                                                   // The entity ID.

player_id.sna_total_entities_spawned++;                                         // Increase the number of total entites spawned.
ent_num = player_id.sna_total_entities_spawned;                                 // This is the xth entity spawned.


//------------------------------------------------------
// Timers
//------------------------------------------------------
ent_spawn_time = get_gameplay_time();
ent_held_time = get_gameplay_time();
ent_released_time = get_gameplay_time();
//ent_timer = 0;                                                                  // TODO: I should probably turn this into a state machine, instead.
//ent_timer_held = 0;
//ent_timer_not_held = 0;


//------------------------------------------------------
// Article Settings
//------------------------------------------------------
can_be_grounded = true;
ignores_walls = false;
uses_shader = false;


//------------------------------------------------------
// Draw Settings
//------------------------------------------------------
depth = -1;
//mask_index = sprite_get("ent_throwable_mask");
anim_type = 0;                                                                  // 0 = static, 1 = looping, 2 = physics windows, 3 = sticky windows
anim_length = 60;                                                               // How long the animation loop lasts.


//------------------------------------------------------
// Hitbox Settings
//------------------------------------------------------
can_be_hit = false;                                                             // Can this entity be hit by hitboxes?
ignore_bounce_hitboxes = true;                                                  // Can this entity be bonk'd by other entities?

kb_scale = 1.4;                                                                 // TODO: Allow customization for this.

time_hit_force_free = 3;                                                        // How many frames the entity's "free" variable will be forced to be true, when hit by a hitbox.
time_since_hit = time_hit_force_free;                                           // How many frames since the entity has been hit by a hitbox.

hit_fx_cooldown = 0;                                                            // Timer before audio-visual feedback for getting hit can appear again.
hbox_last = noone;                                                              // The last hitbox that this entity was hit with.
hbox_player_id_last = noone;
hbox_attack_last = noone;
hbox_num_last = noone;
hbox_group_last = noone;


//------------------------------------------------------
// Physics Settings
//------------------------------------------------------
has_physics = false;                                                            // Does this entity have physics?

hsp_float = 0;                                                                  // Hspeed before it's rounded.
vsp_float = 0;                                                                  // Vspeed before it's rounded.

is_held = false;                                                                // Whether or not this entity is being held by Snake.

gravity_speed = 0;                                                              // Gravity acceleration
max_fall = 0;                                                                   // Maximum fall speed
air_friction = 0;                                                               // How fast the entity slows down horizontally, while in the air.
ground_friction = 0;                                                            // How fast the entity slows down horizontally, while in the air.
bounciness = 0;                                                                 // Speed is reversed and multiplied by this number, when bouncing on a surface.

//has_player_bounce = true;                                                     // Whether or not this entity can bounce off other players. (Disabled on bounce.)
//player_bounce_damage = 0;                                                     // How much physics damage to inflict when bouncing off of an enemy player. (Can only happen once.)
child_hitbox = noone;                                                           // Hitbox parented to this entity.

sna_can_push = false;                                                           // Can this entity push other entities?
sna_can_be_pushed = false;                                                      // Can this entity be pushed by other players and entities?


//------------------------------------------------------
// Statistics
//------------------------------------------------------
sna_life = -1;                                                                  // How much LIFE this entity starts out with. -1 for no LIFE system.		Triggers hook function when it reaches 0.
sna_life_max = -1;

sna_psyche = -1;                                                                // How much PSYCHE this entity starts out with. -1 for no PSYCHE system.	Triggers hook function when it reaches 0.
sna_psyche_max = -1;

dmg = 0;
dmg_threshold = -1;                                                             // How much damage this entity can take, before triggering the damage threshold hook. -1 for no damage effect.


//------------------------------------------------------
// Pickup Settings
//------------------------------------------------------
is_pickup = false;														        // Can this entity be picked up?
pickup_item_idx = 0;											                // Item index that this pickup relates to.
pickup_gives_item = false;										                // True/False; Does this pickup give the player the item? (False for ammo boxes, and silencers.)
pickup_given_ammo = 0;										                    // How much ammo should this pickup give?
pickup_given_suppressors = 0;						                            // How many suppressors should this pickup give?
pickup_fill_mag = false;											            // Should this pickup fill the weapon's magazine? (True for weapon pickups. False for ammo boxes.)

pickup_lock_time = -1;                                                          // If the pickup can't be picked up because of full ammo, this time is set to the current time.
pickup_lock_fade_legnth = 90;                                                   // How long it takes for the lock text to fade.

pickup_collected = false;                                                       // Is this entity collected?
pickup_collected_time = -1;                                                     // The time this entity was collected at.
pickup_collected_fade_legnth = 90;                                              // How long it takes for the pickup text to fade. Destroys the entity when the timer is exceeded.


//------------------------------------------------------
// Grenade Settings
//------------------------------------------------------
gren_fuselength = -1;                                                           // How long the fuse lasts before triggering the explode hook. -1 for no fuse.
gren_explosion_fx = 1;                                                          // The explosion effect to draw. 1 for no effect.
gren_explosion_hbox = noone;                                                    // Explosion hitbox index. (Index from nspecial.gml. Set to "noone" for no hitbox.)
gren_explosion_hbox_friendly = noone;                                           // Friendly fire explosion hitbox index. (Index from nspecial.gml. Set to "noone" for no friendly fire hitbox.)
gren_explosion_earshot = noone;                                                 // Maximum which the explosion can be heard.
gren_explodeonimpact_timer = -1;                                                // How long while holding this before the grenade explodes on impact. -1 to never explode on impact.
gren_explodeonimpact = false;                                                   // Should colliding with a surface trigger the explosion hook?
gren_explosionwarning = false;                                                  // If true, flash the entity to indicate that it will explode soon.
gren_is_exploding = false;                                                      // Is the grenade currently exploding?


//------------------------------------------------------
// Plantable Settings
//------------------------------------------------------
plnt_play_plant_sfx = false;                                                    // Does this entity play planting noises when grounded?
plnt_sticky = false;                                                            // Can this plantable be stuck to objects?
plnt_detonatable = false;                                                       // Can this plantable be detonated?
plnt_is_detonated = false;                                                      // Can this plantable currently detonated?
plnt_stick_target = noone;                                                      // The object this entity is stuck to.
plnt_stick_off_x = 0;
plnt_stick_off_y = 0;



//------------------------------------------------------
// Sound Settings
//------------------------------------------------------
sfx_ready = noone;
sfx_throw = noone;
sfx_bounce = noone;
sfx_on_hit = noone;
sfx_gren_explode = noone;


//------------------------------------------------------
// Smoke Settings
//------------------------------------------------------
smoke_slide_angle = 0;                                                          // The angle the smoke should slide at.
smoke_front_lyr_parent = noone;                                                 // The parent entity that draws the front smoke layer.
smoke_back_lyr_child = noone;                                                   // The child entity that draws the back smoke layer.
smoke_startup_time = 60;                                                        // How many frames until the smoke turns opaque.


//------------------------------------------------------
// Optimization Settings
//------------------------------------------------------
cleanup_time = -1;
cleanup_distance = -1;


//------------------------------------------------------
// Late Variables
//------------------------------------------------------
free_old = free;
hsp_old = hsp;
vsp_old = vsp;



// DELETEME: Test Velocity
//hsp_float = 5 * player_id.spr_dir;
//vsp_float = -10;