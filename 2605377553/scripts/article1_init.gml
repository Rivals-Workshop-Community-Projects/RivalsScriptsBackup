sprite_index = sprite_get("empty");
mask_index = sprite_get("smokeHitbox");

//only used by master
myLife = 120*60;
shrinkTime = 20;
dir = 0;
spd = 0;
drag = 0.1;

image_xscale = 0;
image_yscale = 0;
growSpeed = 0.05;

//interactions with hitboxes
kbMultiplier = 0.3;//how much we multiply the knockback of the player
breakDamage = 4;//amount of damage from a move needed to break it
isShrinking = false;//dont edit. determines if this cloud is already shrinking to prevent it from interacting

//wiggle
wigSeed = floor(x+y);
wigFace = 1;
if random_func(wigSeed%16,1,true)
	wigFace = -1;
wigDir = 90;
wigSpd = (1+random_func(wigSeed%16,1,false))*wigFace;
wigDst = 0.2;

image_speed = 0.2;

visible = 1


smokeAnimSpeed = 0.1;