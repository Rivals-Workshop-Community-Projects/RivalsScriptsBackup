//article s hit
uses_shader = true;
can_be_grounded = true;
ignores_walls = false;
image_xscale *= 2;
image_yscale *= 2;
defaultXScale = image_xscale;
defaultYScale = image_yscale;
drawScaleX = defaultXScale*2;
drawScaleY = defaultYScale*2;
lerpScale = 0.2;
prevFree=free;//used to determine previous air state
thrown = true;//temp use for stopping squish
//visible = false;//This is temporary until im unlazy to set the sprite on the first frame
destroyed = false;

//detonation
detonated = false;
hasDetonated = false;//Used to detect first time detonation

//stup
myOwner = noone;
state=1;// <-- fungi specific
functionType=0;//0=potion 1=cauldron 2=detonated
storedAttack = -1;//this is set to one of the strong indexes later
potionType=3;//check enums in update
platformArticle = noone;
boxhitbox = noone;// <-- f code
gravityIgnoreFrames = 0;//if not zero, this is the number of frames where gravity is ignored
lifetime = -1;//set to a positive number to enable lifetime when it dies
allowSpriteUpdate = true;//whether the article can update its sprite
urchinCooldown = 8;

//Gravity
grav = 0.2;
lerpSlip = 0.1;//0-1, higher number = less slippage when on ground

//stuff
hit_delay = 0;
past_hitbox = 0;
past_attack = 0;
past_group = 0;
destroy_check = 0;
hit_delay = 0;
kb_scaling = 0;
bkb = 0;
kb_angle = 0;
hitpause = 0;
hitstop = 0;
owner = 0;
health_check = 0;

fancynum = 0.12;
kb_adj = 0.2;