/*

MUNOPHONE OPERATION MANUAL

written by Muno



--------------------------------------------------------------------------------

SECTION 01:
Table of Contents & Preamble

--------------------------------------------------------------------------------

- 01: Table of Contents & Preamble
- 02: Installation
--- 02a: Creating a New Character
--- 02b: Importing to an Existing Character
- 03: Creating Tips, Patch Notes, & Abouts
- 04: Frame Data Guide & HG_MUNO_ / AG_MUNO_
- 05: Making Cheat Codes & Referencing Phone Settings
- 06: Utility Variables
- 07: Character Compatibility

PREAMBLE:

This guide assumes that you know how to code a Rivals character. If you're
unfamiliar with GML or the basic structure of RoA modding, you may not be able
to get the most out of this character template. If you DO really know what
you're doing, then perhaps SECTION 03 and onwards could be skipped until you
stumble upon something that you don't understand...

With that said, if you don't know how to code, you can still get something out
of this template by just editing the existing code. It's not much harder than
making a character in the first place, so you might as well give it a shot.

If you have any questions, you can ping me (Muno) in whichever server is most
convenient:
- discord.gg/yhchvBB   Muno's personal discord
- discord.gg/qVKzVuZ   Rivals Extended Workshop
- discord.gg/RoA       The official RoA discord

Steam comments are fine if you can't use discord, but I don't check them
frequently.

*/



/*

--------------------------------------------------------------------------------

SECTION 02a:
Installation: Creating a New Character

--------------------------------------------------------------------------------

This is actually really simple, and it's the same steps used to make a new
character from the REAL Sandbert. Even if you know how to do that, though, keep
reading, since there are other important steps.

1. Navigate to

Program Files (x86)/Steam/steamapps/workshop/content/383980

and find Sandbert with a Phone's folder. The folder's name is the numbers at the
end of the mod's Steam URL.

2. Copy it to

Appdata/Local/RivalsofAether/workshop/

and feel free to change the name of the folder.

3. Open the scripts folder. Delete init.gml. Rename init_good_stats.gml to
init.gml. (This starts you off on the right foot with stats balancing!)

4. Play your character on the Training Town stage in Practice Mode to ensure
that it works.

5. That's pretty much it! All of the user-edited content for the MunoPhone is
located in user_event15.gml and attacks/_phone.gml; don't touch any of the other
"user_event" files or lines of code.

Keep reading to SECTION 03 and onward for info on how to actually configure all
of the options for the MunoPhone.

For more information on how to make a Rivals character in general, see
https://pastebin.com/HdBYheUr for a birds-eye overview, and ask around in the
troubleshooting channels of the Extended Workshop or RoA discord.

*/



/*

--------------------------------------------------------------------------------

SECTION 02b:
Installation: Importing to an Existing Character

--------------------------------------------------------------------------------

This is a LITTLE more involved than making a character from scratch - but barely
so.

1. Copy these files into your character, putting them in the same folders as
they're in for Sandbert:
- all user_eventX.gml files
- attacks/_phone.gml

2. Add the following lines of code to your character in the specified places:
- user_event(12);   at the bottom of post_draw.gml
- user_event(12);   at the bottom of css_draw.gml
- user_event(13);   at the bottom of set_attack.gml
- user_event(14);   at the top    of update.gml
- user_event(14);   at the bottom of init.gml

NOTE: "at the bottom" means BEFORE any #define lines.

3. Play your character on the Training Town stage in Practice Mode to ensure
that it works.

4. That's pretty much it! Keep reading for instructions on how to actually set
up the MunoPhone's apps for your character, as well as other useful things that
the template bundles in.

*/



