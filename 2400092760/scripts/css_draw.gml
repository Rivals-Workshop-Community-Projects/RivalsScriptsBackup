//css draw
//Trying something different for CSS draw to learn
//more of GML dialect like Switch and For statements

//Timer for Fading out text
image_alpha = max(image_alpha - (1/60), 0);
image_speed = 0;

// Variables for positioning of visuals
var temp_x = x + 10;
var temp_y = y + 140;
var alts = 16;

var color = get_player_color(player);
var name = " ";

// Updating image_alpha when a new color is selected
if (color <= 16){	
	if (color != image_index){ 
		image_alpha = 3; //Set to 3 to make it take a long time for the text to fade
	}
}
else if (color >= 17){
    if (color != image_index + 17){		
		image_alpha = 3; //Set to 3 to make it take a long time for the text to fade
	}
}

image_index = color;

// Trying my best to learn how to use switches (I think this is the right way to use them?)
// Trying some new stuff out to increase total amount of colors selectable on the CSS menu
var position = 0;
var names = [
	"Greed Blood",
	"Rune Maker",
	"Crayfish",
	"Emerald Confidant",
	"Black Blank",
	"Robbery Purple",
	"Crimson Scourge",
	"King of Kings",
	"Blazing Devil",
	"Cruel Comedian",
	"Immortal Stranger",
	"Demon Gangster",
	"Schwarzschild",
	"Sin of Greed",
	"Storm God",
	"Vampire Savior",
	"Empty Flame",
	"Humble Melody",
	"Metal Ally",
	"Global Warming",
	"Crystalline Growth",
	"Dangerous Date",
	"Blue Sightseer",
	"Flaming Gorilla",
	"Explosive Rebel",
	"Poisonous Roar",
	"Attuned Traveler",
	"Null",
	"Hardened Veteran",
	"Old Ghost",
	"Sanguine Lightning",
	"GENESIS"
	];

