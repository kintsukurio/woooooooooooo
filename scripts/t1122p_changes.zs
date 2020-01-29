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

							===	t112p_changes ===							*/						

// Vanilla Bookshelf compact with Chisel
<minecraft:bookshelf>.displayName = "Oak Bookshelf";
recipes.remove(<minecraft:bookshelf>);
recipes.addShaped(<minecraft:bookshelf>,
													[[<minecraft:oak_stairs>, null, <minecraft:oak_stairs>],
													[<minecraft:book>, <minecraft:book>, <minecraft:book>],
													[<minecraft:oak_stairs>, null, <minecraft:oak_stairs>]]);
													
// PlanetProgression Keycard reasonable recipe
recipes.remove(<planetprogression:dish_keycard>);
recipes.addShaped(<planetprogression:dish_keycard>,
													[[<galacticraftcore:basic_item:8>, <galacticraftcore:basic_item:11>, <galacticraftcore:basic_item:8>],
													[<galacticraftcore:basic_item:14>, <galacticraftcore:basic_item:19>, <galacticraftcore:basic_item:14>],
													[<galacticraftcore:basic_item:8>, <galacticraftcore:basic_item:11>, <galacticraftcore:basic_item:8>]]);
													
// More info regarding PlanetProgression
<galacticraftcore:rocket_t1>.addTooltip(format.aqua("Discover new planets & moons using the Satellite Controller & Telescope"));
<galacticraftcore:rocket_t1>.addTooltip(format.green("Pre-Launch Checklist is recommended"));
<galacticraftcore:rocket_t1:1>.addTooltip(format.aqua("Discover new planets & moons using the Satellite Controller & Telescope"));
<galacticraftcore:rocket_t1:1>.addTooltip(format.green("Pre-Launch Checklist is recommended"));
<galacticraftcore:rocket_t1:2>.addTooltip(format.aqua("Discover new planets & moons using the Satellite Controller & Telescope"));
<galacticraftcore:rocket_t1:2>.addTooltip(format.green("Pre-Launch Checklist is recommended"));
<galacticraftcore:rocket_t1:3>.addTooltip(format.aqua("Discover new planets & moons using the Satellite Controller & Telescope"));
<galacticraftcore:rocket_t1:3>.addTooltip(format.green("Pre-Launch Checklist is recommended"));

<galacticraftcore:dishbase>.addTooltip(format.green("Connect to a Satellite Controller using the Keycard"));

<planetprogression:satellite_module_basic>.displayName = "Satellite Module";
<planetprogression:satellite_basic>.displayName = "Satellite";

// Galacticraft Pre-Launch Checklist reasonable recipe
recipes.removeShapeless(<galacticraftcore:prelaunch_checklist>);
recipes.addShapeless(<galacticraftcore:prelaunch_checklist>,
													[<galacticraftcore:canvas>, <minecraft:dye:6>]);
													
// Buildcraft add more 1.12.2-relevant info
<buildcraftbuilders:quarry>.addTooltip(format.green("Uses MJ power only; Energy Converters mod optional"));
