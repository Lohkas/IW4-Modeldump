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
createNode transform -n "weapon_ak74u_clip_LOD0";
setAttr ".ove" yes;
createNode transform -n "WraithMesh_58f5b160_00" -p "weapon_ak74u_clip_LOD0";
setAttr ".rp" -type "double3" 0.000000 0.000000 0.000000 ;
setAttr ".sp" -type "double3" 0.000000 0.000000 0.000000 ;
createNode mesh -n "MeshShape_0" -p "WraithMesh_58f5b160_00";
setAttr -k off ".v";
setAttr ".vir" yes;
setAttr ".vif" yes;
setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:114]";
setAttr ".uvst[0].uvsn" -type "string" "map1";
setAttr -s 114 ".uvst[0].uvsp";
setAttr ".uvst[0].uvsp[0:113]" -type "float2" 0.251709 0.108887 0.242432 0.108887 0.251709 0.084473 0.242432 0.084473 0.242432 0.144531 0.242432 0.164062 0.251709 0.144531 0.251709 0.164062 0.242432 0.133301 0.242432 0.144531 0.251709 0.133301 0.251709 0.144531 0.242432 0.153320 0.251709 0.153320 0.242432 0.164062 0.251709 0.164062 0.242432 0.108887 0.251709 0.108887 0.242432 0.153320 0.251709 0.153320 0.242432 0.084473 0.242432 0.133301 0.251709 0.084473 0.251709 0.133301 0.309082 0.087402 0.259521 0.087402 0.309082 0.140625 0.259521 0.140625 0.309082 0.211426 0.259521 0.211426 0.259521 0.306641 0.309082 0.306641 0.309082 0.366699 0.259521 0.366699 0.309082 0.408203 0.259521 0.408203 0.081299 0.018555 0.024918 0.083984 0.140747 0.079102 0.076050 0.137695 0.198975 0.166016 0.122192 0.207520 0.236206 0.281250 0.159668 0.298340 0.171997 0.368652 0.248779 0.364746 0.249512 0.429688 0.176025 0.429688 0.024918 0.083984 0.005413 0.106445 0.076050 0.137695 0.057587 0.153320 0.122192 0.207520 0.100098 0.217773 0.159668 0.298340 0.135010 0.302734 0.171997 0.368652 0.143555 0.367188 0.176025 0.429688 0.151855 0.427734 0.081299 0.018555 0.140747 0.079102 0.024918 0.083984 0.076050 0.137695 0.198975 0.166016 0.122192 0.207520 0.236206 0.281250 0.159668 0.298340 0.171997 0.368652 0.248779 0.364746 0.249512 0.429688 0.176025 0.429688 0.024918 0.083984 0.076050 0.137695 0.005413 0.106445 0.057587 0.153320 0.122192 0.207520 0.100098 0.217773 0.159668 0.298340 0.135010 0.302734 0.143555 0.367188 0.171997 0.368652 0.176025 0.429688 0.151855 0.427734 0.295166 0.087402 0.271484 0.087402 0.295166 0.107422 0.271484 0.107422 0.271484 0.171875 0.295166 0.171875 0.271484 0.257324 0.295166 0.257324 0.295166 0.321777 0.271484 0.321777 0.271484 0.381836 0.295166 0.381836 0.251953 0.432617 0.189819 0.432617 0.251953 0.472168 0.189819 0.472168 0.168579 0.461426 0.168579 0.442871 0.207397 0.080566 0.215698 0.168457 0.251953 0.080566 0.244385 0.168457 0.242554 0.189453 0.217651 0.189453 0.251953 0.080566 0.244385 0.168457 0.207397 0.080566 0.215698 0.168457 0.217651 0.189453 0.242554 0.189453;
setAttr ".cuvs" -type "string" "map1";
setAttr ".dcol" yes;
setAttr ".dcc" -type "string" "Ambient+Diffuse";
setAttr ".ccls" -type "string" "colorSet1";
setAttr ".clst[0].clsn" -type "string" "colorSet1";
setAttr -s 252 ".clst[0].clsp";
setAttr ".clst[0].clsp[0:251]" 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000;
setAttr ".covm[0]"  0 1 1;
setAttr ".cdvm[0]"  0 1 1;
setAttr -s 114 ".vt";
setAttr ".vt[0:113]" 6.143994 -1.660230 -21.082714 6.675342 -1.660233 -21.643131 6.143994 1.704691 -21.082714 6.675344 1.704691 -21.643133 11.548719 0.805691 -15.108741 11.548722 -0.761230 -15.108744 11.102852 0.805691 -14.694786 11.102852 -0.761230 -14.694786 10.559910 1.523220 -16.444580 11.548719 0.805691 -15.108741 10.097798 1.523218 -16.002794 11.102852 0.805691 -14.694786 10.559910 -1.478760 -16.444580 10.097801 -1.478763 -16.002794 11.548722 -0.761230 -15.108744 11.102852 -0.761230 -14.694786 6.675342 -1.660233 -21.643131 6.143994 -1.660230 -21.082714 10.559910 -1.478760 -16.444580 10.097801 -1.478763 -16.002794 6.675344 1.704691 -21.643133 10.559910 1.523220 -16.444580 6.143994 1.704691 -21.082714 10.097798 1.523218 -16.002794 6.544328 -1.434201 -20.904945 6.544328 1.478656 -20.904947 3.059463 -1.434201 -16.988550 3.059463 1.478656 -16.988550 -0.464400 -1.434198 -11.137177 -0.464400 1.478659 -11.137183 -2.431628 1.478659 -4.727623 -2.431628 -1.434198 -4.727623 -3.201144 -1.434198 0.357868 -3.201144 1.478659 0.357868 -3.201144 -1.434198 3.748829 -3.201144 1.478659 3.748829 6.544328 1.478656 -20.904947 9.817554 1.323658 -16.727051 3.059463 1.478656 -16.988550 6.867950 1.323655 -13.464384 -0.464400 1.478659 -11.137183 3.816484 1.323655 -8.910500 -2.431628 1.478659 -4.727623 2.187753 1.323655 -3.701798 1.556337 1.323655 0.540680 -3.201144 1.478659 0.357868 -3.201144 1.478659 3.748829 1.556337 1.323655 3.748829 9.817554 1.323658 -16.727051 10.987953 0.544370 -15.236640 6.867950 1.323655 -13.464384 7.977236 0.544370 -12.411718 3.816484 1.323655 -8.910500 5.136876 0.544370 -8.174829 2.187753 1.323655 -3.701798 3.512345 0.544370 -3.323564 1.556337 1.323655 0.540680 3.052867 0.544370 0.595287 1.556337 1.323655 3.748829 3.052867 0.750443 3.782749 6.544328 -1.434201 -20.904945 3.059463 -1.434201 -16.988550 9.817554 -1.279197 -16.727051 6.867950 -1.279197 -13.464384 -0.464400 -1.434198 -11.137177 3.816484 -1.279197 -8.910500 -2.431628 -1.434198 -4.727623 2.187753 -1.279197 -3.701798 1.556334 -1.279197 0.540680 -3.201144 -1.434198 0.357868 -3.201144 -1.434198 3.748829 1.556334 -1.279197 3.748829 9.817554 -1.279197 -16.727051 6.867950 -1.279197 -13.464384 10.987950 -0.499913 -15.236640 7.977236 -0.499913 -12.411718 3.816484 -1.279197 -8.910500 5.136876 -0.499913 -8.174829 2.187753 -1.279197 -3.701798 3.512345 -0.499913 -3.323564 3.052867 -0.499913 0.595287 1.556334 -1.279197 0.540680 1.556334 -1.279197 3.748829 3.052867 -0.705985 3.782749 10.987953 0.544370 -15.236640 10.987950 -0.499913 -15.236640 7.977236 0.544370 -12.411718 7.977236 -0.499913 -12.411718 5.136876 -0.499913 -8.174829 5.136876 0.544370 -8.174829 3.512345 -0.499913 -3.323564 3.512345 0.544370 -3.323564 3.052867 0.544370 0.595287 3.052867 -0.499913 0.595287 3.052867 -0.705985 3.782749 3.052867 0.750443 3.782749 -3.201144 1.478659 3.748829 1.556337 1.323655 3.748829 -3.201144 -1.434198 3.748829 1.556334 -1.279197 3.748829 3.052867 -0.705985 3.782749 3.052867 0.750443 3.782749 6.675342 -1.660233 -21.643131 10.559910 -1.478760 -16.444580 6.675344 1.704691 -21.643133 10.559910 1.523220 -16.444580 11.548719 0.805691 -15.108741 11.548722 -0.761230 -15.108744 6.143994 1.704691 -21.082714 10.097798 1.523218 -16.002794 6.143994 -1.660230 -21.082714 10.097801 -1.478763 -16.002794 11.102852 -0.761230 -14.694786 11.102852 0.805691 -14.694786;
setAttr -s 252 ".ed";
setAttr ".ed[0:251]" 2 1 0 1 0 0 0 2 0 3 1 0 1 2 0 2 3 0 6 5 0 5 4 0 4 6 0 7 5 0 5 6 0 6 7 0 10 9 0 9 8 0 8 10 0 11 9 0 9 10 0 10 11 0 14 13 0 13 12 0 12 14 0 15 13 0 13 14 0 14 15 0 18 17 0 17 16 0 16 18 0 19 17 0 17 18 0 18 19 0 22 21 0 21 20 0 20 22 0 23 21 0 21 22 0 22 23 0 26 25 0 25 24 0 24 26 0 26 27 0 27 25 0 25 26 0 28 27 0 27 26 0 26 28 0 28 29 0 29 27 0 27 28 0 28 30 0 30 29 0 29 28 0 31 30 0 30 28 0 28 31 0 32 30 0 30 31 0 31 32 0 32 33 0 33 30 0 30 32 0 34 33 0 33 32 0 32 34 0 33 34 0 34 35 0 35 33 0 38 37 0 37 36 0 36 38 0 38 39 0 39 37 0 37 38 0 40 39 0 39 38 0 38 40 0 40 41 0 41 39 0 39 40 0 42 41 0 41 40 0 40 42 0 42 43 0 43 41 0 41 42 0 42 44 0 44 43 0 43 42 0 45 44 0 44 42 0 42 45 0 46 44 0 44 45 0 45 46 0 46 47 0 47 44 0 44 46 0 50 49 0 49 48 0 48 50 0 50 51 0 51 49 0 49 50 0 52 51 0 51 50 0 50 52 0 52 53 0 53 51 0 51 52 0 54 53 0 53 52 0 52 54 0 54 55 0 55 53 0 53 54 0 56 55 0 55 54 0 54 56 0 56 57 0 57 55 0 55 56 0 58 57 0 57 56 0 56 58 0 59 57 0 57 58 0 58 59 0 62 61 0 61 60 0 60 62 0 63 61 0 61 62 0 62 63 0 63 64 0 64 61 0 61 63 0 65 64 0 64 63 0 63 65 0 65 66 0 66 64 0 64 65 0 67 66 0 66 65 0 65 67 0 68 66 0 66 67 0 67 68 0 68 69 0 69 66 0 66 68 0 68 70 0 70 69 0 69 68 0 71 70 0 70 68 0 68 71 0 74 73 0 73 72 0 72 74 0 75 73 0 73 74 0 74 75 0 75 76 0 76 73 0 73 75 0 77 76 0 76 75 0 75 77 0 77 78 0 78 76 0 76 77 0 79 78 0 78 77 0 77 79 0 80 78 0 78 79 0 79 80 0 80 81 0 81 78 0 78 80 0 80 82 0 82 81 0 81 80 0 83 82 0 82 80 0 80 83 0 86 85 0 85 84 0 84 86 0 86 87 0 87 85 0 85 86 0 86 88 0 88 87 0 87 86 0 89 88 0 88 86 0 86 89 0 89 90 0 90 88 0 88 89 0 91 90 0 90 89 0 89 91 0 92 90 0 90 91 0 91 92 0 92 93 0 93 90 0 90 92 0 92 94 0 94 93 0 93 92 0 94 92 0 92 95 0 95 94 0 98 97 0 97 96 0 96 98 0 99 97 0 97 98 0 98 99 0 100 97 0 97 99 0 99 100 0 101 97 0 97 100 0 100 101 0 104 103 0 103 102 0 102 104 0 105 103 0 103 104 0 104 105 0 106 103 0 103 105 0 105 106 0 107 103 0 103 106 0 106 107 0 110 109 0 109 108 0 108 110 0 111 109 0 109 110 0 110 111 0 112 109 0 109 111 0 111 112 0 113 109 0 109 112 0 112 113 0;
setAttr -s 252 ".n";
setAttr ".n[0:251]" -type "float3" -0.724409 0.000000 -0.685039 -0.724409 0.000000 -0.685039 -0.724409 0.000000 -0.685039 -0.724409 0.000000 -0.685039 -0.724409 0.000000 -0.685039 -0.724409 0.000000 -0.685039 0.677165 0.000000 0.732283 0.677165 0.000000 0.732283 0.677165 0.000000 0.732283 0.677165 0.000000 0.732283 0.677165 0.000000 0.732283 0.677165 0.000000 0.732283 0.275591 0.913386 0.291339 0.275591 0.913386 0.291339 0.275591 0.913386 0.291339 0.275591 0.913386 0.291339 0.275591 0.913386 0.291339 0.275591 0.913386 0.291339 0.275591 -0.913386 0.291339 0.275591 -0.913386 0.291339 0.275591 -0.913386 0.291339 0.275591 -0.913386 0.291339 0.275591 -0.913386 0.291339 0.275591 -0.913386 0.291339 0.023622 -1.000000 0.023622 0.023622 -1.000000 0.023622 0.023622 -1.000000 0.023622 0.023622 -1.000000 0.023622 0.023622 -1.000000 0.023622 0.023622 -1.000000 0.023622 0.023622 1.000000 0.023622 0.023622 1.000000 0.023622 0.023622 1.000000 0.023622 0.023622 1.000000 0.023622 0.023622 1.000000 0.023622 0.023622 1.000000 0.023622 -0.803150 0.000000 -0.590551 -0.748031 0.000000 -0.661417 -0.748031 0.000000 -0.661417 -0.803150 0.000000 -0.590551 -0.803150 0.000000 -0.590551 -0.748031 0.000000 -0.661417 -0.913386 0.000000 -0.409449 -0.803150 0.000000 -0.590551 -0.803150 0.000000 -0.590551 -0.913386 0.000000 -0.409449 -0.913386 0.000000 -0.409449 -0.803150 0.000000 -0.590551 -0.913386 0.000000 -0.409449 -0.976378 0.000000 -0.220472 -0.913386 0.000000 -0.409449 -0.976378 0.000000 -0.220472 -0.976378 0.000000 -0.220472 -0.913386 0.000000 -0.409449 -1.000000 0.000000 -0.078740 -0.976378 0.000000 -0.220472 -0.976378 0.000000 -0.220472 -1.000000 0.000000 -0.078740 -1.000000 0.000000 -0.078740 -0.976378 0.000000 -0.220472 -1.000000 0.000000 0.000000 -1.000000 0.000000 -0.078740 -1.000000 0.000000 -0.078740 -1.000000 0.000000 -0.078740 -1.000000 0.000000 0.000000 -1.000000 0.000000 0.000000 0.023622 1.000000 0.015748 0.023622 1.000000 0.023622 0.023622 1.000000 0.023622 0.023622 1.000000 0.015748 0.023622 1.000000 0.015748 0.023622 1.000000 0.023622 0.031496 1.000000 0.015748 0.023622 1.000000 0.015748 0.023622 1.000000 0.015748 0.031496 1.000000 0.015748 0.031496 1.000000 0.015748 0.023622 1.000000 0.015748 0.031496 1.000000 0.007874 0.031496 1.000000 0.015748 0.031496 1.000000 0.015748 0.031496 1.000000 0.007874 0.031496 1.000000 0.007874 0.031496 1.000000 0.015748 0.031496 1.000000 0.007874 0.031496 1.000000 0.000000 0.031496 1.000000 0.007874 0.031496 1.000000 0.000000 0.031496 1.000000 0.000000 0.031496 1.000000 0.007874 0.031496 1.000000 0.000000 0.031496 1.000000 0.000000 0.031496 1.000000 0.000000 0.031496 1.000000 0.000000 0.031496 1.000000 0.000000 0.031496 1.000000 0.000000 0.338583 0.897638 0.275591 0.299213 0.905512 0.291339 0.299213 0.905512 0.291339 0.338583 0.897638 0.275591 0.338583 0.897638 0.275591 0.299213 0.905512 0.291339 0.417323 0.881890 0.204724 0.338583 0.897638 0.275591 0.338583 0.897638 0.275591 0.417323 0.881890 0.204724 0.417323 0.881890 0.204724 0.338583 0.897638 0.275591 0.464567 0.881890 0.102362 0.417323 0.881890 0.204724 0.417323 0.881890 0.204724 0.464567 0.881890 0.102362 0.464567 0.881890 0.102362 0.417323 0.881890 0.204724 0.440945 0.897638 0.015748 0.464567 0.881890 0.102362 0.464567 0.881890 0.102362 0.440945 0.897638 0.015748 0.440945 0.897638 0.015748 0.464567 0.881890 0.102362 0.409449 0.913386 -0.031496 0.440945 0.897638 0.015748 0.440945 0.897638 0.015748 0.409449 0.913386 -0.031496 0.440945 0.897638 0.015748 0.409449 0.913386 -0.031496 0.023622 -1.000000 0.023622 0.023622 -1.000000 0.015748 0.023622 -1.000000 0.023622 0.023622 -1.000000 0.015748 0.023622 -1.000000 0.015748 0.023622 -1.000000 0.023622 0.023622 -1.000000 0.015748 0.031496 -1.000000 0.015748 0.023622 -1.000000 0.015748 0.031496 -1.000000 0.015748 0.031496 -1.000000 0.015748 0.023622 -1.000000 0.015748 0.031496 -1.000000 0.015748 0.031496 -1.000000 0.007874 0.031496 -1.000000 0.015748 0.031496 -1.000000 0.007874 0.031496 -1.000000 0.007874 0.031496 -1.000000 0.015748 0.031496 -1.000000 0.000000 0.031496 -1.000000 0.007874 0.031496 -1.000000 0.007874 0.031496 -1.000000 0.000000 0.031496 -1.000000 0.000000 0.031496 -1.000000 0.007874 0.031496 -1.000000 0.000000 0.031496 -1.000000 0.000000 0.031496 -1.000000 0.000000 0.031496 -1.000000 0.000000 0.031496 -1.000000 0.000000 0.031496 -1.000000 0.000000 0.299213 -0.905512 0.291339 0.338583 -0.897638 0.275591 0.299213 -0.905512 0.291339 0.338583 -0.897638 0.275591 0.338583 -0.897638 0.275591 0.299213 -0.905512 0.291339 0.338583 -0.897638 0.275591 0.417323 -0.881890 0.204724 0.338583 -0.897638 0.275591 0.417323 -0.881890 0.204724 0.417323 -0.881890 0.204724 0.338583 -0.897638 0.275591 0.417323 -0.881890 0.204724 0.464567 -0.881890 0.102362 0.417323 -0.881890 0.204724 0.464567 -0.881890 0.102362 0.464567 -0.881890 0.102362 0.417323 -0.881890 0.204724 0.440945 -0.897638 0.015748 0.464567 -0.881890 0.102362 0.464567 -0.881890 0.102362 0.440945 -0.897638 0.015748 0.440945 -0.897638 0.015748 0.464567 -0.881890 0.102362 0.440945 -0.897638 0.015748 0.409449 -0.913386 -0.031496 0.440945 -0.897638 0.015748 0.409449 -0.913386 -0.031496 0.409449 -0.913386 -0.031496 0.440945 -0.897638 0.015748 0.763780 0.000000 0.645669 0.685039 0.000000 0.732283 0.685039 0.000000 0.732283 0.763780 0.000000 0.645669 0.763780 0.000000 0.645669 0.685039 0.000000 0.732283 0.763780 0.000000 0.645669 0.897638 0.000000 0.440945 0.763780 0.000000 0.645669 0.897638 0.000000 0.440945 0.897638 0.000000 0.440945 0.763780 0.000000 0.645669 0.897638 0.000000 0.440945 0.976378 0.000000 0.220472 0.897638 0.000000 0.440945 0.976378 0.000000 0.220472 0.976378 0.000000 0.220472 0.897638 0.000000 0.440945 1.000000 0.000000 0.055118 0.976378 0.000000 0.220472 0.976378 0.000000 0.220472 1.000000 0.000000 0.055118 1.000000 0.000000 0.055118 0.976378 0.000000 0.220472 1.000000 0.000000 0.055118 1.000000 0.000000 0.000000 1.000000 0.000000 0.055118 1.000000 0.000000 0.000000 1.000000 0.000000 0.055118 1.000000 0.000000 0.000000 -0.007874 0.000000 1.000000 -0.007874 0.000000 1.000000 -0.007874 0.000000 1.000000 -0.007874 0.000000 1.000000 -0.007874 0.000000 1.000000 -0.007874 0.000000 1.000000 -0.007874 0.000000 1.000000 -0.007874 0.000000 1.000000 -0.007874 0.000000 1.000000 -0.007874 0.000000 1.000000 -0.007874 0.000000 1.000000 -0.007874 0.000000 1.000000 0.803150 0.000000 -0.598425 0.803150 0.000000 -0.598425 0.803150 0.000000 -0.598425 0.803150 0.000000 -0.598425 0.803150 0.000000 -0.598425 0.803150 0.000000 -0.598425 0.803150 0.000000 -0.598425 0.803150 0.000000 -0.598425 0.803150 0.000000 -0.598425 0.803150 0.000000 -0.598425 0.803150 0.000000 -0.598425 0.803150 0.000000 -0.598425 -0.787402 0.000000 0.614173 -0.787402 0.000000 0.614173 -0.787402 0.000000 0.614173 -0.787402 0.000000 0.614173 -0.787402 0.000000 0.614173 -0.787402 0.000000 0.614173 -0.787402 0.000000 0.614173 -0.787402 0.000000 0.614173 -0.787402 0.000000 0.614173 -0.787402 0.000000 0.614173 -0.787402 0.000000 0.614173 -0.787402 0.000000 0.614173;
setAttr -s 84 ".fc[0:83]" -type "polyFaces" f 3 0 1 2 mu 0 3 2 1 0 mc 0 3 0 1 2 f 3 3 4 5 mu 0 3 3 1 2 mc 0 3 3 4 5 f 3 6 7 8 mu 0 3 6 5 4 mc 0 3 6 7 8 f 3 9 10 11 mu 0 3 7 5 6 mc 0 3 9 10 11 f 3 12 13 14 mu 0 3 10 9 8 mc 0 3 12 13 14 f 3 15 16 17 mu 0 3 11 9 10 mc 0 3 15 16 17 f 3 18 19 20 mu 0 3 14 13 12 mc 0 3 18 19 20 f 3 21 22 23 mu 0 3 15 13 14 mc 0 3 21 22 23 f 3 24 25 26 mu 0 3 18 17 16 mc 0 3 24 25 26 f 3 27 28 29 mu 0 3 19 17 18 mc 0 3 27 28 29 f 3 30 31 32 mu 0 3 22 21 20 mc 0 3 30 31 32 f 3 33 34 35 mu 0 3 23 21 22 mc 0 3 33 34 35 f 3 36 37 38 mu 0 3 26 25 24 mc 0 3 36 37 38 f 3 39 40 41 mu 0 3 26 27 25 mc 0 3 39 40 41 f 3 42 43 44 mu 0 3 28 27 26 mc 0 3 42 43 44 f 3 45 46 47 mu 0 3 28 29 27 mc 0 3 45 46 47 f 3 48 49 50 mu 0 3 28 30 29 mc 0 3 48 49 50 f 3 51 52 53 mu 0 3 31 30 28 mc 0 3 51 52 53 f 3 54 55 56 mu 0 3 32 30 31 mc 0 3 54 55 56 f 3 57 58 59 mu 0 3 32 33 30 mc 0 3 57 58 59 f 3 60 61 62 mu 0 3 34 33 32 mc 0 3 60 61 62 f 3 63 64 65 mu 0 3 33 34 35 mc 0 3 63 64 65 f 3 66 67 68 mu 0 3 38 37 36 mc 0 3 66 67 68 f 3 69 70 71 mu 0 3 38 39 37 mc 0 3 69 70 71 f 3 72 73 74 mu 0 3 40 39 38 mc 0 3 72 73 74 f 3 75 76 77 mu 0 3 40 41 39 mc 0 3 75 76 77 f 3 78 79 80 mu 0 3 42 41 40 mc 0 3 78 79 80 f 3 81 82 83 mu 0 3 42 43 41 mc 0 3 81 82 83 f 3 84 85 86 mu 0 3 42 44 43 mc 0 3 84 85 86 f 3 87 88 89 mu 0 3 45 44 42 mc 0 3 87 88 89 f 3 90 91 92 mu 0 3 46 44 45 mc 0 3 90 91 92 f 3 93 94 95 mu 0 3 46 47 44 mc 0 3 93 94 95 f 3 96 97 98 mu 0 3 50 49 48 mc 0 3 96 97 98 f 3 99 100 101 mu 0 3 50 51 49 mc 0 3 99 100 101 f 3 102 103 104 mu 0 3 52 51 50 mc 0 3 102 103 104 f 3 105 106 107 mu 0 3 52 53 51 mc 0 3 105 106 107 f 3 108 109 110 mu 0 3 54 53 52 mc 0 3 108 109 110 f 3 111 112 113 mu 0 3 54 55 53 mc 0 3 111 112 113 f 3 114 115 116 mu 0 3 56 55 54 mc 0 3 114 115 116 f 3 117 118 119 mu 0 3 56 57 55 mc 0 3 117 118 119 f 3 120 121 122 mu 0 3 58 57 56 mc 0 3 120 121 122 f 3 123 124 125 mu 0 3 59 57 58 mc 0 3 123 124 125 f 3 126 127 128 mu 0 3 62 61 60 mc 0 3 126 127 128 f 3 129 130 131 mu 0 3 63 61 62 mc 0 3 129 130 131 f 3 132 133 134 mu 0 3 63 64 61 mc 0 3 132 133 134 f 3 135 136 137 mu 0 3 65 64 63 mc 0 3 135 136 137 f 3 138 139 140 mu 0 3 65 66 64 mc 0 3 138 139 140 f 3 141 142 143 mu 0 3 67 66 65 mc 0 3 141 142 143 f 3 144 145 146 mu 0 3 68 66 67 mc 0 3 144 145 146 f 3 147 148 149 mu 0 3 68 69 66 mc 0 3 147 148 149 f 3 150 151 152 mu 0 3 68 70 69 mc 0 3 150 151 152 f 3 153 154 155 mu 0 3 71 70 68 mc 0 3 153 154 155 f 3 156 157 158 mu 0 3 74 73 72 mc 0 3 156 157 158 f 3 159 160 161 mu 0 3 75 73 74 mc 0 3 159 160 161 f 3 162 163 164 mu 0 3 75 76 73 mc 0 3 162 163 164 f 3 165 166 167 mu 0 3 77 76 75 mc 0 3 165 166 167 f 3 168 169 170 mu 0 3 77 78 76 mc 0 3 168 169 170 f 3 171 172 173 mu 0 3 79 78 77 mc 0 3 171 172 173 f 3 174 175 176 mu 0 3 80 78 79 mc 0 3 174 175 176 f 3 177 178 179 mu 0 3 80 81 78 mc 0 3 177 178 179 f 3 180 181 182 mu 0 3 80 82 81 mc 0 3 180 181 182 f 3 183 184 185 mu 0 3 83 82 80 mc 0 3 183 184 185 f 3 186 187 188 mu 0 3 86 85 84 mc 0 3 186 187 188 f 3 189 190 191 mu 0 3 86 87 85 mc 0 3 189 190 191 f 3 192 193 194 mu 0 3 86 88 87 mc 0 3 192 193 194 f 3 195 196 197 mu 0 3 89 88 86 mc 0 3 195 196 197 f 3 198 199 200 mu 0 3 89 90 88 mc 0 3 198 199 200 f 3 201 202 203 mu 0 3 91 90 89 mc 0 3 201 202 203 f 3 204 205 206 mu 0 3 92 90 91 mc 0 3 204 205 206 f 3 207 208 209 mu 0 3 92 93 90 mc 0 3 207 208 209 f 3 210 211 212 mu 0 3 92 94 93 mc 0 3 210 211 212 f 3 213 214 215 mu 0 3 94 92 95 mc 0 3 213 214 215 f 3 216 217 218 mu 0 3 98 97 96 mc 0 3 216 217 218 f 3 219 220 221 mu 0 3 99 97 98 mc 0 3 219 220 221 f 3 222 223 224 mu 0 3 100 97 99 mc 0 3 222 223 224 f 3 225 226 227 mu 0 3 101 97 100 mc 0 3 225 226 227 f 3 228 229 230 mu 0 3 104 103 102 mc 0 3 228 229 230 f 3 231 232 233 mu 0 3 105 103 104 mc 0 3 231 232 233 f 3 234 235 236 mu 0 3 106 103 105 mc 0 3 234 235 236 f 3 237 238 239 mu 0 3 107 103 106 mc 0 3 237 238 239 f 3 240 241 242 mu 0 3 110 109 108 mc 0 3 240 241 242 f 3 243 244 245 mu 0 3 111 109 110 mc 0 3 243 244 245 f 3 246 247 248 mu 0 3 112 109 111 mc 0 3 246 247 248 f 3 249 250 251 mu 0 3 113 109 112 mc 0 3 249 250 251;
setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;

