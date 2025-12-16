// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function healthPotion()
{
return {
		Id: 30,
        name: "Health Potion",
		description: "a blood like liquid fills the bottle",
        effect: function(user){
			user.hp += 15;
			if(user.hp > user.maxHp)
			{user.hp = maxHp}
		},
    };
}

function strenghtPotion()
{
return {
	Id: 31,
	name: "Strenght Potion",
	description: "the yellow glint of this bottle fills you with... Dread",
	effect: function(user){
		user.str += 1;
	},
};
}

function agilityPotion()
{
return {
	Id: 32,
	name: "Agility Potion",
	description: "the liquid looks almost as if it were a gas",
	effect: function(user){
		user.baseDefense += 1;
	},
};
}