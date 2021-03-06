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
createNode transform -n "weapon_g36_clip_LOD0";
setAttr ".ove" yes;
createNode transform -n "WraithMesh_bcdbaee7_00" -p "weapon_g36_clip_LOD0";
setAttr ".rp" -type "double3" 0.000000 0.000000 0.000000 ;
setAttr ".sp" -type "double3" 0.000000 0.000000 0.000000 ;
createNode mesh -n "MeshShape_0" -p "WraithMesh_bcdbaee7_00";
setAttr -k off ".v";
setAttr ".vir" yes;
setAttr ".vif" yes;
setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:52]";
setAttr ".uvst[0].uvsn" -type "string" "map1";
setAttr -s 52 ".uvst[0].uvsp";
setAttr ".uvst[0].uvsp[0:51]" -type "float2" 0.128296 0.719238 0.128540 0.682129 0.269531 0.719238 0.269531 0.682129 0.778320 0.464844 0.778320 0.425293 0.894531 0.464844 0.894531 0.425293 0.778320 0.464844 0.894531 0.464844 0.778320 0.425293 0.894531 0.425293 0.778320 0.425293 0.778320 0.432617 0.894531 0.425293 0.894531 0.433594 0.894531 0.425293 0.886230 0.425293 0.894531 0.464844 0.886230 0.464355 0.778320 0.425293 0.894531 0.425293 0.778809 0.433105 0.894531 0.433594 0.894531 0.464844 0.886230 0.464355 0.894531 0.425293 0.886230 0.425293 0.271240 0.680908 0.129517 0.679443 0.296143 0.508057 0.157837 0.476562 0.335693 0.371094 0.206055 0.308105 0.129517 0.679443 0.271240 0.680908 0.161011 0.477539 0.297363 0.509033 0.204834 0.309082 0.335693 0.371094 0.005798 0.001953 0.005798 0.146484 0.066284 0.001953 0.066284 0.146484 0.011765 0.322266 0.055725 0.322266 0.066284 0.055176 0.066284 0.174805 0.001394 0.055176 0.001394 0.174805 0.011765 0.323730 0.055725 0.323730;
setAttr ".cuvs" -type "string" "map1";
setAttr ".dcol" yes;
setAttr ".dcc" -type "string" "Ambient+Diffuse";
setAttr ".ccls" -type "string" "colorSet1";
setAttr ".clst[0].clsn" -type "string" "colorSet1";
setAttr -s 90 ".clst[0].clsp";
setAttr ".clst[0].clsp[0:89]" 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000;
setAttr ".covm[0]"  0 1 1;
setAttr ".cdvm[0]"  0 1 1;
setAttr -s 52 ".vt";
setAttr ".vt[0:51]" -3.652896 -1.022916 3.292074 -3.642553 1.080595 3.285389 2.876868 -1.022916 3.349859 2.868503 1.080595 3.343008 6.328745 -1.341239 -10.141459 6.314908 1.392258 -10.135082 -0.788096 -1.341239 -13.030473 -0.781225 1.392258 -13.015689 6.165901 -1.351415 -9.543250 -0.969277 -1.351415 -12.439704 6.151959 1.402433 -9.536826 -0.962355 1.402433 -12.424812 6.165901 -1.351415 -9.543250 6.328745 -1.341239 -10.141459 -0.969277 -1.351415 -12.439704 -0.788096 -1.341239 -13.030473 -0.969277 -1.351415 -12.439704 -0.788096 -1.341239 -13.030473 -0.962355 1.402433 -12.424812 -0.781225 1.392258 -13.015689 6.151959 1.402433 -9.536826 -0.962355 1.402433 -12.424812 6.314908 1.392258 -10.135082 -0.781225 1.392258 -13.015689 6.151959 1.402433 -9.536826 6.314908 1.392258 -10.135082 6.165901 -1.351415 -9.543250 6.328745 -1.341239 -10.141459 2.868503 1.080595 3.343008 -3.642553 1.080595 3.285389 3.953106 1.169675 -3.886868 -2.640558 1.014425 -5.251597 5.826918 1.169675 -9.691867 -0.388668 1.014425 -12.272268 -3.652896 -1.022916 3.292074 2.876868 -1.022916 3.349859 -2.788869 -1.118657 -5.253624 3.962916 -1.118657 -3.884917 -0.533644 -1.118657 -12.284670 5.839368 -1.118657 -9.697605 -0.388668 1.014425 -12.272268 -2.640558 1.014425 -5.251597 -0.533644 -1.118657 -12.284670 -2.788869 -1.118657 -5.253624 -3.642553 1.080595 3.285389 -3.652896 -1.022916 3.292074 5.839368 -1.118657 -9.697605 3.962916 -1.118657 -3.884917 5.826918 1.169675 -9.691867 3.953106 1.169675 -3.886868 2.868503 1.080595 3.343008 2.876868 -1.022916 3.349859;
setAttr -s 90 ".ed";
setAttr ".ed[0:89]" 2 1 0 1 0 0 0 2 0 3 1 0 1 2 0 2 3 0 6 5 0 5 4 0 4 6 0 7 5 0 5 6 0 6 7 0 10 9 0 9 8 0 8 10 0 11 9 0 9 10 0 10 11 0 14 13 0 13 12 0 12 14 0 15 13 0 13 14 0 14 15 0 18 17 0 17 16 0 16 18 0 19 17 0 17 18 0 18 19 0 22 21 0 21 20 0 20 22 0 21 22 0 22 23 0 23 21 0 26 25 0 25 24 0 24 26 0 27 25 0 25 26 0 26 27 0 30 29 0 29 28 0 28 30 0 30 31 0 31 29 0 29 30 0 32 31 0 31 30 0 30 32 0 31 32 0 32 33 0 33 31 0 36 35 0 35 34 0 34 36 0 36 37 0 37 35 0 35 36 0 38 37 0 37 36 0 36 38 0 38 39 0 39 37 0 37 38 0 42 41 0 41 40 0 40 42 0 43 41 0 41 42 0 42 43 0 43 44 0 44 41 0 41 43 0 45 44 0 44 43 0 43 45 0 48 47 0 47 46 0 46 48 0 49 47 0 47 48 0 48 49 0 50 47 0 47 49 0 49 50 0 51 47 0 47 50 0 50 51 0;
setAttr -s 90 ".n";
setAttr ".n[0:89]" -type "float3" -0.007874 0.000000 1.000000 -0.007874 0.000000 1.000000 -0.007874 0.000000 1.000000 -0.007874 0.000000 1.000000 -0.007874 0.000000 1.000000 -0.007874 0.000000 1.000000 0.377953 0.007874 -0.929134 0.377953 0.007874 -0.929134 0.377953 0.007874 -0.929134 0.377953 0.007874 -0.929134 0.377953 0.007874 -0.929134 0.377953 0.007874 -0.929134 -0.377953 -0.007874 0.929134 -0.377953 -0.007874 0.929134 -0.377953 -0.007874 0.929134 -0.377953 -0.007874 0.929134 -0.377953 -0.007874 0.929134 -0.377953 -0.007874 0.929134 0.007874 -1.000000 -0.015748 0.007874 -1.000000 -0.015748 0.007874 -1.000000 -0.015748 0.007874 -1.000000 -0.015748 0.007874 -1.000000 -0.015748 0.007874 -1.000000 -0.015748 -0.952756 0.007874 -0.291339 -0.952756 0.007874 -0.291339 -0.952756 0.007874 -0.291339 -0.952756 0.007874 -0.291339 -0.952756 0.007874 -0.291339 -0.952756 0.007874 -0.291339 0.007874 1.000000 -0.015748 0.007874 1.000000 -0.015748 0.007874 1.000000 -0.015748 0.007874 1.000000 -0.015748 0.007874 1.000000 -0.015748 0.007874 1.000000 -0.015748 0.968504 0.007874 0.259843 0.968504 0.007874 0.259843 0.968504 0.007874 0.259843 0.968504 0.007874 0.259843 0.968504 0.007874 0.259843 0.968504 0.007874 0.259843 -0.015748 1.000000 0.000000 -0.015748 1.000000 0.000000 -0.015748 1.000000 0.000000 -0.015748 1.000000 0.000000 -0.677165 0.724409 -0.141732 -0.015748 1.000000 0.000000 -0.023622 1.000000 -0.007874 -0.677165 0.724409 -0.141732 -0.015748 1.000000 0.000000 -0.677165 0.724409 -0.141732 -0.023622 1.000000 -0.007874 -0.661417 0.724409 -0.212598 0.000000 -1.000000 0.007874 0.000000 -1.000000 0.007874 0.000000 -1.000000 0.007874 0.000000 -1.000000 0.007874 0.000000 -1.000000 0.007874 0.000000 -1.000000 0.007874 0.000000 -1.000000 0.007874 0.000000 -1.000000 0.007874 0.000000 -1.000000 0.007874 0.000000 -1.000000 0.007874 0.000000 -1.000000 0.007874 0.000000 -1.000000 0.007874 -0.952756 0.062992 -0.307087 -0.677165 0.724409 -0.141732 -0.661417 0.724409 -0.212598 -0.976378 0.055118 -0.204724 -0.677165 0.724409 -0.141732 -0.952756 0.062992 -0.307087 -0.976378 0.055118 -0.204724 -0.992126 0.039370 -0.110236 -0.677165 0.724409 -0.141732 -0.992126 0.039370 -0.110236 -0.992126 0.039370 -0.110236 -0.976378 0.055118 -0.204724 0.952756 0.007874 0.307087 0.976378 0.007874 0.228346 0.952756 0.007874 0.307087 0.976378 0.007874 0.228346 0.976378 0.007874 0.228346 0.952756 0.007874 0.307087 0.992126 0.007874 0.149606 0.976378 0.007874 0.228346 0.976378 0.007874 0.228346 0.992126 0.007874 0.149606 0.976378 0.007874 0.228346 0.992126 0.007874 0.149606;
setAttr -s 30 ".fc[0:29]" -type "polyFaces" f 3 0 1 2 mu 0 3 2 1 0 mc 0 3 0 1 2 f 3 3 4 5 mu 0 3 3 1 2 mc 0 3 3 4 5 f 3 6 7 8 mu 0 3 6 5 4 mc 0 3 6 7 8 f 3 9 10 11 mu 0 3 7 5 6 mc 0 3 9 10 11 f 3 12 13 14 mu 0 3 10 9 8 mc 0 3 12 13 14 f 3 15 16 17 mu 0 3 11 9 10 mc 0 3 15 16 17 f 3 18 19 20 mu 0 3 14 13 12 mc 0 3 18 19 20 f 3 21 22 23 mu 0 3 15 13 14 mc 0 3 21 22 23 f 3 24 25 26 mu 0 3 18 17 16 mc 0 3 24 25 26 f 3 27 28 29 mu 0 3 19 17 18 mc 0 3 27 28 29 f 3 30 31 32 mu 0 3 22 21 20 mc 0 3 30 31 32 f 3 33 34 35 mu 0 3 21 22 23 mc 0 3 33 34 35 f 3 36 37 38 mu 0 3 26 25 24 mc 0 3 36 37 38 f 3 39 40 41 mu 0 3 27 25 26 mc 0 3 39 40 41 f 3 42 43 44 mu 0 3 30 29 28 mc 0 3 42 43 44 f 3 45 46 47 mu 0 3 30 31 29 mc 0 3 45 46 47 f 3 48 49 50 mu 0 3 32 31 30 mc 0 3 48 49 50 f 3 51 52 53 mu 0 3 31 32 33 mc 0 3 51 52 53 f 3 54 55 56 mu 0 3 36 35 34 mc 0 3 54 55 56 f 3 57 58 59 mu 0 3 36 37 35 mc 0 3 57 58 59 f 3 60 61 62 mu 0 3 38 37 36 mc 0 3 60 61 62 f 3 63 64 65 mu 0 3 38 39 37 mc 0 3 63 64 65 f 3 66 67 68 mu 0 3 42 41 40 mc 0 3 66 67 68 f 3 69 70 71 mu 0 3 43 41 42 mc 0 3 69 70 71 f 3 72 73 74 mu 0 3 43 44 41 mc 0 3 72 73 74 f 3 75 76 77 mu 0 3 45 44 43 mc 0 3 75 76 77 f 3 78 79 80 mu 0 3 48 47 46 mc 0 3 78 79 80 f 3 81 82 83 mu 0 3 49 47 48 mc 0 3 81 82 83 f 3 84 85 86 mu 0 3 50 47 49 mc 0 3 84 85 86 f 3 87 88 89 mu 0 3 51 47 50 mc 0 3 87 88 89;
setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;

