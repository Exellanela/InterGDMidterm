//Maya ASCII 2018 scene
//Name: pencil.ma
//Last modified: Wed, Oct 18, 2017 11:18:44 PM
//Codeset: 932
requires maya "2018";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "97D3900E-4ED3-1ADE-AADB-0B93B4B7B1A9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 26.902368131137923 11.816679475534787 -25.520123949388299 ;
	setAttr ".r" -type "double3" -17.138352731317404 -226.59999999998715 0 ;
	setAttr ".rp" -type "double3" 2.2204460492503131e-16 -5.5511151231257827e-17 0 ;
	setAttr ".rpt" -type "double3" 4.9728345643881391e-17 -5.2228308625036684e-16 3.3529293391341226e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "97FF46CB-4AED-AF0E-E917-25830FC4548C";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 39.114158746664849;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.25505506634303465 0.2905172433490264 0.16137452576793265 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "F34F2436-4165-6DBB-7F2F-509A62998091";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "9BB020D4-4DA9-483A-8EDF-A09E277A0A2E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "6B34FC5E-41D3-0277-5FEF-009E3CAD6B7B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "E137C53A-4066-79AD-F29F-158DD1151707";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "478B3A96-4BED-279D-0808-59856D7C9737";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "1F8DE73B-4FB2-B4C2-9094-B68A1EDFF4CE";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCone2";
	rename -uid "72D41A2A-4279-A525-5F01-9FB282775199";
	setAttr ".rp" -type "double3" 0.05322757363319397 3.1803291440010071 -0.010626763105392456 ;
	setAttr ".sp" -type "double3" 0.05322757363319397 3.1803291440010071 -0.010626763105392456 ;
