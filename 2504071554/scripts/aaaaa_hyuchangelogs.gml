/*
hi! it's me, hyuponia halfmirage
i will note changelogs here

- parry animation in init.gml has been slightly tweaked
- walljump animation works properly now (init.gml changed, wall cling handled in animation.gml)
- airdodge animation in init.gml has been slightly tweaked
- dashturn animation has been tweaked with code (animation.gml)

- charge storage is basically there now, it just lacks the functionality (at the moment of writing this) (update.gml)

- changed around nspecial windows, sorry ;-; both for technical reasons and slight animation timing changes
- on the other hand, nspecial might just be working now! wow!
- increased the "send" version of nspecial's endlag a bit

- changed the up tilt overhead GUI thing (char_height) code to use the undocumented "hud_offset" variable, which automatically resets (and fades out when it ends!) (attack_update.gml)
- i also changed up the windows/timing where the gui shift happens. sorry! (attack_update.gml)

- uspecial works now!

- i put dspecial's origin points (load.gml)
- i put dspecial's basic logic (attack_update.gml & dspecial.gml)

- i changed dashstart values to be the same with dash, sorry! (init.gml)


--

- sorry i shifted fspecial winged ending frame location by few pixels so that it lines up with actual air idle ;-;
- fspecial attack. no cancels yet
- fspecial parry teleport. no cooldowns yet
- did the same thing i did to ustrong, for dstrong. sorry ;-;
- fspecial now has a strong cancel!
- added invincibility to parry teleport. length can be adjusted
- added the most temporary hud ever
- properly made strong storage stackable, and consumable

--

- i made fspecial attack hitbox a bit bigger. uh
- fspecial dodge cancel is more invincible
- dspecial gives storage now
- fspecial retains velocity a bit now
- you can now turn around fspecial strong cancel
- fspecial attack hit can now be cancelled into nspecial with synergy
- fspecial attack hit can now be cancelled into fspecial with synergy
- fspecial attack hit can now be cancelled into other specials as well
- changed fspecial mirage movement. in turn, its also been split into two halves.
- you can cancel fspecial first half into specials now!
- fspecial-first-half-to-uspecial "uspecial mirror" has been implemented proper as well!
- nerfed nspecial speed and distance btw. when we eventually do cooldown that'll be the proper nerf
- added sound to dattack startup.
- implemented dair theoretical behaviour (no hitbox yet).
- tweaked jab speed and hitpause (sorry!)

*/

/* Thank you so much ^^ */

/*
aye!

more changelogs 2021/05/29

- fspecial hurtbox fixed [fspecial.gml]
- fixed the hurtbox when storing strong charge! [update.gml]
- implemented the hud!!! [draw_hud.gml]
- implemented cooldowns [init.gml & attack_update.gml]
- ftilt grab is working! [ftilt.gml & hit_player.gml & sattack_update.gml & update.gml]
- gave nspecial a knockback growth. [nspecial.gml]
- utilt new sounds and hit spark [utilt.gml]
- gave utilt proper landing lag [attack_update.gml]
- increased utilt startup by 1 frame (6 -> 7) [utilt.gml]
- dair, when on ground, can now be cancelled into dattack2. [attack_update.gml]
- dattack2 endlag increased a little [dattack.gml]
- re-organized jab windows and speeds a bit (sorry!) [jab.gml]





*/

/*Helo!!!

New changes:

- max_djumps reduced to 2
- implemented Nair, Uair, Bair
- implemented your Fstrong
- moved around some values with dattack, if it still feels weird feel free to change it back, sorry ;-;
- 