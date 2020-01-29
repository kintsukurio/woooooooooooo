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

							===	world_control ===							*/	

// Alarms
recipes.remove(<worldcontrol:howler_alarm>);
recipes.remove(<worldcontrol:industrial_alarm>);
recipes.addShaped(<worldcontrol:industrial_alarm>, 
													[[<minecraft:noteblock>, <minecraft:dye:14>, <minecraft:noteblock>],
													[<ore:ingotCopper>, <minecraft:redstone>, <ore:ingotCopper>],
													[<ore:ingotCopper>, <ic2:crafting:1>, <ore:ingotCopper>]]);
recipes.addShaped(<worldcontrol:howler_alarm>, 
													[[<minecraft:noteblock>, <minecraft:noteblock>, <minecraft:noteblock>],
													[<ic2:crafting:3>, <worldcontrol:industrial_alarm>, <ic2:crafting:3>],
													[<ic2:crafting:3>, <ic2:crafting:2>, <ic2:crafting:3>]]);
// Info panel
recipes.remove(<worldcontrol:info_panel>);
recipes.addShaped(<worldcontrol:info_panel>,
													[[<ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:paneGlassColorless>],
													[<ore:dyeLime>, <ic2:crafting:1>, <ore:dyeLime>],
													[<ore:dyeBlack>, <minecraft:redstone>, <ore:dyeBlack>]]);

// Info panel extender
recipes.remove(<worldcontrol:info_panel_extender>);
recipes.addShaped(<worldcontrol:info_panel_extender>,
													[[<ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:paneGlassColorless>],
													[<ore:plankWood>, <ore:dyeLime>, <ore:plankWood>],
													[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

// Thermal monitors
recipes.remove(<worldcontrol:ic2_reactor_monitor>);
recipes.addShaped(<worldcontrol:ic2_reactor_monitor>,
													[[<ic2:glass>, <ic2:glass>, <ic2:glass>],
													[<ic2:glass>, <ic2:crafting:1>, <ic2:glass>],
													[<ic2:glass>, <minecraft:redstone>, <ic2:glass>]]);
recipes.remove(<worldcontrol:extremereactormonitor>);
recipes.addShaped(<worldcontrol:extremereactormonitor>,
													[[<bigreactors:reactorglass>, <bigreactors:reactorglass>, <bigreactors:reactorglass>],
													[<bigreactors:reactorglass>, <minecraft:comparator>, <bigreactors:reactorglass>],
													[<bigreactors:reactorglass>, <minecraft:redstone>, <bigreactors:reactorglass>]]);


// Thermometer
recipes.remove(<worldcontrol:thermometer>);
recipes.addShaped(<worldcontrol:thermometer>,
													[[<minecraft:iron_ingot>, <ore:blockGlassColorless>, null],
													[<ore:blockGlassColorless>, <ic2:cell>, <ore:blockGlassColorless>],
													[null, <ore:blockGlassColorless>, <ore:blockGlassColorless>]]);

// Reactor Kits
recipes.remove(<worldcontrol:ic2_reactor_kit>);
recipes.addShaped(<worldcontrol:ic2_reactor_kit>,
													[[null, <ic2:ingot:8>, <ic2:frequency_transmitter>],
													[null, <worldcontrol:thermometer>, <ic2:ingot:8>],
													[<minecraft:paper>, null, null]]);
recipes.remove(<worldcontrol:er_kit>);
recipes.addShaped(<worldcontrol:er_kit>,
													[[null, <bigreactors:ingotyellorium>, <ic2:frequency_transmitter>],
													[null, <worldcontrol:thermometer>, <bigreactors:ingotyellorium>],
													[<minecraft:paper>, null, null]]);

// Energy kit
recipes.remove(<worldcontrol:ic2_energy_storage_kit>);
recipes.addShaped(<worldcontrol:ic2_energy_storage_kit>,
													[[null, null, <ic2:frequency_transmitter>],
													[null, <ic2:meter>, null],
													[<minecraft:paper>, null, null]]);

// Fluid kit
recipes.remove(<worldcontrol:fluid_kit>);
recipes.addShaped(<worldcontrol:fluid_kit>,
													[[null, null, <ic2:frequency_transmitter>],
													[null, <minecraft:bucket>, null],
													[<minecraft:paper>, null, null]]);

// Forge energy kit
recipes.remove(<worldcontrol:forge_energy_kit>);
recipes.addShaped(<worldcontrol:forge_energy_kit>,
													[[null, null, <ic2:frequency_transmitter>],
													[null, <thermalfoundation:meter>, null],
													[<minecraft:paper>, null, null]]);

// Time card
recipes.remove(<worldcontrol:time_card>);
recipes.addShapeless(<worldcontrol:time_card>, [<ic2:crafting:1>,<minecraft:clock>]);

// Range upgrade
recipes.remove(<worldcontrol:upgrade_cards>);
recipes.addShaped(<worldcontrol:upgrade_cards>,
													[[null, null, null],
													[<ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte}).onlyWithTag({type: 0 as byte, insulation: 1 as byte}), <ic2:frequency_transmitter>, <ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte}).onlyWithTag({type: 0 as byte, insulation: 1 as byte})],
													[null, null, null]]);

// Color upgrade
recipes.remove(<worldcontrol:upgrade_cards:1>);
recipes.addShaped(<worldcontrol:upgrade_cards:1>,
													[[<ore:dyeRed>, <ore:dyeYellow>, <ore:dyeGreen>],
													[<ore:fertilizer>, <ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte}).onlyWithTag({type: 0 as byte, insulation: 1 as byte}), <ore:dyeMagenta>],
													[<ore:dyeBlack>, <ore:dyeCyan>, <ore:gemLapis>]]);

// Portable info panel
recipes.remove(<worldcontrol:remote_panel>);
recipes.addShaped(<worldcontrol:remote_panel>,
													[[null, <minecraft:ender_pearl>, null],
													[<minecraft:ender_pearl>, <worldcontrol:info_panel>, <minecraft:ender_pearl>],
													[null, <minecraft:ender_pearl>, null]]);