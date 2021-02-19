//Prepare to be rained on

soaked = false;             //Whether or not you're soaked
usesmallsoak = false;       //Override char_height check and use smaller soaked sprite (you can set this to true in YOUR CHARACTER'S update.gml, or maybe init.gml?, if the automatic height looks wacky on your character)
usedefaultsoak = false;     //Override char_height check and use default soaked sprite (you can set this to true in YOUR CHARACTER'S update.gml, or maybe init.gml?, if the automatic height looks wacky on your character)
unsoak = false;             //Trigger to unsoak.
nspeclock = false;          //Controls DI lock after nspec scripted hit.
trummelcodec = 18;
halfunsoaked = false;
soaked_firsthit = false;
swallowedtrum = false;