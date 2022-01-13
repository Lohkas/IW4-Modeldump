//Maya ASCII 8.5 scene

// Wraith - Game extraction tools
// Please credit DTZxPorter for using it!

requires maya "8.5";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya Unlimited 8.5";
fileInfo "version" "8.5";
fileInfo "cutIdentifier" "200612162224-692032";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 48.186233840145825 37.816674066853686 41.0540421364379 ;
	setAttr ".r" -type "double3" -29.738352729603015 49.400000000000432 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".fcp" 10000;
	setAttr ".coi" 73.724849603665149;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode lightLinker -n "lightLinker1";
	setAttr -s 9 ".lnk";
	setAttr -s 9 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :lightList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[0].sllk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.slnk[0].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[1].sllk";
connectAttr ":initialParticleSE.msg" "lightLinker1.slnk[1].solk";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
createNode transform -n "weapon_ak47_clip_LOD0";
setAttr ".ove" yes;
createNode transform -n "WraithMesh_f4b7e94e_00" -p "weapon_ak47_clip_LOD0";
setAttr ".rp" -type "double3" 0.000000 0.000000 0.000000 ;
setAttr ".sp" -type "double3" 0.000000 0.000000 0.000000 ;
createNode mesh -n "MeshShape_0" -p "WraithMesh_f4b7e94e_00";
setAttr -k off ".v";
setAttr ".vir" yes;
setAttr ".vif" yes;
setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:128]";
setAttr ".uvst[0].uvsn" -type "string" "map1";
setAttr -s 128 ".uvst[0].uvsp";
setAttr ".uvst[0].uvsp[0:127]" -type "float2" 0.824219 0.003906 0.824219 0.051758 0.933594 0.008301 0.933594 0.051758 0.761230 0.145996 0.732910 0.175781 0.695801 0.095703 0.673340 0.128906 0.761230 0.145996 0.850586 0.261230 0.732910 0.175781 0.819336 0.289551 0.844727 0.348633 0.819336 0.289551 0.886230 0.338379 0.850586 0.261230 0.897461 0.417480 0.854004 0.417480 0.886230 0.338379 0.844727 0.348633 0.673340 0.128906 0.732910 0.175781 0.695801 0.095703 0.761230 0.145996 0.761230 0.145996 0.732910 0.175781 0.850586 0.261230 0.819336 0.289551 0.844727 0.348633 0.886230 0.338379 0.819336 0.289551 0.850586 0.261230 0.844727 0.348633 0.854004 0.417480 0.886230 0.338379 0.897461 0.417480 0.788086 0.017578 0.788086 0.038574 0.833008 0.015625 0.833008 0.040527 0.743164 0.005859 0.684570 0.096191 0.751953 0.010742 0.693359 0.102539 0.041565 0.466797 0.041565 0.416992 0.031403 0.466797 0.031403 0.416992 0.684570 0.096191 0.664551 0.127441 0.693359 0.102539 0.673340 0.133789 0.041534 0.466797 0.041534 0.416992 0.031403 0.466797 0.031403 0.416992 0.673340 0.133789 0.664551 0.127441 0.693359 0.102539 0.684570 0.096191 0.041565 0.466797 0.041565 0.416992 0.031403 0.466797 0.031403 0.416992 0.693359 0.102539 0.684570 0.096191 0.751953 0.010742 0.743164 0.005859 0.005661 0.411621 0.070190 0.411621 0.005661 0.416992 0.070190 0.416992 0.746582 0.009766 0.816406 0.063477 0.690430 0.097168 0.752930 0.145996 0.925293 0.190918 0.846680 0.262207 0.981445 0.317871 0.877930 0.335449 0.889160 0.417480 0.995117 0.417480 0.746582 0.009766 0.690430 0.097168 0.816406 0.063477 0.752930 0.145996 0.925293 0.190918 0.846680 0.262207 0.981445 0.317871 0.877930 0.335449 0.889160 0.417480 0.995117 0.417480 0.025620 0.795166 0.050262 0.795166 0.025620 0.744385 0.050262 0.744385 0.025620 0.687256 0.050262 0.687256 0.050262 0.576904 0.025620 0.576904 0.025620 0.531494 0.050262 0.531494 0.009705 0.416016 0.066162 0.416016 0.009705 0.468262 0.066162 0.468262 0.066162 0.591309 0.009705 0.591309 0.061249 0.714844 0.009705 0.714844 0.009705 0.795166 0.061249 0.795166 0.607910 0.545654 0.713867 0.545654 0.607910 0.552979 0.607910 0.583008 0.571289 0.556641 0.571289 0.580322 0.713867 0.591553 0.607910 0.591553 0.611816 0.545654 0.611816 0.552979 0.717773 0.545654 0.611816 0.583008 0.717773 0.591553 0.611816 0.591553 0.575195 0.556641 0.575195 0.580322;
setAttr ".cuvs" -type "string" "map1";
setAttr ".dcol" yes;
setAttr ".dcc" -type "string" "Ambient+Diffuse";
setAttr ".ccls" -type "string" "colorSet1";
setAttr ".clst[0].clsn" -type "string" "colorSet1";
setAttr -s 240 ".clst[0].clsp";
setAttr ".clst[0].clsp[0:239]" 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000;
setAttr ".covm[0]"  0 1 1;
setAttr ".cdvm[0]"  0 1 1;
setAttr -s 128 ".vt";
setAttr ".vt[0:127]" 1.638495 1.155042 -0.103360 1.638495 -1.104024 -0.103360 -3.069816 0.957999 1.963359 -3.069813 -1.104024 1.963358 0.874356 -1.044961 -13.953247 2.783181 -0.467660 -13.383349 2.398212 -1.044961 -17.648783 4.150712 -0.661038 -16.797535 0.874356 -1.044961 -13.953247 -0.089111 -1.044961 -6.953876 2.783181 -0.467660 -13.383349 1.907165 -0.467660 -6.509423 2.414327 -0.467660 -3.700656 1.907165 -0.467660 -6.509423 0.381536 -1.044959 -3.335403 -0.089111 -1.044961 -6.953876 1.269614 -0.790517 0.058561 3.194341 -0.467660 -0.786300 0.381536 -1.044959 -3.335403 2.414327 -0.467660 -3.700656 4.150712 0.712056 -16.797535 2.783181 0.518678 -13.383349 2.398212 1.095980 -17.648783 0.874356 1.095980 -13.953247 0.874356 1.095980 -13.953247 2.783181 0.518678 -13.383349 -0.089111 1.095980 -6.953876 1.907165 0.518678 -6.509423 2.414327 0.518678 -3.700656 0.381539 1.095980 -3.335405 1.907165 0.518678 -6.509423 -0.089111 1.095980 -6.953876 2.414327 0.518678 -3.700656 3.194341 0.518678 -0.786300 0.381539 1.095980 -3.335405 1.269614 0.841535 0.058561 3.194341 0.518678 -0.786300 3.194341 -0.467660 -0.786300 1.269614 0.841535 0.058561 1.269614 -0.790517 0.058561 -1.933157 1.317008 -20.197701 2.762209 1.317008 -17.776104 -2.041496 1.317008 -19.848091 2.653869 1.317008 -17.426495 2.762209 1.317008 -17.776104 2.762209 0.841553 -17.776104 2.653869 1.317008 -17.426495 2.653871 0.841553 -17.426493 2.762209 0.841553 -17.776104 4.353925 0.695739 -16.949867 2.653871 0.841553 -17.426493 4.245587 0.695739 -16.600256 4.353925 0.695739 -16.949867 4.353925 -0.644723 -16.949867 4.245587 0.695739 -16.600256 4.245585 -0.644723 -16.600254 4.245585 -0.644723 -16.600254 4.353925 -0.644723 -16.949867 2.653871 -0.844100 -17.426493 2.762209 -0.844100 -17.776104 2.762209 -0.844100 -17.776104 2.762209 -1.265989 -17.776104 2.653871 -0.844100 -17.426493 2.653871 -1.265989 -17.426493 2.653871 -1.265989 -17.426493 2.762209 -1.265989 -17.776104 -2.041496 -1.265989 -19.848091 -1.933159 -1.265989 -20.197701 -1.933159 -1.265989 -20.197701 -1.933157 1.317008 -20.197701 -2.041496 -1.265989 -19.848091 -2.041496 1.317008 -19.848091 -1.830747 -1.104024 -20.028690 -3.449612 -1.104024 -16.063913 2.651142 -1.104024 -17.717192 1.215081 -1.104024 -14.164941 -4.922934 -1.104024 -8.090738 0.107993 -1.104024 -6.994562 -4.242222 -1.104024 -2.393274 0.684915 -1.104024 -3.644414 1.638495 -1.104024 -0.103360 -3.069813 -1.104024 1.963358 -1.830747 1.155042 -20.028690 2.651142 1.155042 -17.717192 -3.449612 1.155042 -16.063913 1.215081 1.155042 -14.164941 -4.922934 1.155042 -8.090738 0.107993 1.155042 -6.994562 -4.242220 0.957999 -2.393275 0.684915 1.155042 -3.644414 1.638495 1.155042 -0.103360 -3.069816 0.957999 1.963359 3.194341 -0.467660 -0.786300 3.194341 0.518678 -0.786300 2.414327 -0.467660 -3.700656 2.414327 0.518678 -3.700656 1.907165 -0.467660 -6.509423 1.907165 0.518678 -6.509423 2.783181 0.518678 -13.383349 2.783181 -0.467660 -13.383349 4.150712 -0.661038 -16.797535 4.150712 0.712056 -16.797535 -1.830747 -1.104024 -20.028690 -1.830747 1.155042 -20.028690 -3.449612 -1.104024 -16.063913 -3.449612 1.155042 -16.063913 -4.922934 1.155042 -8.090738 -4.922934 -1.104024 -8.090738 -4.242220 0.957999 -2.393275 -4.242222 -1.104024 -2.393274 -3.069813 -1.104024 1.963358 -3.069816 0.957999 1.963359 2.653871 -1.265989 -17.426493 -2.041496 -1.265989 -19.848091 2.653871 -0.844100 -17.426493 2.653871 0.841553 -17.426493 4.245585 -0.644723 -16.600254 4.245587 0.695739 -16.600256 -2.041496 1.317008 -19.848091 2.653869 1.317008 -17.426495 2.762209 -1.265989 -17.776104 2.762209 -0.844100 -17.776104 -1.933159 -1.265989 -20.197701 2.762209 0.841553 -17.776104 -1.933157 1.317008 -20.197701 2.762209 1.317008 -17.776104 4.353925 -0.644723 -16.949867 4.353925 0.695739 -16.949867;
setAttr -s 240 ".ed";
setAttr ".ed[0:239]" 2 1 0 1 0 0 0 2 0 2 3 0 3 1 0 1 2 0 6 5 0 5 4 0 4 6 0 6 7 0 7 5 0 5 6 0 10 9 0 9 8 0 8 10 0 10 11 0 11 9 0 9 10 0 14 13 0 13 12 0 12 14 0 14 15 0 15 13 0 13 14 0 18 17 0 17 16 0 16 18 0 18 19 0 19 17 0 17 18 0 22 21 0 21 20 0 20 22 0 22 23 0 23 21 0 21 22 0 26 25 0 25 24 0 24 26 0 26 27 0 27 25 0 25 26 0 30 29 0 29 28 0 28 30 0 30 31 0 31 29 0 29 30 0 34 33 0 33 32 0 32 34 0 34 35 0 35 33 0 33 34 0 38 37 0 37 36 0 36 38 0 38 39 0 39 37 0 37 38 0 42 41 0 41 40 0 40 42 0 42 43 0 43 41 0 41 42 0 46 45 0 45 44 0 44 46 0 46 47 0 47 45 0 45 46 0 50 49 0 49 48 0 48 50 0 50 51 0 51 49 0 49 50 0 54 53 0 53 52 0 52 54 0 54 55 0 55 53 0 53 54 0 58 57 0 57 56 0 56 58 0 58 59 0 59 57 0 57 58 0 62 61 0 61 60 0 60 62 0 62 63 0 63 61 0 61 62 0 66 65 0 65 64 0 64 66 0 66 67 0 67 65 0 65 66 0 70 69 0 69 68 0 68 70 0 70 71 0 71 69 0 69 70 0 74 73 0 73 72 0 72 74 0 75 73 0 73 74 0 74 75 0 75 76 0 76 73 0 73 75 0 77 76 0 76 75 0 75 77 0 77 78 0 78 76 0 76 77 0 79 78 0 78 77 0 77 79 0 80 78 0 78 79 0 79 80 0 80 81 0 81 78 0 78 80 0 84 83 0 83 82 0 82 84 0 84 85 0 85 83 0 83 84 0 86 85 0 85 84 0 84 86 0 86 87 0 87 85 0 85 86 0 88 87 0 87 86 0 86 88 0 88 89 0 89 87 0 87 88 0 88 90 0 90 89 0 89 88 0 90 88 0 88 91 0 91 90 0 94 93 0 93 92 0 92 94 0 94 95 0 95 93 0 93 94 0 96 95 0 95 94 0 94 96 0 96 97 0 97 95 0 95 96 0 96 98 0 98 97 0 97 96 0 99 98 0 98 96 0 96 99 0 100 98 0 98 99 0 99 100 0 98 100 0 100 101 0 101 98 0 104 103 0 103 102 0 102 104 0 104 105 0 105 103 0 103 104 0 104 106 0 106 105 0 105 104 0 107 106 0 106 104 0 104 107 0 107 108 0 108 106 0 106 107 0 109 108 0 108 107 0 107 109 0 110 108 0 108 109 0 109 110 0 110 111 0 111 108 0 108 110 0 114 113 0 113 112 0 112 114 0 115 113 0 113 114 0 114 115 0 116 115 0 115 114 0 114 116 0 115 116 0 116 117 0 117 115 0 115 118 0 118 113 0 113 115 0 115 119 0 119 118 0 118 115 0 122 121 0 121 120 0 120 122 0 123 121 0 121 122 0 122 123 0 124 123 0 123 122 0 122 124 0 125 123 0 123 124 0 124 125 0 123 126 0 126 121 0 121 123 0 126 123 0 123 127 0 127 126 0;
setAttr -s 240 ".n";
setAttr ".n[0:239]" -type "float3" 0.401575 0.000000 0.913386 0.401575 0.000000 0.913386 0.401575 0.000000 0.913386 0.401575 0.000000 0.913386 0.401575 0.000000 0.913386 0.401575 0.000000 0.913386 0.212598 -0.968504 0.110236 0.212598 -0.968504 0.110236 0.212598 -0.968504 0.110236 0.212598 -0.968504 0.110236 0.212598 -0.968504 0.110236 0.212598 -0.968504 0.110236 0.275591 -0.960630 0.039370 0.275591 -0.960630 0.039370 0.275591 -0.960630 0.039370 0.275591 -0.960630 0.039370 0.275591 -0.960630 0.039370 0.275591 -0.960630 0.039370 0.275591 -0.960630 -0.039370 0.275591 -0.960630 -0.039370 0.275591 -0.960630 -0.039370 0.275591 -0.960630 -0.039370 0.275591 -0.960630 -0.039370 0.275591 -0.960630 -0.039370 0.220472 -0.976378 -0.015748 0.220472 -0.976378 -0.015748 0.220472 -0.976378 -0.015748 0.220472 -0.976378 -0.015748 0.220472 -0.976378 -0.015748 0.220472 -0.976378 -0.015748 0.212598 0.968504 0.110236 0.212598 0.968504 0.110236 0.212598 0.968504 0.110236 0.212598 0.968504 0.110236 0.212598 0.968504 0.110236 0.212598 0.968504 0.110236 0.275591 0.960630 0.039370 0.275591 0.960630 0.039370 0.275591 0.960630 0.039370 0.275591 0.960630 0.039370 0.275591 0.960630 0.039370 0.275591 0.960630 0.039370 0.275591 0.960630 -0.039370 0.275591 0.960630 -0.039370 0.275591 0.960630 -0.039370 0.275591 0.960630 -0.039370 0.275591 0.960630 -0.039370 0.275591 0.960630 -0.039370 0.220472 0.976378 -0.015748 0.220472 0.976378 -0.015748 0.220472 0.976378 -0.015748 0.220472 0.976378 -0.015748 0.220472 0.976378 -0.015748 0.220472 0.976378 -0.015748 0.401575 0.000000 0.913386 0.401575 0.000000 0.913386 0.401575 0.000000 0.913386 0.401575 0.000000 0.913386 0.401575 0.000000 0.913386 0.401575 0.000000 0.913386 0.000000 1.000000 0.000000 0.000000 1.000000 0.000000 0.000000 1.000000 0.000000 0.000000 1.000000 0.000000 0.000000 1.000000 0.000000 0.000000 1.000000 0.000000 0.952756 0.000000 0.299213 0.952756 0.000000 0.299213 0.952756 0.000000 0.299213 0.952756 0.000000 0.299213 0.952756 0.000000 0.299213 0.952756 0.000000 0.299213 0.078740 1.000000 0.023622 0.078740 1.000000 0.023622 0.078740 1.000000 0.023622 0.078740 1.000000 0.023622 0.078740 1.000000 0.023622 0.078740 1.000000 0.023622 0.952756 0.000000 0.299213 0.952756 0.000000 0.299213 0.952756 0.000000 0.299213 0.952756 0.000000 0.299213 0.952756 0.000000 0.299213 0.952756 0.000000 0.299213 0.110236 -0.992126 0.031496 0.110236 -0.992126 0.031496 0.110236 -0.992126 0.031496 0.110236 -0.992126 0.031496 0.110236 -0.992126 0.031496 0.110236 -0.992126 0.031496 0.952756 0.000000 0.299213 0.952756 0.000000 0.299213 0.952756 0.000000 0.299213 0.952756 0.000000 0.299213 0.952756 0.000000 0.299213 0.952756 0.000000 0.299213 0.000000 -1.000000 0.000000 0.000000 -1.000000 0.000000 0.000000 -1.000000 0.000000 0.000000 -1.000000 0.000000 0.000000 -1.000000 0.000000 0.000000 -1.000000 0.000000 -0.952756 0.000000 -0.299213 -0.952756 0.000000 -0.299213 -0.952756 0.000000 -0.299213 -0.952756 0.000000 -0.299213 -0.952756 0.000000 -0.299213 -0.952756 0.000000 -0.299213 0.000000 -1.000000 0.000000 0.000000 -1.000000 0.000000 0.000000 -1.000000 0.000000 0.000000 -1.000000 0.000000 0.000000 -1.000000 0.000000 0.000000 -1.000000 0.000000 0.000000 -1.000000 0.000000 0.000000 -1.000000 0.000000 0.000000 -1.000000 0.000000 0.000000 -1.000000 0.000000 0.000000 -1.000000 0.000000 0.000000 -1.000000 0.000000 0.000000 -1.000000 0.000000 0.000000 -1.000000 0.000000 0.000000 -1.000000 0.000000 0.000000 -1.000000 0.000000 0.000000 -1.000000 0.000000 0.000000 -1.000000 0.000000 0.000000 -1.000000 0.000000 0.000000 -1.000000 0.000000 0.000000 -1.000000 0.000000 0.000000 -1.000000 0.000000 0.000000 -1.000000 0.000000 0.000000 -1.000000 0.000000 0.000000 1.000000 0.000000 0.000000 1.000000 0.000000 0.000000 1.000000 0.000000 0.000000 1.000000 0.000000 0.000000 1.000000 0.000000 0.000000 1.000000 0.000000 -0.007874 1.000000 0.015748 0.000000 1.000000 0.000000 0.000000 1.000000 0.000000 -0.007874 1.000000 0.015748 -0.007874 1.000000 0.015748 0.000000 1.000000 0.000000 -0.031496 1.000000 0.015748 -0.007874 1.000000 0.015748 -0.007874 1.000000 0.015748 -0.031496 1.000000 0.015748 -0.031496 1.000000 0.015748 -0.007874 1.000000 0.015748 -0.031496 1.000000 0.015748 -0.039370 1.000000 0.007874 -0.031496 1.000000 0.015748 -0.039370 1.000000 0.007874 -0.031496 1.000000 0.015748 -0.039370 1.000000 0.007874 0.976378 0.000000 -0.220472 0.968504 0.000000 -0.259843 0.968504 0.000000 -0.259843 0.976378 0.000000 -0.220472 0.976378 0.000000 -0.220472 0.968504 0.000000 -0.259843 1.000000 0.000000 -0.023622 0.976378 0.000000 -0.220472 0.976378 0.000000 -0.220472 1.000000 0.000000 -0.023622 1.000000 0.000000 -0.023622 0.976378 0.000000 -0.220472 1.000000 0.000000 -0.023622 0.968504 0.000000 0.251969 1.000000 0.000000 -0.023622 0.968504 0.000000 0.251969 0.968504 0.000000 0.251969 1.000000 0.000000 -0.023622 0.929134 0.000000 0.370079 0.968504 0.000000 0.251969 0.968504 0.000000 0.251969 0.968504 0.000000 0.251969 0.929134 0.000000 0.370079 0.929134 0.000000 0.370079 -0.960630 0.000000 -0.283465 -0.929134 0.000000 -0.377953 -0.929134 0.000000 -0.377953 -0.960630 0.000000 -0.283465 -0.960630 0.000000 -0.283465 -0.929134 0.000000 -0.377953 -0.960630 0.000000 -0.283465 -1.000000 0.000000 -0.031496 -0.960630 0.000000 -0.283465 -1.000000 0.000000 -0.031496 -1.000000 0.000000 -0.031496 -0.960630 0.000000 -0.283465 -1.000000 0.000000 -0.031496 -0.984252 0.000000 0.188976 -1.000000 0.000000 -0.031496 -0.984252 0.000000 0.188976 -0.984252 0.000000 0.188976 -1.000000 0.000000 -0.031496 -0.968504 0.000000 0.259843 -0.984252 0.000000 0.188976 -0.984252 0.000000 0.188976 -0.968504 0.000000 0.259843 -0.968504 0.000000 0.259843 -0.984252 0.000000 0.188976 -0.464567 0.000000 0.889764 -0.456693 0.000000 0.889764 -0.456693 0.000000 0.889764 -0.456693 0.000000 0.889764 -0.456693 0.000000 0.889764 -0.464567 0.000000 0.889764 -0.464567 0.000000 0.889764 -0.456693 0.000000 0.889764 -0.464567 0.000000 0.889764 -0.456693 0.000000 0.889764 -0.464567 0.000000 0.889764 -0.464567 0.000000 0.889764 -0.456693 0.000000 0.889764 -0.456693 0.000000 0.889764 -0.456693 0.000000 0.889764 -0.456693 0.000000 0.889764 -0.456693 0.000000 0.889764 -0.456693 0.000000 0.889764 0.456693 0.000000 -0.889764 0.464567 0.000000 -0.889764 0.456693 0.000000 -0.889764 0.456693 0.000000 -0.889764 0.464567 0.000000 -0.889764 0.456693 0.000000 -0.889764 0.456693 0.000000 -0.889764 0.456693 0.000000 -0.889764 0.456693 0.000000 -0.889764 0.456693 0.000000 -0.889764 0.456693 0.000000 -0.889764 0.456693 0.000000 -0.889764 0.456693 0.000000 -0.889764 0.464567 0.000000 -0.889764 0.464567 0.000000 -0.889764 0.464567 0.000000 -0.889764 0.456693 0.000000 -0.889764 0.464567 0.000000 -0.889764;
setAttr -s 80 ".fc[0:79]" -type "polyFaces" f 3 0 1 2 mu 0 3 2 1 0 mc 0 3 0 1 2 f 3 3 4 5 mu 0 3 2 3 1 mc 0 3 3 4 5 f 3 6 7 8 mu 0 3 6 5 4 mc 0 3 6 7 8 f 3 9 10 11 mu 0 3 6 7 5 mc 0 3 9 10 11 f 3 12 13 14 mu 0 3 10 9 8 mc 0 3 12 13 14 f 3 15 16 17 mu 0 3 10 11 9 mc 0 3 15 16 17 f 3 18 19 20 mu 0 3 14 13 12 mc 0 3 18 19 20 f 3 21 22 23 mu 0 3 14 15 13 mc 0 3 21 22 23 f 3 24 25 26 mu 0 3 18 17 16 mc 0 3 24 25 26 f 3 27 28 29 mu 0 3 18 19 17 mc 0 3 27 28 29 f 3 30 31 32 mu 0 3 22 21 20 mc 0 3 30 31 32 f 3 33 34 35 mu 0 3 22 23 21 mc 0 3 33 34 35 f 3 36 37 38 mu 0 3 26 25 24 mc 0 3 36 37 38 f 3 39 40 41 mu 0 3 26 27 25 mc 0 3 39 40 41 f 3 42 43 44 mu 0 3 30 29 28 mc 0 3 42 43 44 f 3 45 46 47 mu 0 3 30 31 29 mc 0 3 45 46 47 f 3 48 49 50 mu 0 3 34 33 32 mc 0 3 48 49 50 f 3 51 52 53 mu 0 3 34 35 33 mc 0 3 51 52 53 f 3 54 55 56 mu 0 3 38 37 36 mc 0 3 54 55 56 f 3 57 58 59 mu 0 3 38 39 37 mc 0 3 57 58 59 f 3 60 61 62 mu 0 3 42 41 40 mc 0 3 60 61 62 f 3 63 64 65 mu 0 3 42 43 41 mc 0 3 63 64 65 f 3 66 67 68 mu 0 3 46 45 44 mc 0 3 66 67 68 f 3 69 70 71 mu 0 3 46 47 45 mc 0 3 69 70 71 f 3 72 73 74 mu 0 3 50 49 48 mc 0 3 72 73 74 f 3 75 76 77 mu 0 3 50 51 49 mc 0 3 75 76 77 f 3 78 79 80 mu 0 3 54 53 52 mc 0 3 78 79 80 f 3 81 82 83 mu 0 3 54 55 53 mc 0 3 81 82 83 f 3 84 85 86 mu 0 3 58 57 56 mc 0 3 84 85 86 f 3 87 88 89 mu 0 3 58 59 57 mc 0 3 87 88 89 f 3 90 91 92 mu 0 3 62 61 60 mc 0 3 90 91 92 f 3 93 94 95 mu 0 3 62 63 61 mc 0 3 93 94 95 f 3 96 97 98 mu 0 3 66 65 64 mc 0 3 96 97 98 f 3 99 100 101 mu 0 3 66 67 65 mc 0 3 99 100 101 f 3 102 103 104 mu 0 3 70 69 68 mc 0 3 102 103 104 f 3 105 106 107 mu 0 3 70 71 69 mc 0 3 105 106 107 f 3 108 109 110 mu 0 3 74 73 72 mc 0 3 108 109 110 f 3 111 112 113 mu 0 3 75 73 74 mc 0 3 111 112 113 f 3 114 115 116 mu 0 3 75 76 73 mc 0 3 114 115 116 f 3 117 118 119 mu 0 3 77 76 75 mc 0 3 117 118 119 f 3 120 121 122 mu 0 3 77 78 76 mc 0 3 120 121 122 f 3 123 124 125 mu 0 3 79 78 77 mc 0 3 123 124 125 f 3 126 127 128 mu 0 3 80 78 79 mc 0 3 126 127 128 f 3 129 130 131 mu 0 3 80 81 78 mc 0 3 129 130 131 f 3 132 133 134 mu 0 3 84 83 82 mc 0 3 132 133 134 f 3 135 136 137 mu 0 3 84 85 83 mc 0 3 135 136 137 f 3 138 139 140 mu 0 3 86 85 84 mc 0 3 138 139 140 f 3 141 142 143 mu 0 3 86 87 85 mc 0 3 141 142 143 f 3 144 145 146 mu 0 3 88 87 86 mc 0 3 144 145 146 f 3 147 148 149 mu 0 3 88 89 87 mc 0 3 147 148 149 f 3 150 151 152 mu 0 3 88 90 89 mc 0 3 150 151 152 f 3 153 154 155 mu 0 3 90 88 91 mc 0 3 153 154 155 f 3 156 157 158 mu 0 3 94 93 92 mc 0 3 156 157 158 f 3 159 160 161 mu 0 3 94 95 93 mc 0 3 159 160 161 f 3 162 163 164 mu 0 3 96 95 94 mc 0 3 162 163 164 f 3 165 166 167 mu 0 3 96 97 95 mc 0 3 165 166 167 f 3 168 169 170 mu 0 3 96 98 97 mc 0 3 168 169 170 f 3 171 172 173 mu 0 3 99 98 96 mc 0 3 171 172 173 f 3 174 175 176 mu 0 3 100 98 99 mc 0 3 174 175 176 f 3 177 178 179 mu 0 3 98 100 101 mc 0 3 177 178 179 f 3 180 181 182 mu 0 3 104 103 102 mc 0 3 180 181 182 f 3 183 184 185 mu 0 3 104 105 103 mc 0 3 183 184 185 f 3 186 187 188 mu 0 3 104 106 105 mc 0 3 186 187 188 f 3 189 190 191 mu 0 3 107 106 104 mc 0 3 189 190 191 f 3 192 193 194 mu 0 3 107 108 106 mc 0 3 192 193 194 f 3 195 196 197 mu 0 3 109 108 107 mc 0 3 195 196 197 f 3 198 199 200 mu 0 3 110 108 109 mc 0 3 198 199 200 f 3 201 202 203 mu 0 3 110 111 108 mc 0 3 201 202 203 f 3 204 205 206 mu 0 3 114 113 112 mc 0 3 204 205 206 f 3 207 208 209 mu 0 3 115 113 114 mc 0 3 207 208 209 f 3 210 211 212 mu 0 3 116 115 114 mc 0 3 210 211 212 f 3 213 214 215 mu 0 3 115 116 117 mc 0 3 213 214 215 f 3 216 217 218 mu 0 3 115 118 113 mc 0 3 216 217 218 f 3 219 220 221 mu 0 3 115 119 118 mc 0 3 219 220 221 f 3 222 223 224 mu 0 3 122 121 120 mc 0 3 222 223 224 f 3 225 226 227 mu 0 3 123 121 122 mc 0 3 225 226 227 f 3 228 229 230 mu 0 3 124 123 122 mc 0 3 228 229 230 f 3 231 232 233 mu 0 3 125 123 124 mc 0 3 231 232 233 f 3 234 235 236 mu 0 3 123 126 121 mc 0 3 234 235 236 f 3 237 238 239 mu 0 3 126 123 127 mc 0 3 237 238 239;
setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;