/*

--------------------------------------------------------------------------------

SECTION 03:
Creating Tips, Patch Notes, & Abouts

--------------------------------------------------------------------------------

Abouts are actually very simple! In the Abouts section of user_event15.gml, you
can edit the example entries - the titles AND text. You can delete one of them,
delete BOTH of them, copy-paste the lines to add additional ones, whatever.

ex.

initAbout("TITLE", "CONTENTS");

Use this to provide credits or plug your online presence.



Tips and Patch Notes use a more involved format, which allows you to do many
more things. Patches act the same as Tips (except the word "Tip" is replaced
with "Patch" in the function names), so I'm going to just say "Tips" but imply
that the same applies to Patch Notes. (except for one thing that i'll note)

As with the Abouts, you can add or delete Tips by just having more or fewer of
the same lines. However, the structure is a bit different:
- initTip("TITLE") defines a new Tip.
--- for Patches, instead use initPatch("VERSION NUMBER", "DATE")
- initTipWords("CONTENTS") defines a new paragraph within the most recently
  defined Tip, so you can have multiple paragraphs per Tip.

ex.

initTip("TIP 1 TITLE");
initTipWords("TIP 1, PARAGRAPH 1");
initTipWords("TIP 1, PARAGRAPH 2");
initTipWords("TIP 1, PARAGRAPH 3");

initTip("TIP 2 TITLE");
initTipWords("TIP 2, PARAGRAPH 1");
initTipWords("TIP 2, PARAGRAPH 2");
initTipWords("TIP 2, PARAGRAPH 3");

If you replace initTipWords() with initTipWords_ext(), you can access more
options for your text, such as color, alignment, and several preset "gimmicks"
like shaking and scrolling text. See user_event15.gml for full documentation.

ex.

initTip("TITLE");
initTipWords("NORMAL TEXT");
initTipWords_ext("RED, RIGHT-ALIGNED TEXT", fa_right, c_red, 0, 0);

You can also have initTipImage(), which has its own arguments (see event15).

ex.

initTip("TITLE");
initTipWords("TEXT");
initTipImage(player_id.spr_jab, 0, fa_center, 1, c_white, 0);

IMPORTANT NOTE: You cannot use sprite_get("sprite_name") here. Instead, you must
save the sprite_get() to a variable, then reference THAT variable inside the
Tip's initialisation. This is because the character itself, not the MunoPhone
object, is required to call sprite_get().

An example of this can be found immediately above the Tips section, for the
projectile from Sandbert's NSpecial. The default sprites for a character already
have variables like this set up in user_event14.gml.

initTipImage_ext() is for cropping images, so that only a part of the sprite
will appear in the Tip. This is useful if you have lots of empty space around
your character sprites, like I always do.

That should be all of the basics. Information on several more features of the
Tips app, such as some advanced formatting options, can be found in
user_event15.gml.

*/