createNode shadingEngine -n "mtl_weapon_ak74u_misc_nocamoSG";
    setAttr ".ihi" 0;
    setAttr ".ro" yes;
createNode materialInfo -n "mtl_weapon_ak74u_misc_nocamoMI";
createNode phong -n "mtl_weapon_ak74u_misc_nocamo";
    setAttr ".ambc" -type "float3" 1 1 1 ;
createNode file -n "mtl_weapon_ak74u_misc_nocamoFILE";
    setAttr ".ftn" -type "string" "_images\\weapon_ak74u_col.png";
createNode place2dTexture -n "mtl_weapon_ak74u_misc_nocamoP2DT";

connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr "mtl_weapon_ak74u_misc_nocamoSG.msg" "lightLinker1.lnk[2].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[2].sllk";
connectAttr "mtl_weapon_ak74u_misc_nocamoSG.msg" "lightLinker1.slnk[2].solk";
connectAttr "mtl_weapon_ak74u_misc_nocamo.oc" "mtl_weapon_ak74u_misc_nocamoSG.ss";
connectAttr "mtl_weapon_ak74u_misc_nocamoSG.msg" "mtl_weapon_ak74u_misc_nocamoMI.sg";
connectAttr "mtl_weapon_ak74u_misc_nocamo.msg" "mtl_weapon_ak74u_misc_nocamoMI.m";
connectAttr "mtl_weapon_ak74u_misc_nocamoFILE.msg" "mtl_weapon_ak74u_misc_nocamoMI.t" -na;
connectAttr "mtl_weapon_ak74u_misc_nocamoFILE.oc" "mtl_weapon_ak74u_misc_nocamo.c";
connectAttr "mtl_weapon_ak74u_misc_nocamoP2DT.c" "mtl_weapon_ak74u_misc_nocamoFILE.c";
connectAttr "mtl_weapon_ak74u_misc_nocamoP2DT.tf" "mtl_weapon_ak74u_misc_nocamoFILE.tf";
connectAttr "mtl_weapon_ak74u_misc_nocamoP2DT.rf" "mtl_weapon_ak74u_misc_nocamoFILE.rf";
connectAttr "mtl_weapon_ak74u_misc_nocamoP2DT.mu" "mtl_weapon_ak74u_misc_nocamoFILE.mu";
connectAttr "mtl_weapon_ak74u_misc_nocamoP2DT.mv" "mtl_weapon_ak74u_misc_nocamoFILE.mv";
connectAttr "mtl_weapon_ak74u_misc_nocamoP2DT.s" "mtl_weapon_ak74u_misc_nocamoFILE.s";
connectAttr "mtl_weapon_ak74u_misc_nocamoP2DT.wu" "mtl_weapon_ak74u_misc_nocamoFILE.wu";
connectAttr "mtl_weapon_ak74u_misc_nocamoP2DT.wv" "mtl_weapon_ak74u_misc_nocamoFILE.wv";
connectAttr "mtl_weapon_ak74u_misc_nocamoP2DT.re" "mtl_weapon_ak74u_misc_nocamoFILE.re";
connectAttr "mtl_weapon_ak74u_misc_nocamoP2DT.of" "mtl_weapon_ak74u_misc_nocamoFILE.of";
connectAttr "mtl_weapon_ak74u_misc_nocamoP2DT.r" "mtl_weapon_ak74u_misc_nocamoFILE.ro";
connectAttr "mtl_weapon_ak74u_misc_nocamoP2DT.n" "mtl_weapon_ak74u_misc_nocamoFILE.n";
connectAttr "mtl_weapon_ak74u_misc_nocamoP2DT.vt1" "mtl_weapon_ak74u_misc_nocamoFILE.vt1";
connectAttr "mtl_weapon_ak74u_misc_nocamoP2DT.vt2" "mtl_weapon_ak74u_misc_nocamoFILE.vt2";
connectAttr "mtl_weapon_ak74u_misc_nocamoP2DT.vt3" "mtl_weapon_ak74u_misc_nocamoFILE.vt3";
connectAttr "mtl_weapon_ak74u_misc_nocamoP2DT.vc1" "mtl_weapon_ak74u_misc_nocamoFILE.vc1";
connectAttr "mtl_weapon_ak74u_misc_nocamoP2DT.o" "mtl_weapon_ak74u_misc_nocamoFILE.uv";
connectAttr "mtl_weapon_ak74u_misc_nocamoP2DT.ofs" "mtl_weapon_ak74u_misc_nocamoFILE.fs";

connectAttr "mtl_weapon_ak74u_misc_nocamoSG.pa" ":renderPartition.st" -na;
connectAttr "mtl_weapon_ak74u_misc_nocamo.msg" ":defaultShaderList1.s" -na;
connectAttr "mtl_weapon_ak74u_misc_nocamoP2DT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mtl_weapon_ak74u_misc_nocamoFILE.msg" ":defaultTextureList1.tx" -na;

connectAttr "mtl_weapon_ak74u_misc_nocamoSG.mwc" "MeshShape_0.iog.og[0].gco";
connectAttr "MeshShape_0.iog" "mtl_weapon_ak74u_misc_nocamoSG.dsm" -na;
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