createNode shadingEngine -n "mtl_weapon_ak47SG";
    setAttr ".ihi" 0;
    setAttr ".ro" yes;
createNode materialInfo -n "mtl_weapon_ak47MI";
createNode phong -n "mtl_weapon_ak47";
    setAttr ".ambc" -type "float3" 1 1 1 ;
createNode file -n "mtl_weapon_ak47FILE";
    setAttr ".ftn" -type "string" "_images\\weapon_ak47_c.png";
createNode place2dTexture -n "mtl_weapon_ak47P2DT";

connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr "mtl_weapon_ak47SG.msg" "lightLinker1.lnk[2].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[2].sllk";
connectAttr "mtl_weapon_ak47SG.msg" "lightLinker1.slnk[2].solk";
connectAttr "mtl_weapon_ak47.oc" "mtl_weapon_ak47SG.ss";
connectAttr "mtl_weapon_ak47SG.msg" "mtl_weapon_ak47MI.sg";
connectAttr "mtl_weapon_ak47.msg" "mtl_weapon_ak47MI.m";
connectAttr "mtl_weapon_ak47FILE.msg" "mtl_weapon_ak47MI.t" -na;
connectAttr "mtl_weapon_ak47FILE.oc" "mtl_weapon_ak47.c";
connectAttr "mtl_weapon_ak47P2DT.c" "mtl_weapon_ak47FILE.c";
connectAttr "mtl_weapon_ak47P2DT.tf" "mtl_weapon_ak47FILE.tf";
connectAttr "mtl_weapon_ak47P2DT.rf" "mtl_weapon_ak47FILE.rf";
connectAttr "mtl_weapon_ak47P2DT.mu" "mtl_weapon_ak47FILE.mu";
connectAttr "mtl_weapon_ak47P2DT.mv" "mtl_weapon_ak47FILE.mv";
connectAttr "mtl_weapon_ak47P2DT.s" "mtl_weapon_ak47FILE.s";
connectAttr "mtl_weapon_ak47P2DT.wu" "mtl_weapon_ak47FILE.wu";
connectAttr "mtl_weapon_ak47P2DT.wv" "mtl_weapon_ak47FILE.wv";
connectAttr "mtl_weapon_ak47P2DT.re" "mtl_weapon_ak47FILE.re";
connectAttr "mtl_weapon_ak47P2DT.of" "mtl_weapon_ak47FILE.of";
connectAttr "mtl_weapon_ak47P2DT.r" "mtl_weapon_ak47FILE.ro";
connectAttr "mtl_weapon_ak47P2DT.n" "mtl_weapon_ak47FILE.n";
connectAttr "mtl_weapon_ak47P2DT.vt1" "mtl_weapon_ak47FILE.vt1";
connectAttr "mtl_weapon_ak47P2DT.vt2" "mtl_weapon_ak47FILE.vt2";
connectAttr "mtl_weapon_ak47P2DT.vt3" "mtl_weapon_ak47FILE.vt3";
connectAttr "mtl_weapon_ak47P2DT.vc1" "mtl_weapon_ak47FILE.vc1";
connectAttr "mtl_weapon_ak47P2DT.o" "mtl_weapon_ak47FILE.uv";
connectAttr "mtl_weapon_ak47P2DT.ofs" "mtl_weapon_ak47FILE.fs";

connectAttr "mtl_weapon_ak47SG.pa" ":renderPartition.st" -na;
connectAttr "mtl_weapon_ak47.msg" ":defaultShaderList1.s" -na;
connectAttr "mtl_weapon_ak47P2DT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mtl_weapon_ak47FILE.msg" ":defaultTextureList1.tx" -na;

connectAttr "mtl_weapon_ak47SG.mwc" "MeshShape_0.iog.og[0].gco";
connectAttr "MeshShape_0.iog" "mtl_weapon_ak47SG.dsm" -na;
createNode transform -n "Joints";
setAttr ".ove" yes;

createNode joint -n "tag_clip" -p "Joints";
addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
setAttr ".uoc" yes;
setAttr ".ove" yes;
setAttr ".t" -type "double3"  0.000000 0.000000 0.000000 ;
setAttr ".mnrl" -type "double3" -360 -360 -360 ;
setAttr ".mxrl" -type "double3" 360 360 360 ;
setAttr ".radi"   0.50;
setAttr ".jo" -type "double3" 0.000000 -0.000000 0.000000;
setAttr ".scale" -type "double3" 1.000000 1.000000 1.000000;

