// Call with init.sqf: null = [] execVM "loot.sqf";

 {
 _mkrtype = getmarkertype _x;

 switch (_mkrtype) do {
 case "hd_warning" : {
 _gun = ["arifle_MX_F", "arifle_MX_GL_F", "arifle_MXC_F", "arifle_TRG20_F", "arifle_TRG21_F", "arifle_TRG21_GL_F", "arifle_MXM_F", "srifle_EBR_F", "LMG_Mk200_F", "hgun_P07_F", "hgun_rook40_F"] call BIS_fnc_selectRandom; 
 _ammo = ["30Rnd_65x39_Caseless_mag", "100Rnd_65x39_Caseless_mag", "30Rnd_65x39_caseless_mag_Tracer", "100Rnd_65x39_caseless_mag_Tracer", "16Rnd_9x21_Mag", "30Rnd_9x21_Mag", "20Rnd_556x45_UW_Mag", "30RND_556x45_Stanag", "200RND_65x39_Cased_box_Tracer", "RPG32_F", "ATMine_Range_Mag", "APERSMine_Range_Mag", "ClaymoreDirectionalMine_Remote_Mag", "DemoCharge_Remote_Mag", "APERSBoundingMine_Range_Mag", "SLAMDirectionalMine_Wire_Mag", "APERSTripMine_Wire_Mag", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeYellow_Grenade_shell", "1Rnd_SmokePurple_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell", "1Rnd_SmokeOrange_Grenade_shell", "SmokeShellRed", "SmokeShell", "SmokeShellGreen", "SmokeShellYellow", "SmokeShellPurple", "SmokeShellBlue", "SmokeShellOrange"] call BIS_fnc_selectRandom; 
 _itemw = ["muzzle_snds_H", "muzzle_snds_L", "muzzle_snds_B", "muzzle_snds_H_MG", "optic_Arco", "optic_Hamr", "optic_Aco", "optic_ACO_grn", "optic_Holosight", "acc_flashlight", "acc_pointer_IR", "FirstAidKit"] call BIS_fnc_selectRandom;
 _uni = ["U_O_CombatUniform_ocamo", "U_O_GhillieSuit", "U_O_PilotCoveralls", "U_O_Wetsuit", "U_OG_Guerilla1_1", "U_OG_Guerilla2_1", "U_OG_Guerilla2_3", "U_OG_Guerilla3_1", "U_OG_Guerilla3_2", "U_OG_leader", "U_C_Poloshirt_stripped", "U_C_Poloshirt_blue", "U_C_Poloshirt_burgundy", "U_C_Poloshirt_tricolour", "U_C_Poloshirt_salmon", "U_C_Poloshirt_redwhite", "U_C_Poor_1", "U_C_WorkerCoveralls", "U_C_Journalist", "U_C_Scientist", "U_OrestesBody", "U_Wetsuit_uniform", "U_Wetsuit_White", "U_Wetsuit_Blue", "U_Wetsuit_Purp", "U_Camo_uniform", "U_CamoBlue_uniform", "U_CamoBrn_uniform", "U_CamoRed_uniform", "U_C_Driver_1", "U_C_Driver_2", "U_C_Driver_3", "U_C_Driver_4", "U_C_Driver_1_black", "U_C_Driver_1_blue", "U_C_Driver_1_green"," U_C_Driver_1_red", "U_C_Driver_1_white", "U_C_Driver_1_yellow", "U_C_Driver_1_orange"] call BIS_fnc_selectRandom; 
 _backp = ["B_AssaultPack_cbr", "B_AssaultPack_dgtl", "B_AssaultPack_khk", "B_AssaultPack_mcamo", "B_AssaultPack_ocamo", "B_AssaultPack_rgr", "B_AssaultPack_sgg", "B_Carryall_cbr", "B_Carryall_khk", "B_Carryall_mcamo", "B_Carryall_ocamo", "B_Carryall_oli", "B_Carryall_oucamo", "B_FieldPack_blk", "B_FieldPack_cbr", "B_FieldPack_khk", "B_FieldPack_ocamo", "B_FieldPack_oli", "B_FieldPack_oucamo", "B_Kitbag_cbr", "B_Kitbag_mcamo", "B_Kitbag_rgr", "B_Kitbag_sgg", "B_Parachute", "B_TacticalPack_blk", "B_TacticalPack_mcamo", "B_TacticalPack_ocamo", "B_TacticalPack_oli", "B_TacticalPack_rgr", "smallbackpack_red_epoch", "smallbackpack_green_epoch", "smallbackpack_teal_epoch", "smallbackpack_pink_epoch"] call BIS_fnc_selectRandom; 
 _vest = ["V_Rangemaster_belt", "V_BandollierB_khk", "V_BandollierB_rgr", "V_BandollierB_cbr", "V_PlateCarrier1_rgr", "V_PlateCarrier1_cbr", "V_PlateCarrier2_rgr", "V_PlateCarrierGL_rgr", "V_Chestrig_khk", "V_ChestrigB_rgr", "V_TacVest_khk", "V_TacVest_brn", "V_TacVest_oli", "V_HarnessO_brn", "V_HarnessOGL_brn", "V_RebreatherB", "V_RebreatherIR"] call BIS_fnc_selectRandom; 
 _helm = ["H_HelmetB", "H_HelmetB_paint", "H_HelmetB_light", "H_Cap_red", "H_Cap_brn_SERO", "H_Cap_blu", "H_Cap_headphones", "H_PilotHelmetHeli_B", "H_PilotHelmetHeli_O", "H_HelmetO_ocamo", "H_MilCap_ocamo", "H_MilCap_mcamo"] call BIS_fnc_selectRandom; 
 _weapon1 = createVehicle ["groundweaponHolder",getMarkerPos _x,[], 0, "can_collide"]; 
 _weapon1 additemcargo [_uni,1]; 
 _weapon1 addbackpackcargo [_backp,1]; 
 _weapon1 additemcargo [_vest,1]; 
 _weapon1 additemcargo [_helm,1];
 _weapon1 addweaponcargo [_gun,1]; 
 _weapon1 addmagazinecargo [_ammo,2]; 
 _weapon1 additemcargo [_itemw,1]; 
 };
 
 case "o_unknown" : {
 _cind = ["KitCinderWall"] call BIS_fnc_selectRandom;
 _woodf = ["KitWoodFloor"] call BIS_fnc_selectRandom;
 _studw = ["KitStudWall"] call BIS_fnc_selectRandom;
 _woods = ["KitWoodStairs"] call BIS_fnc_selectRandom;
 _corr = ["ItemCorrugated"] call BIS_fnc_selectRandom;
 _weapon2 = createVehicle ["groundweaponHolder",getMarkerPos _x,[], 0, "can_collide"];
 _weapon2 addmagazinecargo [_cind,5];
 _weapon2 addmagazinecargo [_woodf,8];
 _weapon2 addmagazinecargo [_studw,10];
 _weapon2 addmagazinecargo [_woods,4];
 _weapon2 addmagazinecargo [_corr,5];
 };
 
  case "o_med" : {
 _bpack = ["B_AssaultPack_cbr","B_AssaultPack_dgtl","B_AssaultPack_khk","B_AssaultPack_mcamo","B_AssaultPack_ocamo","B_AssaultPack_rgr","B_AssaultPack_sgg","B_Carryall_cbr","B_Carryall_khk","B_Carryall_mcamo","B_Carryall_ocamo","B_Carryall_oli","B_Carryall_oucamo","B_FieldPack_blk","B_FieldPack_cbr","B_FieldPack_khk","B_FieldPack_ocamo","B_FieldPack_oli","B_FieldPack_oucamo","B_Kitbag_cbr","B_Kitbag_mcamo","B_Kitbag_rgr","B_Kitbag_sgg","B_Parachute","B_TacticalPack_blk","B_TacticalPack_mcamo","B_TacticalPack_ocamo","B_TacticalPack_oli","B_TacticalPack_rgr","smallbackpack_red_epoch","smallbackpack_green_epoch","smallbackpack_teal_epoch","smallbackpack_pink_epoch"] call BIS_fnc_selectRandom;
 _food = ["FoodBioMeat","ItemSodaOrangeSherbet","ItemSodaRbull","sardines_epoch","meatballs_epoch","scam_epoch","sweetcorn_epoch","emptyjar_epoch"] call BIS_fnc_selectRandom;
 _suply = ["Towelette","HeatPack","ColdPack","MultiGun","Pelt_EPOCH"] call BIS_fnc_selectRandom;
 _weapon3 = createVehicle ["groundweaponHolder",getMarkerPos _x,[], 0, "can_collide"];
 _weapon3 addbackpackcargo [_bpack,2];
 _weapon3 addmagazinecargo [_food,8];
 _weapon3 addmagazinecargo [_suply,10];
 };
 
  case "o_hq" : {
 _gun = ["arifle_MX_F", "arifle_MX_GL_F", "arifle_MXC_F", "arifle_TRG20_F", "arifle_TRG21_F", "arifle_TRG21_GL_F", "arifle_MXM_F", "srifle_EBR_F", "LMG_Mk200_F", "hgun_P07_F", "hgun_rook40_F"] call BIS_fnc_selectRandom; 
 _ammo = ["30Rnd_65x39_Caseless_mag", "100Rnd_65x39_Caseless_mag", "30Rnd_65x39_caseless_mag_Tracer", "100Rnd_65x39_caseless_mag_Tracer", "16Rnd_9x21_Mag", "30Rnd_9x21_Mag", "20Rnd_556x45_UW_Mag", "30RND_556x45_Stanag", "200RND_65x39_Cased_box_Tracer", "RPG32_F", "ATMine_Range_Mag", "APERSMine_Range_Mag", "ClaymoreDirectionalMine_Remote_Mag", "DemoCharge_Remote_Mag", "APERSBoundingMine_Range_Mag", "SLAMDirectionalMine_Wire_Mag", "APERSTripMine_Wire_Mag", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeYellow_Grenade_shell", "1Rnd_SmokePurple_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell", "1Rnd_SmokeOrange_Grenade_shell", "SmokeShellRed", "SmokeShell", "SmokeShellGreen", "SmokeShellYellow", "SmokeShellPurple", "SmokeShellBlue", "SmokeShellOrange"] call BIS_fnc_selectRandom; 
 _itemw = ["muzzle_snds_H", "muzzle_snds_L", "muzzle_snds_B", "muzzle_snds_H_MG", "optic_Arco", "optic_Hamr", "optic_Aco", "optic_ACO_grn", "optic_Holosight", "acc_flashlight", "acc_pointer_IR", "FirstAidKit"] call BIS_fnc_selectRandom;
 _uni = ["U_O_CombatUniform_ocamo", "U_O_GhillieSuit", "U_O_PilotCoveralls", "U_O_Wetsuit", "U_OG_Guerilla1_1", "U_OG_Guerilla2_1", "U_OG_Guerilla2_3", "U_OG_Guerilla3_1", "U_OG_Guerilla3_2", "U_OG_leader", "U_C_Poloshirt_stripped", "U_C_Poloshirt_blue", "U_C_Poloshirt_burgundy", "U_C_Poloshirt_tricolour", "U_C_Poloshirt_salmon", "U_C_Poloshirt_redwhite", "U_C_Poor_1", "U_C_WorkerCoveralls", "U_C_Journalist", "U_C_Scientist", "U_OrestesBody", "U_Wetsuit_uniform", "U_Wetsuit_White", "U_Wetsuit_Blue", "U_Wetsuit_Purp", "U_Camo_uniform", "U_CamoBlue_uniform", "U_CamoBrn_uniform", "U_CamoRed_uniform", "U_C_Driver_1", "U_C_Driver_2", "U_C_Driver_3", "U_C_Driver_4", "U_C_Driver_1_black", "U_C_Driver_1_blue", "U_C_Driver_1_green"," U_C_Driver_1_red", "U_C_Driver_1_white", "U_C_Driver_1_yellow", "U_C_Driver_1_orange"] call BIS_fnc_selectRandom; 
 _backp = ["B_AssaultPack_cbr", "B_AssaultPack_dgtl", "B_AssaultPack_khk", "B_AssaultPack_mcamo", "B_AssaultPack_ocamo", "B_AssaultPack_rgr", "B_AssaultPack_sgg", "B_Carryall_cbr", "B_Carryall_khk", "B_Carryall_mcamo", "B_Carryall_ocamo", "B_Carryall_oli", "B_Carryall_oucamo", "B_FieldPack_blk", "B_FieldPack_cbr", "B_FieldPack_khk", "B_FieldPack_ocamo", "B_FieldPack_oli", "B_FieldPack_oucamo", "B_Kitbag_cbr", "B_Kitbag_mcamo", "B_Kitbag_rgr", "B_Kitbag_sgg", "B_Parachute", "B_TacticalPack_blk", "B_TacticalPack_mcamo", "B_TacticalPack_ocamo", "B_TacticalPack_oli", "B_TacticalPack_rgr", "smallbackpack_red_epoch", "smallbackpack_green_epoch", "smallbackpack_teal_epoch", "smallbackpack_pink_epoch"] call BIS_fnc_selectRandom; 
 _vest = ["V_Rangemaster_belt", "V_BandollierB_khk", "V_BandollierB_rgr", "V_BandollierB_cbr", "V_PlateCarrier1_rgr", "V_PlateCarrier1_cbr", "V_PlateCarrier2_rgr", "V_PlateCarrierGL_rgr", "V_Chestrig_khk", "V_ChestrigB_rgr", "V_TacVest_khk", "V_TacVest_brn", "V_TacVest_oli", "V_HarnessO_brn", "V_HarnessOGL_brn", "V_RebreatherB", "V_RebreatherIR"] call BIS_fnc_selectRandom; 
 _helm = ["H_HelmetB", "H_HelmetB_paint", "H_HelmetB_light", "H_Cap_red", "H_Cap_brn_SERO", "H_Cap_blu", "H_Cap_headphones", "H_PilotHelmetHeli_B", "H_PilotHelmetHeli_O", "H_HelmetO_ocamo", "H_MilCap_ocamo", "H_MilCap_mcamo"] call BIS_fnc_selectRandom; 
 _weapon4 = createVehicle ["groundweaponHolder",getMarkerPos _x,[], 0, "can_collide"]; 
 _weapon4 additemcargo [_uni,1]; 
 _weapon4 addbackpackcargo [_backp,1]; 
 _weapon4 additemcargo [_vest,1]; 
 _weapon4 additemcargo [_helm,1];
 _weapon4 addweaponcargo [_gun,2]; 
 _weapon4 addmagazinecargo [_ammo,5]; 
 _weapon4 additemcargo [_itemw,1]; 
 };
 
//   case "b_air" : {
//  _chopr = ["B_Heli_Transport_01_EPOCH"] call BIS_fnc_selectRandom;
//  _weapon5 = createVehicle ["groundweaponHolder",getMarkerPos _x,[], 0, "can_collide"];
//  _weapon5 addbackpackcargo [_chopr,1];
// };
 
 };} foreach allmapmarkers;