var ext_names = [
	"Artist of Seer (Seer)",
	"Voidborn (Dragou Alt)",
	"Sketchy Origins (Sketch Colors)",
	"Golden Blues (Placeholder Pallet)",
	"Development Shit",
	
	"Amethyst Adventurer (Nate)",
	"Particle Agitator (Mal)",
	"Neo Samurai (Lonin)",
	"Mad Dog (Azrael)",
	"Human Strength",
	
	"Shocking Rodent (Pichu)",
	"Hatred Install (Painwheel)",
	"Death Perception (Ryougi)",
	"Metal Vampir (Mira)",
	"A Thousand Cuts",
	
	"Heaven Chaser (DIO)",
	"Stardust Crusader (Jotaro)",
	"Golden Wind (Giorno)",
	"Average Shmuck (Bob)",
	"The World",
	
	"Dragon Install (Sol)",
	"Highwind Blade (Slashe)",
	"Prideful Lion (Leo)",
	"Void Sacrifice (Scaryami)",
	"Heavy and Metal",
	
	"Infernal Punk (Amvira)",
	"Fire Starter (Starter)",
	"Gun Slinger (Darm)",
	"Call Shot (Otto)",
	"Tough Punks",
	
	"Cheery Secretary (Isabelle)",
	"Slapstick Comedy (Bonby)",
	"Hunter's Eyes (Naoto)",
	"Morion Black (Hilda)",
	"Bloodthirsty",
	
	"Metamorphosis (Jevil)",
	"Dark Heart (Ralsei)",
	"Berserker (Susie)",
	"Chosen One (Kris)",
	"Lightners",
	
	"Fire Savior (Clairen)",
	"Quirky Delivery (R-00)",
	"Future Mercenary (Penny)",
	"Flaming Sentry (Exetior)",
	"Blaze of Glory",
	
	"Vapor Grid (Vaporwave)",
	"Genocide (Chara)",
	"Fallen Child (Frisk)",
	"Puzzling Fiend (Papyrus)",
	"A Beautiful Day",
	
	"Misty Swordmaster (Wolfgang)",
	"P O W E R (Vergil)",
	"Bloody Ronin (Nagoriyuki)",
	"Kamui (Giovanna)",
	"Smell of the Game",
	
	"Mark of the Wolf (Rock)",
	"Pumped Up (Shen)",
	"Joker (Oswald)",
	"Unbridled Instinct (Iori)",
	"King of Fighters",
	
	"Bone Dry (Marie)",
	"Licht (Ferry)",
	"Astral Medium (Astra)",
	"Clumsy Elemental (Yuuto)",
	"Star Children",
	
	"Fullmetal (Edward)",
	"Undying Fox (Ban)",
	"Sacred Sniper (Hime)",
	"Kind Illusionist (Hikaru)",
	"Philosphers Stone",
	
	"Cunning Snake (Hazama)",
	"Maddened Combatant (Tricky)",
	"Who is SG? (SG)",
	"Fool or Clown (Adachi)",
	"Deceptively Dangerous",
	
	"Degraded Mentor (Giers)",
	"King of Evil (Ganondorf)",
	"Drumming Frenzy (Don-chan)",
	"CROWNED (Magalor)",
	"World Enders",
	
	"Dynamic Double (Delta)",
	"Time Traveler (Patricia)",
	"Reflective Ocean (Lapis)",
	"Eldrich Dancer (Vel)",
	"Blood and Fire",
	
	"Pruding Songsmith (Pomme)",
	"Dusty Sonata (Tempo)",
	"Groovy Teacher (Marissa)",
	"Galaxy Buster (Kitsuga)",
	"Timely Melody",
	
	"ERROR (Mojibake)",
	"Magnetic Puul (Lode & Puul)",
	"Dune Song (Coda)",
	"Ominous Maw (Hosha)",
	"Shining Steel",
	
	"Moonlit Lily (Ao)",
	"Angelic Child (Hana)",
	"Crow Bar (Natsumi)",
	"Light Bringer (Lumina)",
	"Starlit Field",
	
	"Starry Artist (Spritestar)",
	"Smoky Berserker (Rykenburn)",
	"Wind Burst (Ash)",
	"Inertial Monster (Epinel)",
	"Brawl of the Century",
	
	"Heartbreaker (Heartbrake)",
	"Pins and Needles (Tomo)",
	"Loving Athlete (Cupcake)",
	"Essence Weaver (Siren)",
	"Drifting Love",
	
	"Spirit Jester (Dazz)",
	"Techno Rat (Linz)",
	"Thunderstruck (Nial)",
	"Ace of Spades (Lucy)",
	"Lost Concepts",
	
	"Phantom Ranger (Gustav)",
	"Rocking Shadow (Domenica)",
	"Steamy Tutor (Hodan)",
	"Monarch Wings (Monarch)",
	"Elusive Masters",
	
	"Creator of Giik (Giik)",
	"Unknown Omen (Synne)",
	"Pie Flavored (Amarelle)",
	"Falling Spores (Mycolich)",
	"Quirky Inventiveness",
	
	"Sandy Artillery (Colonel Brach)",
	"Gas Passer (Stinker)",
	"Scarlet Detective (Sango)",
	"Fog Wanderer (Cirra)",
	"Treasured Figments",
	
	"Sea Scoundrel (Buch)",
	"Large Medium (Valkyrie)",
	"Purity Sage (Torga)",
	"Cloud Dandy (T&A)",
	"Calm Ocean",
	
	"Shifting Abyss (???)",
	"STATIC (Tamat)",
	"Infinite Space (Suitcase)",
	"Corrupted Hunter (Selene)",
	"Unsettling Oddities",
	
	"Karmic Justice (Fuki)",
	"Night Walker (Bat Bat)",
	"Burning Enforcer (Katie)",
	"King of Frost (Elice)",
	"WRONG Place",
	
	"Spirit of Combat (Ase)",
	"Thistle Wind (Ceae)",
	"Chaloric Destroyer (Nolan)",
	"Soul Flame (Alex)",
	"Old Spirits",
	
	"Explosive Expert (Kaboom)",
	"Anchored Caster (Tora)",
	"Rotting Sanity (Crackers)",
	"Wisp Drifter (Lyca)",
	"Malevolent Tendencies",
	
	"Hopeful Night (BLM Pallet)",
	"Transition Period (Trans Rights)",
	"Slipstream (Zephrie)",
	"Frozen Heart (Diamond)",
	"Seeds of Pride"
	]