/*

--------------------------------------------------------------------------------

SECTION 04:
Frame Data Guide & HG_MUNO_ / AG_MUNO_

--------------------------------------------------------------------------------

The Frame Data Guide is the most advanced part of the MunoPhone ecosystem...
from the perspective of me, the MunoPhone lead developer, that is. For YOU, it's
remarkably simple, thanks to my and Archy's hard work. If you want to see the
extent of it, just look at user_event12.gml...

The system automatically pulls the frame data and hitbox values from all of your
character's attacks, including any extra attacks you've added beyond the normal
ones. Optionally, you can also include a Stats page, AND a page for documenting
whatever information you want (e.g. numbers related to a character gimmick). For
more on that, see user_event15.gml.

Now, the automatic data parser is pretty thorough and fairly accurate. But
inevitably, some Workshop characters will have weird setups due to an inventive
move gimmick, or there might be a hole in OUR code. If it's the latter, report
the bug and we'll try to fix it for the next release!

Either way, you as a character dev have ways to correct mistakes made by the
parser. Using various AG_ and HG_ indexes, you can override or otherwise guide
the frame data gatherer's results. Just go into the attack's .gml file, and add
lines with the custom AG_s and HG_s. You should feel right at home if you've
worked on a character before.

ex.

set_attack_value(AT_JAB, AG_MUNO_ATTACK_EXCLUDE, 1);
set_window_value(AT_JAB, 1, AG_MUNO_WINDOW_EXCLUDE, 1);
set_hitbox_value(AT_JAB, 1, HG_MUNO_HITBOX_EXCLUDE, 1);

Below is a listing of EVERY custom index present in the MunoPhone and what it
does. Not only are there ones for correcting the frame data guide, but there are
ALSO a lot of miscellaneous utility ones. Pretty cool, right?



General Attack Indexes - frame data correction

AG_MUNO_ATTACK_EXCLUDE
- Set to 1 to exclude this move from the list of moves
AG_MUNO_ATTACK_NAME
- Enter a string to override the move's name in the attack list
AG_MUNO_ATTACK_FAF
- Enter a string to override FAF
AG_MUNO_ATTACK_ENDLAG
- Enter a string to override endlag
AG_MUNO_ATTACK_LANDING_LAG
- Enter a string to override landing lag
AG_MUNO_ATTACK_MISC
- Enter a string to OVERRIDE the move's "Notes" section, which automatically
  includes the Cooldown System and Misc. Window Traits found below
AG_MUNO_ATTACK_MISC_ADD
- Enter a string to ADD TO the move's "Notes" section (preceded by the auto-
  generated one, then a line break)

P.S. Adding Notes to a move is good for if a move requires a long explanation of
     the data, or if a move overall has certain behavior that should be listed
     such as a manually coded cancel window

General Window Indexes - frame data correction

AG_MUNO_WINDOW_EXCLUDE
- 0: include window in timeline (default)
- 1: exclude window from timeline
- 2: exclude window from timeline, only for the on-hit time
- 3: exclude window from timeline, only for the on-whiff time
AG_MUNO_WINDOW_ROLE
- 0: none (acts identically to AG_MUNO_WINDOW_EXCLUDE = 1)
- 1: startup
- 2: active (or IN BETWEEN active frames, eg between multihits)
- 3: endlag
AG_MUNO_ATTACK_USES_ROLES
- Must be set to 1 for AG_MUNO_WINDOW_ROLE to take effect

P.S. If your move's windows are structured non-linearly, you can use
     AG_MUNO_WINDOW_ROLE to force the frame data system to parse the window
     order correctly.

General Hitbox Indexes - frame data correction

HG_MUNO_HITBOX_EXCLUDE
- Set to 1 to exclude this hitbox from the frame data guide
HG_MUNO_HITBOX_NAME
- Enter a string to override the hitbox's name, very useful if the move has
  multiple hitboxes

HG_MUNO_HITBOX_ACTIVE
- Enter a string to override active frames
HG_MUNO_HITBOX_DAMAGE
- Enter a string to override damage
HG_MUNO_HITBOX_BKB
- Enter a string to override base knockback
HG_MUNO_HITBOX_KBG
- Enter a string to override knockback growth
HG_MUNO_HITBOX_ANGLE
- Enter a string to override angle
HG_MUNO_HITBOX_PRIORITY
- Enter a string to override priority
HG_MUNO_HITBOX_GROUP
- Enter a string to override group
HG_MUNO_HITBOX_BHP
- Enter a string to override base hitpause
HG_MUNO_HITBOX_HPG
- Enter a string to override hitpause scaling
HG_MUNO_HITBOX_MISC
- Enter a string to override the auto-generated misc notes (which include misc
  properties like angle flipper or elemental effect)
HG_MUNO_HITBOX_MISC_ADD
- Enter a string to ADD TO the auto-generated misc notes, not override (line
  break will be auto-inserted)

Cooldown System - this will automatically handle a move's cooldown for you!

AG_MUNO_ATTACK_COOLDOWN
- Set this to a number, and the move's move_cooldown[] will be set to it
  automatically. Set it to any negative number and it will refresh when landing,
  getting hit, or walljumping. (gets converted to positive when applied)
AG_MUNO_ATTACK_CD_SPECIAL
- Set various cooldown effects on a per-ATTACK basis.
- 1: the cooldown will use the phone_arrow_cooldown variable instead of
     move_cooldown[attack], causing it to display on the overhead player indicator;
     multiple attacks can share this cooldown.
- 2: the cooldown will use the phone_invis_cooldown variable instead of
     move_cooldown[attack], which doesn't display anywhere (unless you code your
     own HUD element) but does allow you to share the cooldown between moves.
AG_MUNO_WINDOW_CD_SPECIAL
- Set various cooldown effects on a per-WINDOW basis.
- 1: a window will be exempted from causing cooldown. It is HIGHLY RECOMMENDED
     to do this for any startup windows, so that the cooldown doesn't apply if
     you're hit out of the move before being able to use it.
- 2: a window will reset the cooldown to 0.
- 3: a window will set cooldown only if the has_hit variable is false, and set
     it to 0 if has_hit        is true.
- 4: a window will set cooldown only if the has_hit_player variable is false,
     and set it to 0 if has_hit_player is true.

Misc. Window Traits

AG_MUNO_WINDOW_INVUL
- Apply invulnerability during the window.
- -1: invulnerable
- -2: super armor
- above 0: that amount of soft armor

Misc. Hitbox Traits

HG_MUNO_OBJECT_LAUNCH_ANGLE
- Override the on-hit launch direction of compatible Workshop objects, typically
  ones without gravity. For example, Otto uses this for the ball rehit angles.
  Feel free to code this into your attacks, AND to support it for your own
  hittable articles.



...That was a lot.

If you're a big brain coder and have made your OWN custom AG_s or HG_s, there's
a chance that their indexes overlap. To resolve this, see user_event14.gml.

The only other thing to say is that the frame data guide is MUCH friendlier if
you follow good practices when programming windows and hitboxes. Here are some
guidelines, which you should follow in general (not only because of the
MunoPhone):
- Startup, active frames, and ending lag should be segregated by distinct breaks
  in windows. If a move is active on frames 4-10, then the active window should
  last 7 frames after a 3 frame startup window.
- Each hitbox should have its OWN window, and gaps between hitboxes should
  correspond to gaps between active windows.
- Whifflag should be applied to ALL endlag windows, except for moves which lack
  any melee hitboxes... or Specials, which traditionally do not have whifflag.
- Simplify windows as much as possible while following the above guidelines.
  Don't add more windows than you need to.

*/