createNode shadingEngine -n "mtl_weapon_g36SG";
    setAttr ".ihi" 0;
    setAttr ".ro" yes;
createNode materialInfo -n "mtl_weapon_g36MI";
createNode phong -n "mtl_weapon_g36";
    setAttr ".ambc" -type "float3" 1 1 1 ;
createNode file -n "mtl_weapon_g36FILE";
    setAttr ".ftn" -type "string" "_images\\weapon_g36_col.png";
createNode place2dTexture -n "mtl_weapon_g36P2DT";

connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr "mtl_weapon_g36SG.msg" "lightLinker1.lnk[2].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[2].sllk";
connectAttr "mtl_weapon_g36SG.msg" "lightLinker1.slnk[2].solk";
connectAttr "mtl_weapon_g36.oc" "mtl_weapon_g36SG.ss";
connectAttr "mtl_weapon_g36SG.msg" "mtl_weapon_g36MI.sg";
connectAttr "mtl_weapon_g36.msg" "mtl_weapon_g36MI.m";
connectAttr "mtl_weapon_g36FILE.msg" "mtl_weapon_g36MI.t" -na;
connectAttr "mtl_weapon_g36FILE.oc" "mtl_weapon_g36.c";
connectAttr "mtl_weapon_g36P2DT.c" "mtl_weapon_g36FILE.c";
connectAttr "mtl_weapon_g36P2DT.tf" "mtl_weapon_g36FILE.tf";
connectAttr "mtl_weapon_g36P2DT.rf" "mtl_weapon_g36FILE.rf";
connectAttr "mtl_weapon_g36P2DT.mu" "mtl_weapon_g36FILE.mu";
connectAttr "mtl_weapon_g36P2DT.mv" "mtl_weapon_g36FILE.mv";
connectAttr "mtl_weapon_g36P2DT.s" "mtl_weapon_g36FILE.s";
connectAttr "mtl_weapon_g36P2DT.wu" "mtl_weapon_g36FILE.wu";
connectAttr "mtl_weapon_g36P2DT.wv" "mtl_weapon_g36FILE.wv";
connectAttr "mtl_weapon_g36P2DT.re" "mtl_weapon_g36FILE.re";
connectAttr "mtl_weapon_g36P2DT.of" "mtl_weapon_g36FILE.of";
connectAttr "mtl_weapon_g36P2DT.r" "mtl_weapon_g36FILE.ro";
connectAttr "mtl_weapon_g36P2DT.n" "mtl_weapon_g36FILE.n";
connectAttr "mtl_weapon_g36P2DT.vt1" "mtl_weapon_g36FILE.vt1";
connectAttr "mtl_weapon_g36P2DT.vt2" "mtl_weapon_g36FILE.vt2";
connectAttr "mtl_weapon_g36P2DT.vt3" "mtl_weapon_g36FILE.vt3";
connectAttr "mtl_weapon_g36P2DT.vc1" "mtl_weapon_g36FILE.vc1";
connectAttr "mtl_weapon_g36P2DT.o" "mtl_weapon_g36FILE.uv";
connectAttr "mtl_weapon_g36P2DT.ofs" "mtl_weapon_g36FILE.fs";

connectAttr "mtl_weapon_g36SG.pa" ":renderPartition.st" -na;
connectAttr "mtl_weapon_g36.msg" ":defaultShaderList1.s" -na;
connectAttr "mtl_weapon_g36P2DT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mtl_weapon_g36FILE.msg" ":defaultTextureList1.tx" -na;

connectAttr "mtl_weapon_g36SG.mwc" "MeshShape_0.iog.og[0].gco";
connectAttr "MeshShape_0.iog" "mtl_weapon_g36SG.dsm" -na;
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