position = color
var boxcol;
boxcol = make_colour_rgb(get_color_profile_slot_r(color, 7),get_color_profile_slot_g(color, 7),get_color_profile_slot_b(color, 7));

var includezero;
includezero = color < 10 ? "0" : "";
	
var name = includezero + string(color) + ": " + string(names[color]);

// SoA Badge // ------------------------------------------------------------------------------------------
shader_end()
var offset;
offset = sin(get_gameplay_time()/14) * 2

draw_sprite_ext(sprite_get("soa_badge"), 0, temp_x + 160, temp_y-100 - offset,1,1,0,c_black,1)
draw_sprite(sprite_get("soa_badge"), 0, temp_x + 160, temp_y-100 + offset-4)

// Version Display // -------------------------------------------------------------------------------------
draw_set_font(asset_get("tinyFont"));
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_color(x + 10, y - 6, "Version 1.91", c_white, c_white, c_white, c_white, 1);

// Date Display
draw_set_halign(fa_right);
draw_text_color(x + 210, y - 6, "April 28, 2022", c_white, c_white, c_white, c_white, 1);

// Border Rectangle Yo!
draw_rectangle_color(temp_x, temp_y + 4, temp_x + 40 + 10 * alts, temp_y + 12, c_black, c_black, c_black, c_black, false);

// Grey Rectangles Yo!!
for(i = 0; i < alts; i++){
	var draw_x = temp_x + 2 + 10 * i;
	draw_rectangle_color(draw_x-2, temp_y + 8, draw_x + 5, temp_y + 11, c_gray, c_gray, c_gray, c_gray, false);
}

// Selected Rectangle Yo!!!
draw_rectangle_color(temp_x + 10 * (position mod 16), temp_y + 8, temp_x + 7 + 10 * (position mod 16), temp_y + 11, boxcol, boxcol, boxcol, boxcol, false);

draw_set_halign(fa_left);
// Initial Name	+ Rectangles
if (image_alpha > 0){
	bigRect(temp_x, temp_y + 4, temp_x + 200, temp_y - 10, c_black, min(image_alpha,1));

	draw_set_alpha(image_alpha)
	draw_debug_text(floor(temp_x), floor(temp_y - 6), "Alt " + name);
	draw_set_alpha(1)
}

if image_alpha <= 0.1
{
	var offset = (image_alpha/0.1)
	
	var thing = 1-offset
	bigRect(temp_x, temp_y + 6, temp_x + 200, temp_y - (34*thing), c_black, 1);
	bigRect(temp_x, temp_y + 6, temp_x + 200, temp_y - (46*thing), c_black, 1);
	for (var i = 0; i < 5; i++)
	{
		var after, textcol, text;
		after = [": Taunt",": Attack",": Down",": Up",""];
		text = ext_names[ (5*position) + i ];
		draw_set_font(asset_get("tinyFont"))
		draw_set_alpha(1-offset)
		if i == 4
		{
			draw_debug_text(floor(temp_x), floor(temp_y-(8*i)-8 - (offset*4)), text)
		}
		else
		{
			draw_text_transformed_color(temp_x, temp_y-(8*i), text + after[i], 1, 1, 0, c_white,c_white,c_white,c_white, 1-offset);
		}
		draw_set_alpha(1)
		draw_set_font(-1)
	}
}
#define bigRect(x1,y1,x2,y2,color,alpha)
//x1,y1 - topleft

var x1, y1, x2, y2, color;
x1 = argument[0]
y1 = argument[1]
x2 = argument[2]
y2 = argument[3]
color = argument[4]
alpha = argument[5]

draw_primitive_begin(pr_trianglestrip)
draw_vertex_color(x1,y2,color,0)
draw_vertex_color(x2,y2,color,0)
draw_vertex_color(x1,y1,color,alpha)
draw_vertex_color(x2,y1,color,alpha)
draw_primitive_end()