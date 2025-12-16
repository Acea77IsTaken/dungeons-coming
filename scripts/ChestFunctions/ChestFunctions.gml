// Loot table del cofre
function ChestLootTable() {
    return [
        { item: OldSword(), chance: 30 },  
        { item: BigSword(), chance: 20 },       
        { item: healthPotion(), chance: 10 } 
    ];
}

function GetRandomLoot(lootTable) {
    var totalChance = 0;
    
    
    for (var i = 0; i < array_length(lootTable); i++) {
        totalChance += lootTable[i].chance;
    }

    var roll = irandom(totalChance - 1); 
    var sum = 0;


    for (var i = 0; i < array_length(lootTable); i++) {
        sum += lootTable[i].chance;
        if (roll < sum) {
            return lootTable[i].item;
        }
    }

}

function OpenChest(user) {
    var lootTable = ChestLootTable();
    var loot = GetRandomLoot(lootTable);

    if (loot != undefined) {
		return loot
    }
}
