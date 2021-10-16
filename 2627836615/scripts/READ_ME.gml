/*
RIVALS RC: BASE VERSION 1.0

Hello! If you're reading this, you probably want to make your own track or kart! This file will detail everything you need to know about that.

This is pretty extensive, but you don't need to memorize all of it! Feel free to reference this as much as you need to.
The sections of this file are, in order:
-How to play
-Protips for racing
-Making your own kart
-Making your own track
-Updating your track
-Protips for track creating
-Standard sizes
-Detailed article references

###########################################################

HOW TO PLAY

###########################################################
There are 2 ways to control your kart! This is determined by your Tap Jump setting.

If Tap Jump is off, use Left + Right to steer left and right.
If Tap Jump is on, simply tilt the direction you want to go and your kart will steer to point in that direction.

Regardless of which you pick, you can also do these:
Attack - Accelerate!
Parry - Press to parry, hold to drift
Attack - Use a powerup, if you have one. You do a spinkick attack if you don't.
Special - Spinkick (still works even with a powerup)
Taunt - Honk!

You may want to set up a separate profile with different controls to make racing more comfortable, but any control scheme should be.

Grabbing Abyss Orbs on the track builds up a boost bar. Drift to spend these orbs on a strong boost! 



###########################################################

PROTIPS FOR RACING

###########################################################
Parry walls to tech off of them! You won't lose any speed like this and may actually be faster than cutting some corners normally!

Using a projectile powerup at the start of a spinkick fires it backwards! You can gallop Special -> Attack to do this easily.

If you aren't accelerating when you stop drifting, you won't spend any of your boost bar. You can use this to save up more boost for a better spot!

Races are pretty short! The tracks are small and the karts are fast. Rivals's standard stock count is 3 stocks, but I'd recommend setting that to 5 stocks for 5 laps per race.



###########################################################

MAKING YOUR OWN KART

###########################################################
Karts are purely cosmetic;  there's no stat differences to keep track of. That way, you won't have to worry about your favorite character having terrible kart stats.
Kart sprites are typically 12x12, with a 6x6 collision mask in the middle. It's fine if your kart is bigger than the collision mask; it's intentionally very small to make collision forgiving.

Karts are drawn via "sprite stacking": It draws every frame of the sprite strip at the same time, with each frame being offset slightly upwards. This makes the kart look 3D!
Each frame of the sprite should look be a cut layer of the kart, with later frames being higher up. You can look at the sprites folder of this track to look at how the base cast's karts look.

The first frame is always the shadow of the kart. This is always pure black with an alpha of 35. This first frame is usually hidden under the second frame, but will show up if the kart goes airborne.


There's a few variables your character should have to load the kart correctly.

kart_sprite - self-explanatory. the sprite index to use for the kart.

kart_frames - how many frames it has. This will divide the sprite sheet; if the sprite is 20 frames long and kart_frames is set to 4, it will divide it into 5-frame chunks.

kart_anim_speed - the speed with which to animate the kart.

kart_anim_speed_scaling - How fast the animation should scale up with how fast you're going.

kart_engine_sound - The sound index to use for the kart's engine. Setting this to 1 through 4 will use the pre-made engine noises.

kart_drift_spr - The hit fx to spawn when drifting. Set this to 0 for nothing, 1 for car tires, 2 for bike tires, and 3 for hovercraft. You can also use hit_fx_create for a custom one.

	
###########################################################

MAKING YOUR OWN TRACK

###########################################################

Here's the steps you need to make to create your own track.

-----------------------------------
THE TL;DR:
-----------------------------------
-Draw your track and set it as "ground.png".
-Draw walls that appear over players and set it as "fg2.png".
-Set "track_hurt.png" to the collision mask, and change its offsets in "user_event1.gml".
-Place a collision mask (article3) and set it to be a Solid Block under OBJ TYPE.
-set the finish line anchorpoint (article10) on the inside edge of the finish line, and the finish line's outer edge (article9) on the outside.
-Place karts (article1) behind the finish line and set their ARG0s to 1 through 4.
-Place the camera (article2) in the center of the track.
-Place orbs (article4) and powerups (article5) around the track, and set the powerup ARG3s to be the same as nearby ones to group them.

IF YOUR TRACK HAS A BRIDGE:
-Draw that part and set it as "fg1.png".
-Set "track_overlay_hurt.png" to the collision mask with the bridge on it, and change its offsets in "user_event1.gml".
-Place another collision mask (article3) and set it to be a Platform in OBJ TYPE.
-Draw barriers of block terrain and platform terrain across the track to determine when a kart should move to the ground and bridge layers.
-Articles that spawn on the bridge layer (karts, powerups, etc) should be set to a negative depth value.

IF YOU WANT A BATTLE MODE ARENA INSTEAD OF A RACE TRACK:
-Delete article10, which is the inside finish line anchor. Make sure article2 is still placed, though.

-----------------------------------
STEP 1 - Draw it
-----------------------------------
The most fun part! Draw the track in any image editor you want. You should use a brush that's at least 35 pixels big; any smaller will make tracks way too narrow and not really fun.
Track sizes are usually slightly larger than 480 x 270, and no bigger than 960 x 540. (You can make them bigger, but it'll be a VERY large track.)

"ground.png" is the normal ground layer, while "fg1.png" is the bridge layer. "fg2.png" will always appear above karts even on bridges.

-----------------------------------
STEP 2 - Set up the collision mask and layers
-----------------------------------
The easiest way to make the collision mask is to flood fill the entire track with one color, flood fill everything else with another color, and then delete the track's color so it's transparent.
Save this as "track_hurt.png" in the sprites/articles folder. Bridge layers use "track_overlay_hurt.png" instead.	

You should set any track collision masks inside of "user_event1.gml", so it won't get overridden in template updates. 

Article3 is the typical article used for collision masks. Setting this to Solid in OBJ TYPE makes it the ground layer collision, while setting it to Platform makes it the bridge layer collision.

Setting a kart, powerup or other article to a negative depth will force it to spawn on the bridge layer.
Drawing terrain will act as layer transitions. If something touches a drawn platform, it transitions to the bridge layer. If it touches a drawn solid block, it'll transition to the ground layer.

If you need help aligning track_hurt.png with the track images, set ARG0 in article3 to 1. This will make it visible when playtesting. From there you can trial and error sprite offsets in user_event1.gml until it's aligned.

-----------------------------------
STEP 3 - Set up the finish line, karts and camera
-----------------------------------
Article10 is the anchor point of the finish line. Technically, karts only need to drive a full circle around this point to complete a lap. (Walls usually make this more complicated.)
Place Article10 on the inner edge of the finish line, inside a wall. Then, place Article9 on the outside edge, also inside a wall. Driving between these two points will count as crossing the finish line.
It should look something like this:

    /        /
   |        |
 9 |▄▀▄▀▄▀▄▀|  10
   |        |
   |        |   
   \        \
Then, place 4 karts behind the finish line. ARG0 in a kart is its player number; set these to 1 through 4.
At the start of the race, karts will automatically face the finish line and be considered behind it. If you want to reverse the track, just place the karts on the other side of the finish line.  
 

Article2 is the camera. Place it around the center of the whole track. Doesn't need to be exact.
The camera by default will move between this centerpoint and player positions. ARG0 in this Article2 determines how free or locked the camera is; -100 is completely free cam, and 100 is completely locked on the centerpoint. Anything between these will make it weigh freecam and locked cam more heavily.

-----------------------------------
STEP 3 - Place powerups and orbs
-----------------------------------
Another fun part! Place groups of powerups at key parts of the track to induce chaos and turn the tables.
Article5 is a powerup crystal. Place these anywhere you want. If you want to position them more precisely, ARG0 and ARG1 are the exact pixel offsets of their placement.
By default, they'll give you a random powerup, with stronger ones being given to losing players. Changing ARG2 will force it to always give a certain powerup.
Powerup crystals also come in Groups. ARG3 is the group one is in. If the leader collects a powerup, all powerups in the same group will give losing players stronger powerups. Generally, if a powerup is close to another one, they should be in the same group.

Collecting orbs will give the end of your next drift a turbo boost! Place these in spots you want players to drive; shortcuts, slower routes, inside or outside edges of turns, wherever!
Similar to powerups, ARG0 and ARG1 determine the exact pixel offsets of their placements.

-----------------------------------
STEP 4 - AI Waypoints
-----------------------------------
While not really necessary, placing down AI waypoints will make AI karts get stuck less.
Article11 is an AI waypoint. Place these anywhere you notice karts getting stuck or just acting stupid (like driving straight through rough terrain). They don't have to cover the entire track; simpler areas are covered by the AI's wall avoidance.
Waypoints cast an invisible "cone of vision", in a sense. If an AI kart drives into this cone, they will start driving in the waypoint's direction until it drives out of this cone.
Set ARG0 to the distance of this cone and ARG2 to the width. Note that this adds to a base width of 45. If you set ARG2 to 45, it essentially covers a half-circle behind the waypoint, since that's 90 degrees in both directions.
ARG1 is the direction the waypoint is facing. The cone of vision is cast behind it, and AI karts will drive in this direction. 0 is right, 90 is up, etc.

If you set ARG1 to 90, the cone and direction will look something like this:

		^^
	   (11)
	   /  \
	  /    \
	 /______\
	 
AI karts will attatch to the waypoint if they fall inside the cone and start driving to angle 90, which is up.
Waypoints will be visible by default so you can visualize where the vision cones actually are. Set the waypoint's Alpha to 0 to make them invisible.
-----------------------------------
STEP 5 - Custom Hazards
-----------------------------------
Feel free to add extra article scripts or even change existing ones for your tracks! You can make karts enter a variety of states for hazards to stun them. (or help them...)

If you're coding in custom hazards, note that the states PS_PRATFALL and PS_DEAD will make them respawn. You can place Article7 around dangerous parts of your track, and karts that passed by one will respawn at it if they're destroyed or fall off.
ARG0 and ARG1 are its exact pixel offsets for extra precision, and ARG2 changes the distance a kart needs to be from it to count as passing it. (technically, the distance is 32 + ARG2.)

The available kart states are:
PS_IDLE - Normal driving.
PS_TUMBLE - Hit by something. Temporarily spins out and jumps up. Could potentially jump over something.
PS_PRATLAND - Slipped on a puddle. Turns them sideways in the last direction they steered and stuns for a bit.
PS_FROZEN - Hit an ice puddle! Freezes them in place for a second.
PS_DASH - Went through a tornado! Forces them to speed up for a bit.
PS_ATTACK_AIR - ZAP! A massive boost forward, zapping any players in the way, forcing them into PS_TUMBLE.
PS_ROLL_FORWARD - Kragg Fspecial. Forces them to be at a certain speed, giving them incredibly high friction.
PS_PRATFALL - Fell off the track! Sets them to PS_RESPAWN after a second.
PS_DEAD - Wrecked! Sets them to PS_RESPAWN after a second.
PS_RESPAWN - Forces them to the last checkpoint or finish line they passed.
PS_ATTACK_GROUND - Spinkick! Usually not controlled by any hazards.

-----------------------------------
STEP 6 - Optional Battle Mode
-----------------------------------
Want your track to be a battle arena instead of a racetrack? Simple! Just delete any placed Article10s, which is the inside finish line anchorpoint.
If none of those are placed anywhere, the Camera article (article2) takes over as the battle mode tracker. It will set each player's HP to the Stocks setting and end the match when one player is left driving. If the stocks are set to 0, it instead tracks how many times each player has been hit, and the player with the lowest damage wins.
This also means your track can turn into a battle arena on Aether/Basic mode only by setting Article10 to only spawn on one of those settings.




###########################################################

UPDATING YOUR TRACK

###########################################################

If the template track updates, you can easily apply the update to your own track.

-In the template's Scripts folder, select every file EXCEPT FOR "user_event0.gml", "user_event1.gml", and "user_event2.gml". You can do this quickly by hitting Ctrl+A, and then clicking those two files while holding Ctrl to deselect them.
-Paste those into your own track's scripts folder, hitting Replace when it says the files already exist.

-In the template's Sprites\Articles folder, select every file EXCEPT FOR "track_hurt.png", "track_offroad_hurt.png" and "track_overlay_hurt.png". Again, hit Ctrl+A to select all, hold Ctrl, click those files to deselect.
-Paste those into your own track's sprites\articles folder, hitting Replace when it says the files already exist.

-In the template's sounds\sfx folder, select every file. No exceptions in this one, just hit Ctrl+A.
-Paste those into your own track's sounds\sfx folder, hitting Replace when it says the files already exist.

-Test and reupload!



###########################################################

PROTIPS FOR TRACK MAKING

###########################################################
If you have sections of track that are next to the finish line (say, rough terrain or a falloff pit), try to extend the finish line articles to include those too. That way, it'll still count a lap if you get thrown off course, and it'll be much less frustrating that way.

Make tracks easier than you think! Just because you can clear it after 50 tries while testing it doesn't mean it'll be fun for people that are racing on it for their first time. Constantly running into hazards is never fun no matter how good or bad you are. Other racers will be throwing powerups at you, too!

Place boost orbs in places that create interesting tradeoffs, like places that would normally be more inconvenient or slower to drive. Placing orbs on faster routes makes it kind of a given, but putting them on slower or more difficult routes throws more of a curveball when thinking where to go.



###########################################################

STANDARD SIZES

###########################################################
Karts use a canvas size of 12 pixels by 12 pixels, with a collision mask that's 6x6 in the center.

Minimum track width should be around 35 pixels long. A track width of 60 is very wide.

Track sizes are usually slightly larger than 480 x 270, and no bigger than 960 x 540. (You can make them bigger, but it'll be a VERY large track.)





###########################################################

ARTICLE REFERENCES

###########################################################

-----------------------------------
ARTICLE1 - Kart Spawnpoint
-----------------------------------
A kart! These will automatically spawn at a player's spawnpoint if you haven't placed one manually. If you need a kart's starting position to be somewhere the player's spawnpoint can't be, like outside the default box or beyond half-tiles, place these and it'll override it.
The direction you have to drive to complete a map is based on where they're placed. To reverse the direction, place them on the other side of the finish line. In the case of a battle map, they start facing Article2 instead, which is the centerpoint of the camera.

IMAGE = The player number of the car. Should be set to 0 through 3. It'll display the player number and HUD color so you can track it better.
ARG1 = X offset, in pixels. Use this to more precisely place a kart's starting position if you can't pinpoint it in the editor.
ARG2 = Y offset. Similar to the above, but vertical.

-----------------------------------
ARTICLE2 - Camera / Battle mode controller
-----------------------------------
The camera! Place this around the centerpoint of the track.
This also keeps track of Battle Mode stats if there's no finish line placed anywhere. It won't do anything else if there is a finish line.

ARG0 = The influence of the camera's centering. 100 means fully locked on the camera, and -100 is completely centered on the cars.

-----------------------------------
ARTICLE3 - Collision Mask
-----------------------------------
The collision mask. This should be a Solid Block under OBJ TYPE. It automatically sets its sprite index to "track_hurt.png" in the sprites folder.
If you want a bridge layer on your track, place a second one of these and set its OBJ TYPE to a Platform instead. This will set its sprite index to "track_overlay_hurt.png" instead.

To align your track's collision mask, change that sprite's offsets in "user_event1.gml". Don't use load.gml for this; otherwise updating the track will override the coords and mess everything up.

ARG0 = Visible toggle. Set this to 1 to make the collision mask visible during playtest, which will help for aligning it. Be sure to set it back to 0 before uploading your track!

-----------------------------------
ARTICLE4 - Boost orb line
-----------------------------------
A line of boost orbs! Collecting these store boost, and drifting spends these to give you a burst of speed once you let go of the drift button.

ARG0 = X offset, in pixels. Use this to more precisely place orbs if you can't pinpoint it in the editor.
ARG1 = Y offset. Similar to the above, but vertical.

ARG2 = Line count. Specifically, how many additional orbs it should create. Leaving this at 0 will just have the single orb, and the arguments below this won't matter.
ARG3 = Line distance. The distance, in pixels, between each orb. Probably just set this to 32.
ARG4 = Line angle. As usual with gamemaker's angles, 0 is to the right, 90 is up, etc.
ARG5 = Line curve. Adds this value to the angle each time an orb is created.

-----------------------------------
ARTICLE5 - Item Box
-----------------------------------
An item box!!!! agents of chaos!! Item boxes track who grabbed them first, giving players trailing behind better items.

IMAGE = Powerup type. Leave this at 0 to keep it randomized powerups, but if you want it to only give players a specific powerup, set it to 1 through 12.

ARG0 = X offset, in pixels. Use this to more precisely place items if you can't pinpoint it in the editor.
ARG1 = Y offset. Similar to the above, but vertical.

ARG3 = Group. Powerups placed near each other should be in the same group. Item boxes in the same group share progress, so even if the leading player grabbed a different box, players lagging behind will get better powerups as long as the box they grabbed was in the same group.

-----------------------------------
ARTICLE6 - Falloff zones
-----------------------------------
Causes any karts that drive over this to fall off the track and respawn. Will automatically be set to "track_falloff_hurt.png", or if it's on the bridge layer, "track_falloff_overlay_hurt.png".

ARG0 = Visible toggle. Set this to 1 to make the collision mask visible during playtest, which will help for aligning it. Be sure to set it back to 0 before uploading your track!

-----------------------------------
ARTICLE7 - Respawn point
-----------------------------------
If a player passes near this, they'll be brought back here if another hazard makes them explode or fall off.

ARG0 = The distance a kart needs to be at to count as passing this checkpoint. The effective distance is (32 + ARG0) in pixels.

-----------------------------------
ARTICLE8 - Rough Terrain
-----------------------------------
Slows down any karts that drive over this. Will automatically be set to "track_offroad_hurt.png", or if it's on the bridge layer, "track_offroad_overlay_hurt.png".

ARG0 = Visible toggle. Set this to 1 to make the collision mask visible during playtest, which will help for aligning it. Be sure to set it back to 0 before uploading your track!

-----------------------------------
ARTICLE9 - Finish Line Outer Edge
-----------------------------------
Marks the outer edge of the finish line. Really only used for Article10's reference, which has a more detailed description below. Both Article9 and Article10 should be placed on a track to create a finish line.

-----------------------------------
ARTICLE10 - Finish Line Inner Edge / Finish line controller
-----------------------------------
Marks the "centerpoint" of a finish line, so to speak. Karts need to drive a full circle around this article to complete a lap. Place this INSIDE the loop, in a wall.
When placing this, don't forget to also place Article9 on the other side of the finish line, in a wall. The invisible line between Article10 and Article9 is the line karts need to cross to complete a lap.

When karts spawn, they're always considered to be BEHIND the finish line. If you want to reverse the direction a kart needs to drive, just place them on the other side of the finish line.

-----------------------------------
ARTICLE11 - AI Waypoint
-----------------------------------
The AI in this isn't the smartest, and may need some guidance when just avoiding walls doesn't cut it. These waypoints will override their usual AI and make them drive straight towards it until they pass it.
Waypoints have an invisible "cone of vision". An AI will only drive towards (and past) a waypoint if they're in this cone. The ARGs below mostly deal with this.

ALPHA = Set this to 0 to make it invisible. Defaults to visible so you can visualize their effective area better.

ARG0 = Range. AI will only be considered inside a waypoint if the distance to the article is less than this.
ARG1 = Direction. The AI will drive towards a point past the actual article in this direction. The aforementioned cone of vision is also cast in the opposite direction of this. 
ARG2 = Width. AI will only be considered inside a waypoint if the direction from it to the article is less than this, compared to where the article is actually facing. Adds to a base of 45.

-----------------------------------
ARTICLE12 - Item Booster
-----------------------------------
If the player has a powerup, this will upgrade it to the boosted version in the same element. Not essential, mostly a remnant of older versions, but it's pretty cute anyway.

ARG0 = X offset, in pixels. Use this to more precisely place items if you can't pinpoint it in the editor.
ARG1 = Y offset. Similar to the above, but vertical.



And that's everything! I hope you have fun making your own tracks with this!
~Giik