/*
NSpecial: Spade Whip ------------------------------
- Lancer's Nspecial is a command grab. This attack may look like a disjoint, but it actually isn't.
- If an opponent is hit by the initial grab, they'll be pulled in close to Lancer, 
	who then has a small window to perform a throw.
- Lancer can throw upwards, downwards, forwards, and backwards. 
	If the grab whiffs, the enemy isn't close enough for Lancer to pull in, 
	or Lancer successfully performs the grab, this attack will go on cooldown for a second.

FSpecial: Cool Bike Trick ------------------------------
- Lancer's Fspecial is a quick move that changes attributes depending on how much his Cool Meter is filled 
	(it is down on his hud). The speed that it travels, it's damage, knockback, 
	and even some other things increase as the Cool Meter increases.
- Using Fspecial will use up any Cool Meter Lancer has. 
	Example: If Lancer has 2 Cool Meter, and uses Fspecial, the Fspecial will have the attributes of 2 Cools (Rad), 
	and the meter will be reset back down to Lame. You can increase your Cool Meter with Dspecial.
- With 1 and 2 levels of Cool, Fspecial will be cancelled shortly after it connects with an enemy, 
	leading to follow ups. At levels 0 and 3, Lancer will bounce off of enemies when he hits them.
- Fspecial can be good for recoveries, or can finish off combos. If Lancer misses, he'll enter an endlag state.

USpecial: Cool Bike Trick Mk 2 ------------------------------
- Lancer's Uspecial is a flashy recovery move, which has Lancer do a cool bike trick, 
	which results into an explosion. It can be an easy kill move when you are close to the top blast zone.
- With no Cool Meter stored up, Uspecial doesn't fly very high, but when Lancer's Cool Meter is higher than 0, 
	using Uspecial will use one charge in return for a higher vertial recovery.

DSpecial and Gimmick: Engine Rev ------------------------------
- Dspecial's primary use is charging Lancer's cool meter, which is shown down on his player hud. 
	Different charges affect Fspecial and Uspecial. You can press shield, jump, and attack to cancel Dspecial at any time.
- When Lancer's Cool Meter is full, Dspecial can use the Cool Meter in a different way. 
	Lancer can become slippery with Dspecial this way.

Gimmick: Cool Meter and Slippery ------------------------------
- Lancer's Cool Meter fuels his other specials (aside from Nspecial). 
	He starts with 1 charge at the start of a match. Dspecial isn't the only way Lancer can raise his cool meter. 
	Parrying an attack will raise it by one level, but getting parried as well as dying will empty the meter.
- Slippery is an effect Lancer can get when he uses Dspecial when his Cool Meter is full. 
	Being slippery allows Lancer to slide during his strong charges, similarly to Sandbert's Fstrong. 
	Slippery goes away after 10 seconds, getting parried, or dying.

Chargable Strongs: FStrong, DStrong, and FStrong ------------------------------
- Lancer's strongs have additional properties when they are held long enough.
- Fstrong creates an additional explosion hitbox instead of the usual glass particles.
- Ustrong throws the Thrash Machine higher than it usually does.
- Dstrong creates two more spades on each side, giving it more range.