createNode mesh -n "pCone2Shape" -p "pCone2";
	rename -uid "9F3C7B28-4999-44BE-0EB3-169995AA44E6";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:146]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 252 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.7377643 0.1727457 0.70225441
		 0.1030536 0.64694643 0.04774563 0.5772543 0.012235746 0.5 -1.1920929e-07 0.4227457
		 0.012235761 0.35305363 0.047745675 0.2977457 0.10305364 0.26223582 0.17274573 0.24999994
		 0.25 0.26223582 0.32725427 0.2977457 0.39694634 0.35305366 0.4522543 0.42274573 0.48776418
		 0.5 0.5 0.57725424 0.48776415 0.64694631 0.45225427 0.70225424 0.39694631 0.73776412
		 0.32725424 0.75 0.25 0.25 0.5 0.27500001 0.5 0.30000001 0.5 0.32500002 0.5 0.35000002
		 0.5 0.37500003 0.5 0.40000004 0.5 0.42500004 0.5 0.45000005 0.5 0.47500005 0.5 0.50000006
		 0.5 0.52500004 0.5 0.55000001 0.5 0.57499999 0.5 0.59999996 0.5 0.62499994 0.5 0.64999992
		 0.5 0.67499989 0.5 0.69999987 0.5 0.72499985 0.5 0.74999982 0.5 0.5 1 0.62064838
		 0.069328435 0.64065474 0.10859099 0.37935182 0.24317133 0.54589033 0.015013776 0.45410958
		 0.015013858 0.3803896 0.068574764 0.35904768 0.20332222 0.54651487 0.29748583 0.45410961
		 0.29748607 0.58577836 0.27748054 0.64065373 0.89140832 0.62064809 0.93067145 0.54589033
		 0.98498607 0.45410961 0.98498607 0.38038963 0.93142533 0.35904753 0.79667765 0.37935185
		 0.7568289 0.45410967 0.70251411 0.54651529 0.70251381 0.58577865 0.72251809 0.3872765
		 0.313014 0.38749999 0.31426069 0.375 0.31418425 0.37538898 0.31301719 0.38772905
		 0.313014 0.4121905 0.31301349 0.41249996 0.31425965 0.41280943 0.31301349 0.43719047
		 0.313014 0.43749994 0.3142547 0.62458396 0.31301397 0.62499976 0.3142547 0.57499981
		 0.31426135 0.57541496 0.31301734 0.57461298 0.31301734 0.56249982 0.3142547 0.56272548
		 0.31301403 0.43780941 0.313014 0.46210566 0.31301418 0.46249992 0.31425351 0.46290481
		 0.31301418 0.49968377 0.31301716 0.49999988 0.31426102 0.5003072 0.31301716 0.51227635
		 0.313014 0.51249987 0.31426069 0.51272893 0.313014 0.53719038 0.31301349 0.53749985
		 0.31425965 0.53780943 0.31301349 0.56227183 0.313014 0.3877289 0.68792588 0.38749999
		 0.68668514 0.41249999 0.68668509 0.41219017 0.68792582 0.38727391 0.68792588 0.37539008
		 0.68792576 0.375 0.68668479 0.41280979 0.68792582 0.43749997 0.6866852 0.43719012
		 0.68792582 0.62499982 0.6866852 0.6245845 0.68792582 0.57541507 0.68792588 0.57499981
		 0.6866852 0.57460976 0.68792588 0.5627259 0.68792588 0.56249982 0.6866852 0.43780988
		 0.68792588 0.46249992 0.6866852 0.46210495 0.68792582 0.46290314 0.68792588 0.49999988
		 0.68668497 0.49968356 0.68792576 0.50030583 0.68792576 0.51249987 0.68668514 0.51227379
		 0.68792588 0.51272875 0.68792588 0.5374999 0.68668509 0.53719008 0.68792582 0.53780961
		 0.68792582 0.56227088 0.68792588 0.38795817 0.3125 0.41188097 0.3125 0.38705295 0.3125
		 0.37577802 0.3125 0.6241681 0.3125 0.57583022 0.3125 0.41311896 0.3125 0.43688095
		 0.3125 0.43811893 0.3125 0.46171129 0.3125 0.46330822 0.3125 0.49936762 0.3125 0.50061458
		 0.3125 0.51205283 0.3125 0.51295805 0.3125 0.53688085 0.3125 0.53811884 0.3125 0.56204385
		 0.3125 0.56295115 0.3125 0.57422608 0.3125 0.38795784 0.68843985 0.41188028 0.68843985
		 0.38704777 0.68843985 0.37578022 0.68843985 0.62416917 0.68843979 0.5758304 0.68843985
		 0.41311961 0.68843985 0.43688029 0.68843985 0.43811959 0.68843985 0.46170998 0.68843985
		 0.46330646 0.68843985 0.49936721 0.68843985 0.5006119 0.68843985 0.51204765 0.68843985
		 0.51295769 0.68843985 0.5368802 0.68843979 0.53811949 0.68843985 0.56204194 0.68843985
		 0.56295204 0.68843985 0.57421958 0.68843985 0.375 0.3125 0.39999998 0.3125 0.39999998
		 0.68843985 0.375 0.68843985 0.42499995 0.3125 0.42499995 0.68843985 0.44999993 0.3125
		 0.44999993 0.68843985 0.4749999 0.3125 0.4749999 0.68843985 0.49999988 0.3125 0.49999988
		 0.68843985 0.52499986 0.3125 0.52499986 0.68843985 0.56249982 0.3125 0.56249982 0.68843985
		 0.57499981 0.3125 0.57499981 0.68843985 0.59999979 0.3125 0.59999979 0.68843985 0.62499976
		 0.3125 0.62499976 0.68843985 0.59184152 0.029841021 0.64860266 0.10796607 0.5 0.15000001
		 0.5 -7.4505806e-08 0.40815851 0.029841051 0.3513974 0.1079661 0.3513974 0.2045339
		 0.40815854 0.28265893 0.54828387 0.3048526 0.59184146 0.28265893 0.6486026 0.2045339
		 0.6486026 0.89203393 0.59184146 0.97015893 0.5 0.83749998 0.5 1 0.40815854 0.97015893
		 0.3513974 0.89203393 0.3513974 0.79546607 0.40815851 0.71734107 0.54828393 0.69514734
		 0.59184152 0.71734101 0.64860266 0.79546607 0.375 0.3125 0.39999998 0.3125 0.39999998
		 0.68843985 0.375 0.68843985 0.42499995 0.3125 0.42499995 0.68843985 0.44999993 0.3125
		 0.44999993 0.68843985 0.4749999 0.3125 0.4749999 0.68843985 0.51249987 0.3125 0.51249987
		 0.68843985 0.53749985 0.3125 0.53749985 0.68843985 0.56249982 0.3125 0.56249982 0.68843985
		 0.5874998 0.3125 0.5874998 0.68843985 0.59999979 0.3125 0.59999979 0.68843985 0.62499976
		 0.3125 0.62499976 0.68843985 0.59184152 0.029841021 0.64860266 0.10796607 0.5 0.15000001
		 0.5 -7.4505806e-08 0.40815851 0.029841051 0.3513974 0.1079661 0.37359107 0.24809146
		 0.4517161 0.3048526 0.54828387 0.3048526 0.62640893 0.24809146 0.6486026 0.2045339
		 0.6486026 0.89203393 0.59184146 0.97015893 0.5 0.83749998 0.5 1 0.40815854 0.97015893
		 0.3513974 0.89203393 0.37359107 0.75190854 0.45171607 0.69514734 0.54828393 0.69514734;
	setAttr ".uvst[0].uvsp[250:251]" 0.62640899 0.75190848 0.64860266 0.79546607;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 125 ".vt[0:124]"  0.37355396 5.72108603 -0.099671081 0.32639682 5.72108603 -0.19222221
		 0.25294781 5.72108603 -0.26567116 0.1603967 5.72108603 -0.3128283 0.057802998 5.72108603 -0.32907751
		 -0.044790693 5.72108603 -0.31282827 -0.13734177 5.72108603 -0.2656711 -0.21079072 5.72108603 -0.19222215
		 -0.25794783 5.72108603 -0.099671043 -0.27419707 5.72108603 0.0029226164 -0.25794783 5.72108603 0.10551628
		 -0.21079069 5.72108603 0.19806734 -0.13734174 5.72108603 0.27151629 -0.044790663 5.72108603 0.31867343
		 0.057802986 5.72108603 0.33492264 0.16039664 5.72108603 0.3186734 0.25294769 5.72108603 0.27151629
		 0.32639664 5.72108603 0.19806732 0.37355375 5.72108603 0.10551625 0.38980299 5.72108603 0.0029226164
		 0.057802998 6.97680235 0.0029226164 0.3142418 0 -0.1798602 0.35679296 0 -0.096348867
		 0.15523393 0 -0.29538611 -0.039981209 0 -0.29538611 -0.19678164 0 -0.18146388 -0.24217528 0 0.10514039
		 -0.19898894 0 0.1898983 -0.039981179 0 0.30542418 0.15656319 0 0.30542418 0.24007449 0 0.26287305
		 0.3142418 5.73057413 -0.1798602 0.35679296 5.73057413 -0.096348867 0.15523393 5.73057413 -0.29538611
		 -0.039981209 5.73057413 -0.29538611 -0.19678164 5.73057413 -0.18146388 -0.24217528 5.73057413 0.10514039
		 -0.19898894 5.73057413 0.1898983 -0.039981179 5.73057413 0.30542418 0.15656319 5.73057413 0.30542418
		 0.24007449 5.73057413 0.26287305 0.32036889 0.0078349113 -0.18509322 0.32649472 0.026746511 -0.1903252
		 0.15777968 0.0078349113 -0.30322111 0.16032492 0.026746511 -0.31105456 0.36524737 0.0078349113 -0.097014241
		 0.37370008 0.026746511 -0.097679481 0.24652314 0.0078349113 0.26838073 0.25297052 0.026746511 0.27388731
		 -0.04252696 0.0078349113 -0.30322111 -0.045072198 0.026746511 -0.31105456 -0.20401248 0.0078349113 -0.18589495
		 -0.2112419 0.026746511 -0.19032514 -0.25031206 0.0078349113 0.10642913 -0.25844723 0.026746511 0.10771761
		 -0.205116 0.0078349113 0.19513132 -0.21124187 0.026746511 0.20036329 -0.042526931 0.0078349113 0.31325918
		 -0.045072168 0.026746511 0.32109264 0.15844421 0.0078349113 0.31325918 0.16032486 0.026746511 0.32109264
		 0.32036889 5.72273922 -0.18509322 0.32649472 5.70382738 -0.1903252 0.15777968 5.72273922 -0.30322111
		 0.16032492 5.70382738 -0.31105456 0.36524737 5.72273922 -0.097014241 0.37370008 5.70382738 -0.097679481
		 0.24652314 5.72273922 0.26838073 0.25297052 5.70382738 0.27388731 -0.042526953 5.72273922 -0.30322111
		 -0.045072198 5.70382738 -0.31105456 -0.20401248 5.72273922 -0.18589495 -0.2112419 5.70382738 -0.19032514
		 -0.25031206 5.72273922 0.10642913 -0.25844723 5.70382738 0.10771761 -0.205116 5.72273922 0.19513132
		 -0.21124187 5.70382738 0.20036329 -0.042526931 5.72273922 0.31325918 -0.045072168 5.70382738 0.32109264
		 0.15844421 5.72273922 0.31325918 0.16032486 5.70382738 0.32109264 0.36707637 -0.61614406 -0.10354783
		 0.24719675 -0.61614406 -0.26854795 0.053227503 -0.61614406 -0.33157232 -0.14074172 -0.61614406 -0.26854789
		 -0.26062125 -0.61614406 -0.10354779 -0.26062125 -0.61614406 0.10040348 -0.14074168 -0.61614406 0.26540351
		 0.1552031 -0.61614406 0.31227654 0.24719664 -0.61614406 0.26540348 0.36707619 -0.61614406 0.10040346
		 0.36707637 -0.016144007 -0.10354783 0.24719675 -0.016144007 -0.26854795 0.053227503 -0.016144007 -0.33157232
		 -0.14074172 -0.016144007 -0.26854789 -0.26062125 -0.016144007 -0.10354779 -0.26062125 -0.016144007 0.10040348
		 -0.14074168 -0.016144007 0.26540351 0.1552031 -0.016144007 0.31227654 0.24719664 -0.016144007 0.26540348
		 0.36707619 -0.016144007 0.10040346 0.053227503 -0.61614406 -0.0015721578 0.053227503 -0.016144007 -0.0015721578
		 0.40511864 -0.065045536 -0.11590851 0.27070817 -0.065045536 -0.30090863 0.053227503 -0.065045536 -0.37157235
		 -0.16425313 -0.065045536 -0.30090857 -0.2986635 -0.065045536 -0.11590847 -0.24610887 -0.065045536 0.21590842
		 -0.061108809 -0.065045536 0.35031882 0.16756378 -0.065045536 0.35031879 0.3525638 -0.065045536 0.21590841
		 0.40511844 -0.065045536 0.11276414 0.40511864 0.53495449 -0.11590851 0.27070817 0.53495449 -0.30090863
		 0.053227503 0.53495449 -0.37157235 -0.16425313 0.53495449 -0.30090857 -0.2986635 0.53495449 -0.11590847
		 -0.24610887 0.53495449 0.21590842 -0.061108809 0.53495449 0.35031882 0.16756378 0.53495449 0.35031879
		 0.3525638 0.53495449 0.21590841 0.40511844 0.53495449 0.11276414 0.053227503 -0.065045536 -0.0015721578
		 0.053227503 0.53495449 -0.0015721578;
	setAttr -s 264 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 0 20 1 1 20 1 2 20 1 3 20 1 4 20 1 5 20 1 6 20 1 7 20 1 8 20 1 9 20 1 10 20 1 11 20 1
		 12 20 1 13 20 1 14 20 1 15 20 1 16 20 1 17 20 1 18 20 1 19 20 1 21 23 0 22 21 0 30 22 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 33 31 0 31 32 0 32 40 0 34 33 0
		 35 34 0 36 35 0 37 36 0 38 37 0 39 38 0 40 39 0 22 27 1 27 21 1 27 23 1 27 24 1 27 25 1
		 27 29 1 27 30 1 33 32 1 35 33 1 36 33 1 37 33 1 38 33 1 39 33 1 40 33 1 41 42 1 42 46 1
		 46 45 0 45 41 1 41 43 1 43 44 0 44 42 1 43 49 1 49 50 0 50 44 1 46 48 1 48 47 0 47 45 1
		 48 60 1 60 59 1 59 47 1 49 51 1 51 52 0 52 50 1 51 53 1 53 54 0 54 52 1 53 55 1 55 56 1
		 56 54 1 55 57 1 57 58 0 58 56 1 57 59 1 60 58 1 61 62 1 62 64 1 64 63 0 63 61 1 61 65 1
		 65 66 0 66 62 1 64 70 1 70 69 0 69 63 1 65 67 1 67 68 0 68 66 1 67 79 1 79 80 1 80 68 1
		 70 72 1 72 71 0 71 69 1 72 74 1 74 73 0 73 71 1 74 76 1 76 75 1 75 73 1 76 78 1 78 77 0
		 77 75 1 78 80 1 79 77 1 41 21 1 23 43 1 45 22 0 47 30 0 24 49 1 25 51 0 26 53 1 27 55 1
		 28 57 1 29 59 1 31 61 1 63 33 1 32 65 0 40 67 0 69 34 1 71 35 0 73 36 1 75 37 1 77 38 1
		 79 39 1 42 62 1 66 46 0 44 64 0 50 70 0 52 72 0 54 74 0 56 76 1 58 78 0 60 80 1 48 68 0
		 81 82 0 82 83 0;
	setAttr ".ed[166:263]" 83 84 0 84 85 0 85 86 0 86 87 0 87 88 0 88 89 0 89 90 0
		 90 81 0 91 92 0 92 93 0 93 94 0 94 95 0 95 96 0 96 97 0 97 98 0 98 99 0 99 100 0
		 100 91 0 81 91 1 82 92 1 83 93 1 84 94 1 85 95 1 86 96 1 87 97 1 88 98 1 89 99 1
		 90 100 1 101 81 1 101 82 1 101 83 1 101 84 1 101 85 1 101 86 1 101 87 1 101 88 1
		 101 89 1 101 90 1 91 102 1 92 102 1 93 102 1 94 102 1 95 102 1 96 102 1 97 102 1
		 98 102 1 99 102 1 100 102 1 103 104 0 104 105 0 105 106 0 106 107 0 107 108 0 108 109 0
		 109 110 0 110 111 0 111 112 0 112 103 0 113 114 0 114 115 0 115 116 0 116 117 0 117 118 0
		 118 119 0 119 120 0 120 121 0 121 122 0 122 113 0 103 113 1 104 114 1 105 115 1 106 116 1
		 107 117 1 108 118 1 109 119 1 110 120 1 111 121 1 112 122 1 123 103 1 123 104 1 123 105 1
		 123 106 1 123 107 1 123 108 1 123 109 1 123 110 1 123 111 1 123 112 1 113 124 1 114 124 1
		 115 124 1 116 124 1 117 124 1 118 124 1 119 124 1 120 124 1 121 124 1 122 124 1;
	setAttr -s 147 -ch 528 ".fc[0:146]" -type "polyFaces" 
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 3 0 21 -21
		mu 0 3 20 21 41
		f 3 1 22 -22
		mu 0 3 21 22 41
		f 3 2 23 -23
		mu 0 3 22 23 41
		f 3 3 24 -24
		mu 0 3 23 24 41
		f 3 4 25 -25
		mu 0 3 24 25 41
		f 3 5 26 -26
		mu 0 3 25 26 41
		f 3 6 27 -27
		mu 0 3 26 27 41
		f 3 7 28 -28
		mu 0 3 27 28 41
		f 3 8 29 -29
		mu 0 3 28 29 41
		f 3 9 30 -30
		mu 0 3 29 30 41
		f 3 10 31 -31
		mu 0 3 30 31 41
		f 3 11 32 -32
		mu 0 3 31 32 41
		f 3 12 33 -33
		mu 0 3 32 33 41
		f 3 13 34 -34
		mu 0 3 33 34 41
		f 3 14 35 -35
		mu 0 3 34 35 41
		f 3 15 36 -36
		mu 0 3 35 36 41
		f 3 16 37 -37
		mu 0 3 36 37 41
		f 3 17 38 -38
		mu 0 3 37 38 41
		f 3 18 39 -39
		mu 0 3 38 39 41
		f 3 19 20 -40
		mu 0 3 39 40 41
		f 3 -42 60 61
		mu 0 3 42 43 44
		f 3 -41 -62 62
		mu 0 3 45 42 44
		f 3 -44 -63 63
		mu 0 3 46 45 44
		f 3 -45 -64 64
		mu 0 3 47 46 44
		f 3 -46 -65 -47
		mu 0 3 48 47 44
		f 3 -49 -48 65
		mu 0 3 49 50 44
		f 3 -50 -66 66
		mu 0 3 51 49 44
		f 3 -43 -67 -61
		mu 0 3 43 51 44
		f 3 -52 -51 67
		mu 0 3 52 53 54
		f 3 -55 68 -54
		mu 0 3 55 56 54
		f 3 -56 69 -69
		mu 0 3 56 57 54
		f 3 -57 70 -70
		mu 0 3 57 58 54
		f 3 -58 71 -71
		mu 0 3 58 59 54
		f 3 -59 72 -72
		mu 0 3 59 60 54
		f 3 -60 73 -73
		mu 0 3 60 61 54
		f 3 -53 -68 -74
		mu 0 3 61 52 54
		f 4 74 75 76 77
		mu 0 4 62 63 64 65
		f 4 -75 78 79 80
		mu 0 4 63 66 67 68
		f 4 -80 81 82 83
		mu 0 4 68 69 70 71
		f 4 -77 84 85 86
		mu 0 4 72 73 74 75
		f 4 -86 87 88 89
		mu 0 4 76 74 77 78
		f 4 -83 90 91 92
		mu 0 4 71 79 80 81
		f 4 -92 93 94 95
		mu 0 4 81 82 83 84
		f 4 -95 96 97 98
		mu 0 4 84 85 86 87
		f 4 -98 99 100 101
		mu 0 4 87 88 89 90
		f 4 -101 102 -89 103
		mu 0 4 90 91 92 77
		f 4 104 105 106 107
		mu 0 4 93 94 95 96
		f 4 -105 108 109 110
		mu 0 4 94 97 98 99
		f 4 -107 111 112 113
		mu 0 4 100 95 101 102
		f 4 -110 114 115 116
		mu 0 4 103 104 105 106
		f 4 -116 117 118 119
		mu 0 4 106 107 108 109
		f 4 -113 120 121 122
		mu 0 4 110 101 111 112
		f 4 -122 123 124 125
		mu 0 4 113 111 114 115
		f 4 -125 126 127 128
		mu 0 4 116 114 117 118
		f 4 -128 129 130 131
		mu 0 4 119 117 120 121
		f 4 -131 132 -119 133
		mu 0 4 122 120 109 123
		f 4 134 40 135 -79
		mu 0 4 66 124 125 67
		f 4 -135 -78 136 41
		mu 0 4 126 62 65 127
		f 4 -137 -87 137 42
		mu 0 4 128 72 75 129
		f 4 -136 43 138 -82
		mu 0 4 69 130 131 70
		f 4 -139 44 139 -91
		mu 0 4 79 132 133 80
		f 4 -140 45 140 -94
		mu 0 4 82 134 135 83
		f 4 -141 46 141 -97
		mu 0 4 85 136 137 86
		f 4 -142 47 142 -100
		mu 0 4 88 138 139 89
		f 4 -143 48 143 -103
		mu 0 4 91 140 141 92
		f 4 -144 49 -138 -90
		mu 0 4 78 142 143 76
		f 4 144 -108 145 50
		mu 0 4 144 93 96 145
		f 4 -145 51 146 -109
		mu 0 4 97 146 147 98
		f 4 -147 52 147 -115
		mu 0 4 104 148 149 105
		f 4 -146 -114 148 53
		mu 0 4 150 100 102 151
		f 4 -149 -123 149 54
		mu 0 4 152 110 112 153
		f 4 -150 -126 150 55
		mu 0 4 154 113 115 155
		f 4 -151 -129 151 56
		mu 0 4 156 116 118 157
		f 4 -152 -132 152 57
		mu 0 4 158 119 121 159
		f 4 -153 -134 153 58
		mu 0 4 160 122 123 161
		f 4 -154 -118 -148 59
		mu 0 4 162 108 107 163
		f 4 -76 154 -111 155
		mu 0 4 64 63 94 99
		f 4 -81 156 -106 -155
		mu 0 4 63 68 95 94
		f 4 -84 157 -112 -157
		mu 0 4 68 71 101 95
		f 4 -93 158 -121 -158
		mu 0 4 71 81 111 101
		f 4 -96 159 -124 -159
		mu 0 4 81 84 114 111
		f 4 -99 160 -127 -160
		mu 0 4 84 87 117 114
		f 4 -102 161 -130 -161
		mu 0 4 87 90 120 117
		f 4 -104 162 -133 -162
		mu 0 4 90 77 109 120
		f 4 -88 163 -120 -163
		mu 0 4 77 74 106 109
		f 4 -85 -156 -117 -164
		mu 0 4 74 73 103 106
		f 4 164 185 -175 -185
		mu 0 4 164 165 166 167
		f 4 165 186 -176 -186
		mu 0 4 165 168 169 166
		f 4 166 187 -177 -187
		mu 0 4 168 170 171 169
		f 4 167 188 -178 -188
		mu 0 4 170 172 173 171
		f 4 168 189 -179 -189
		mu 0 4 172 174 175 173
		f 4 169 190 -180 -190
		mu 0 4 174 176 177 175
		f 4 170 191 -181 -191
		mu 0 4 176 178 179 177
		f 4 171 192 -182 -192
		mu 0 4 178 180 181 179
		f 4 172 193 -183 -193
		mu 0 4 180 182 183 181
		f 4 173 184 -184 -194
		mu 0 4 182 184 185 183
		f 3 -165 -195 195
		mu 0 3 186 187 188
		f 3 -166 -196 196
		mu 0 3 189 186 188
		f 3 -167 -197 197
		mu 0 3 190 189 188
		f 3 -168 -198 198
		mu 0 3 191 190 188
		f 3 -169 -199 199
		mu 0 3 192 191 188
		f 3 -170 -200 200
		mu 0 3 193 192 188
		f 3 -171 -201 201
		mu 0 3 194 193 188
		f 3 -172 -202 202
		mu 0 3 195 194 188
		f 3 -173 -203 203
		mu 0 3 196 195 188
		f 3 -174 -204 194
		mu 0 3 187 196 188
		f 3 174 205 -205
		mu 0 3 197 198 199
		f 3 175 206 -206
		mu 0 3 198 200 199
		f 3 176 207 -207
		mu 0 3 200 201 199
		f 3 177 208 -208
		mu 0 3 201 202 199
		f 3 178 209 -209
		mu 0 3 202 203 199
		f 3 179 210 -210
		mu 0 3 203 204 199
		f 3 180 211 -211
		mu 0 3 204 205 199
		f 3 181 212 -212
		mu 0 3 205 206 199
		f 3 182 213 -213
		mu 0 3 206 207 199
		f 3 183 204 -214
		mu 0 3 207 197 199
		f 4 214 235 -225 -235
		mu 0 4 208 209 210 211
		f 4 215 236 -226 -236
		mu 0 4 209 212 213 210
		f 4 216 237 -227 -237
		mu 0 4 212 214 215 213
		f 4 217 238 -228 -238
		mu 0 4 214 216 217 215
		f 4 218 239 -229 -239
		mu 0 4 216 218 219 217
		f 4 219 240 -230 -240
		mu 0 4 218 220 221 219
		f 4 220 241 -231 -241
		mu 0 4 220 222 223 221
		f 4 221 242 -232 -242
		mu 0 4 222 224 225 223
		f 4 222 243 -233 -243
		mu 0 4 224 226 227 225
		f 4 223 234 -234 -244
		mu 0 4 226 228 229 227
		f 3 -215 -245 245
		mu 0 3 230 231 232
		f 3 -216 -246 246
		mu 0 3 233 230 232
		f 3 -217 -247 247
		mu 0 3 234 233 232
		f 3 -218 -248 248
		mu 0 3 235 234 232
		f 3 -219 -249 249
		mu 0 3 236 235 232
		f 3 -220 -250 250
		mu 0 3 237 236 232
		f 3 -221 -251 251
		mu 0 3 238 237 232
		f 3 -222 -252 252
		mu 0 3 239 238 232
		f 3 -223 -253 253
		mu 0 3 240 239 232
		f 3 -224 -254 244
		mu 0 3 231 240 232
		f 3 224 255 -255
		mu 0 3 241 242 243
		f 3 225 256 -256
		mu 0 3 242 244 243
		f 3 226 257 -257
		mu 0 3 244 245 243
		f 3 227 258 -258
		mu 0 3 245 246 243
		f 3 228 259 -259
		mu 0 3 246 247 243
		f 3 229 260 -260
		mu 0 3 247 248 243
		f 3 230 261 -261
		mu 0 3 248 249 243
		f 3 231 262 -262
		mu 0 3 249 250 243
		f 3 232 263 -263
		mu 0 3 250 251 243
		f 3 233 254 -264
		mu 0 3 251 241 243;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "67768F98-4861-CB06-6B7A-9A8DE8A43EDF";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "C4E61F96-4B59-2FAD-D2BD-B489D6BCB3BB";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "E03237C0-4995-CF3F-8124-8788EED6DB5E";
createNode displayLayerManager -n "layerManager";
	rename -uid "A7BFC17D-4083-C1B3-6E0C-DE802DF001C7";
createNode displayLayer -n "defaultLayer";
	rename -uid "1935E2F1-4DF0-FFE7-F7DD-258D062067A7";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "883FCDF7-422C-FBF6-B9D0-1B8642B756C5";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F5B847D0-4222-5A13-9289-4C81B1EC1C75";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "BE9DBAF2-4C42-31C8-26C6-F0A6541DCA27";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1585\n            -height 716\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n"
		+ "                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1585\\n    -height 716\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1585\\n    -height 716\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "81A402CB-4062-F5E2-5545-579EC91A6866";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode groupId -n "groupId1";
	rename -uid "93D3821F-4E6E-4D4D-7B48-F2B37C9D5342";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId1.id" "pCone2Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCone2Shape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCone2Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
// End of pencil.ma
