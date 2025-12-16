//stats-------
maxHp = 30;
hp = maxHp;

baseAccuracy = 0;
obj = 0;
baseDefense = 7;
str = 0;

alive = 1;

// equipment
weapon = OldSword()	

armor = NoArmor()
// inventario simple
potion = undefined

// movement smoothing
move_speed = 6;
moving = false;
target_x = x;
target_y = y;

//control

canAct = 1;
	
turn_finished = 0;

dir = -1;

event_inherited()