/*					MMMMMMMMMMMMMNNNNmmmmmmmNNNMMMMMMMMMMMMM
					MMMMMMMMMNNmmmmmmmmmmmmmmmmmmNNMMMMMMMMM
					MMMMMMNNmmmmmmmmmmmmmmmmmmmmmmmmNNMMMMMM
					MMMMNNmmmmmmmmmmmmmmmmmmmmmmmmmmmmNNMMMM
					MMMNmmmmmmmmmmmdod+sdmmmmmmmmmmmmmmmNMMM
					MMNmmmmmmmmmmho:/d:--/sdmmmmmmmmmmmmmNMM
					MNmmmmmmmmmd+--::h/:-:oymmmmmmmmmmmmmmNM
					Nmmmmmmmmmmdssoo+yosso/+mmmmymmmmmmmmmmN
					Nmmmmmmmmmmms///+yy/:::omyo:-:hmmmmmmmmN
					mmmmmmmmy:/+h/:::+y:::yd+//::-.ommmmmmmm
					mmmmmmmm//++sh::::h:::d/ss///oshmmmmmmmm
					Nmmmmmmmh+///so---h:-:h::/yyo/smmmmmmmmN
					Nmmmmmmmmd/:::y:--s/-+s:::h::ymmmmmmmmmN
					MNmmmmmmmmmo--:y--+o-s/--s/-ymmmmmmmmmNM
					MMNmmmmmmmmmhyyms/:y-hy/:hsdmmmmmmmmmNMM
					MMMNmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmNMMM
					MMMMMNmmmmmmmmmmmmmmmmmmmmmmmmmmmmNNMMMM
					MMMMMMNNmmmmmmmmmmmmmmmmmmmmmmmmNNMMMMMM
					MMMMMMMMMNNmmmmmmmmmmmmmmmmmmNNMMMMMMMMM
					MMMMMMMMMMMMMNNNNmmmmmmNNNNMMMMMMMMMMMMM

							===	t112p_loot ===							*/						

// Imports
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;

// Change Mineshaft loot due to Railcraft, IC2 & more (overflow is still a problem due to Railcraft bug)
val mineshaft = LootTables.getTable("minecraft:chests/abandoned_mineshaft");

# Remove IC2 mineshaft loot altogether as it is mostly duplicates
mineshaft.removePool("ic2");
# Remove Growthcraft mineshaft loot altogether as it is excessive
mineshaft.removePool("growthcraft_hops:loot_table_simple_dungeon");
mineshaft.removePool("growthcraft_grapes:loot_table_simple_dungeon");

val mineshaftPoolMain = mineshaft.getPool("main");
val mineshaftPool1 = mineshaft.getPool("pool1");
val mineshaftPool2 = mineshaft.getPool("pool2");
val mineshaftPoolForestryFactoryItems = mineshaft.getPool("forestry_factory_items");
val mineshaftPoolForestryStorageItems = mineshaft.getPool("forestry_storage_items");
val mineshaftPoolForestryApicultureBees = mineshaft.getPool("forestry_apiculture_bees");
val mineshaftPoolEnderIO = mineshaft.getPool("Ender IO");
val mineshaftPoolRailcraftResources = mineshaft.getPool("railcraft_resources");
val mineshaftPoolRailcraftCarts = mineshaft.getPool("railcraft_carts");
val mineshaftPoolAE2Crystals = mineshaft.getPool("AE2 Crystals");
val mineshaftPoolAE2Dusts = mineshaft.getPool("AE2 DUSTS");

# Reduce mineshaft loot pool rolls
mineshaftPool1.setRolls(1, 2);
mineshaftPool2.setRolls(1, 2);
mineshaftPoolEnderIO.setRolls(1, 1);
mineshaftPoolRailcraftResources.setRolls(0, 1);
mineshaftPoolRailcraftCarts.setRolls(1, 1);
mineshaftPoolAE2Crystals.setRolls(1, 2);
mineshaftPoolAE2Dusts.setRolls(1, 2);

# Modify Railcraft mineshaft loot
mineshaftPoolRailcraftResources.removeEntry("minecraft:coal");
mineshaftPoolRailcraftResources.removeEntry("railcraft:ingot");
mineshaftPoolRailcraftResources.removeEntry("railcraft:plate");

# Modify Ender IO mineshaft loot (it has its own loot table)
val mineshaftEnderIO = LootTables.getTable("enderio:chests/abandoned_mineshaft");
val mineshaftEnderIOPool = mineshaftEnderIO.getPool("Ender IO");
mineshaftEnderIOPool.removeEntry("enderio:item_material:9");

# Remove empty mineshaft loots. This real estate is worth too much
mineshaftPoolMain.removeEntry("empty");
mineshaftPoolForestryFactoryItems.removeEntry("empty");
mineshaftPoolForestryStorageItems.removeEntry("empty");
mineshaftPoolForestryApicultureBees.removeEntry("empty");

// Remove more IC2 loot as it is mostly duplicates
LootTables.getTable("minecraft:chests/simple_dungeon").removePool("ic2");
LootTables.getTable("minecraft:chests/end_city_treasure").removePool("ic2");
LootTables.getTable("minecraft:chests/igloo_chest").removePool("ic2");
LootTables.getTable("minecraft:chests/nether_bridge").removePool("ic2");
LootTables.getTable("minecraft:chests/stronghold_corridor").removePool("ic2");
LootTables.getTable("minecraft:chests/stronghold_crossing").removePool("ic2");