/*

--------------------------------------------------------------------------------

SECTION 05:
Making Cheat Codes & Referencing Phone Settings

--------------------------------------------------------------------------------

You can make cheat codes for your character! To do this, go to event15 and just
edit or copy-paste the example cheat codes. The arguments are:

initCheat(A, B, C, D, E);
- A: the name of the cheat
- B: the "backstage name" of the cheat
- C: an array of possible values it can have
- D: an array of names for each value in C
- E: a longer description of the cheat

To reference a cheat in your code, reference phone_cheats[<backstage name>]. It
will contain the currently-selected value (from argument C).

ex.

if (phone_cheats[cheat_more_djumps]){
    max_djumps = 100;
}
else{
    max_djumps = 1;
}

or

max_djumps = phone_cheats[cheat_more_djumps];

etc.



Similarly, you can reference the MunoPhone's own settings, though you aren't
meant to ADD any. The array is called phone_settings[], and both it and the
backstage name variables are stored inside the phone object, not the player
object like with cheats.

You can view all of the settings and their backstage names in event14. The most
useful one is fast vs fancy graphics, which affects some phone UI elements but
can also be used by your char's more resource-intensive features, to improve
performance on weaker computers. Its value is 0 if fancy graphics are being
used, and 1 for fast graphics.

ex.

if !(phone.phone_settings[setting_fast_graphics]){
    draw_sprite(spr_idle, 0, x, y);
}

Not only do fast graphics turn on when the user changes the phone setting, but
it ALSO turns on if the framerate ever drops below 60 FPS - except this won't
happen if the phone is open. If you want to disable this automatic fast-graphics
switcher, set phone.dont_fast in event15.

*/



/*

--------------------------------------------------------------------------------

SECTION 06:
Utility Variables

--------------------------------------------------------------------------------

In addition to its core functionality, the MunoPhone comes bundled with other
utilities as well. Here are some handy variables that you can reference in your
code:

Set at the start of the match (event14):
- inited: is true once all the initialisation code has been run; variable does
    not exist before that point.
- playtest: is true if you're in playtest, is false if not.
- practice: is true if the CPU action isn't "Fight" and you're not in playtest,
    is false otherwise. (NOTE: gets set to false when the player turns off the
    MunoPhone)
- darkened_player_color: a darkened version of your player slot color (P1 red,
    P2 blue, etc).
- blastzone_r / blastzone_l / blastzone_t / blastzone_b: accurate x/y positions
    of the stage blastzones. (useful for killing projectiles o r articles if
    they travel offscreen, etc)
- spr_animation_name: loads of variables which hold sprite_get()s for the basic
    roa sprites. (useful for autocompleting the sprite names in GMEdit, or for
    referencing these sprites from outside of the player object)

Set every frame (event12):
- attacking: is true if your state is the attack_ground or attack_air state,
    false if not. (useful shorthand for checking "am i attacking")
- window_end: the last frame of the current attack window, accounting properly
    for whifflag; only updated while attacking is true. (useful for attack logic
    that needs to run at the END of a window; e.g.
    if (window_timer == window_end))

*/



/*

--------------------------------------------------------------------------------

SECTION 07:
Character Compatibility

--------------------------------------------------------------------------------

I'm NOT going to explain all of the compatibilities here, only my own. It's
already enough work adding them to the template...

To flag your character as having or not having a compatibility, just change the
variables in event15 to 1 or 0. Simple as that. The code for each one will ONLY
run if its has_ variable is set to 1. Also, its CSS badge will only show up if
its var is set to 1. Hold 0 on the CSS to see all of them for a character.

Trummel's codecs are the only one that really needs explaining. The format is
similar to Tips, you can have more than 1 if you want. In VS mode, the first
codec will always be used - but in Practice Mode, Trummel can select any of
them from your character.

The main thing to talk about is page gimmicks. Gimmicks are a special effect
that happens when the page loads, e.g. a laugh track plays or the page gets
instantly skipped. Here's the standard format for using them:

initCodec(0);
initCodecPage(SPK_TRUM, 0, 0, "woag");
var h = GIM_LAUGH_TRACK;
initCodecPage(SPK_ALTO, 0, h, "This page has a laugh track.");
var h = GIM_LAUGH_TRACK * GIM_SKIP;
initCodecPage(SPK_ALTO, 0, h, "This page has a laugh track AND gets skipped.");

For nicer formatting, the gimmick handles are stored to a var, and then that
gets used as the argument for initCodecPage(). To use more than 1 gimmick on a
single page, you have to MULTIPLY them together.

OH yeah, you can also define custom speakers. To get the sprite to fit, you can
edit the example speaker sprite found in the sprites folder. Each expression has
2 animation frames; the idea here is the same as Old Trummel, so read his guide
at https://pastebin.com/g31b9yPq

...And in general, a lot of this code is similar to what's found in Trummel's
user_event1.gml (which is where his local codecs are created). So check that out
for more usage examples.

For Otto's compatibility, you can just edit the example bobblehead sprites and
be done with it. If you want it to animate, just make it a strip instead of a
single frame.

...Do I really need to explain Steve's? It's just text.

*/




































                                                                          //woag