{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 6,
			"revision" : 0,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 307.0, 158.0, 964.0, 727.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 574.5, 648.0, 97.0, 22.0 ],
					"text" : "scale 0 127 0. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 574.5, 612.0, 157.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 117.0, 515.0, 97.0, 22.0 ],
					"text" : "scale 0 127 0. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 117.0, 488.0, 157.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 804.0, 559.0, 31.0, 22.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 764.0, 559.0, 32.0, 22.0 ],
					"text" : "start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 313.314817905426025, 264.814810395240784, 47.0, 20.0 ],
					"text" : "panner"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "bang" ],
					"patching_rect" : [ 766.0, 622.0, 100.0, 22.0 ],
					"text" : "play~ wetbuffer 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 26.851851403713226, 332.407401859760284, 45.0, 157.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[1]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "ezadc~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 32.407406866550446, 263.962963998317719, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 313.314817905426025, 471.611110508441925, 97.0, 22.0 ],
					"text" : "scale 0 127 0. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 313.314817905426025, 435.5, 157.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 313.314817905426025, 366.666665554046631, 117.0, 22.0 ],
					"text" : "scale 0 127 0.01 15."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 313.314817905426025, 333.333332777023315, 157.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 492.592584371566772, 379.018519461154938, 93.0, 22.0 ],
					"text" : "scale 0 127 0 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 489.092584371566772, 333.333332777023315, 157.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "shiftdelaysend",
					"id" : "obj-38",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 492.592584371566772, 404.944444954395294, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 661.111100077629089, 423.148141086101532, 93.0, 22.0 ],
					"text" : "scale 0 127 0 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 661.111100077629089, 386.111104667186737, 157.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 661.111100077629089, 332.407401859760284, 110.0, 22.0 ],
					"text" : "scale 0 127 0 2000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 661.111100077629089, 296.296291351318359, 157.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 117.0, 438.0, 100.0, 22.0 ],
					"text" : "scale 0 127 0. 10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 117.0, 397.407401859760284, 157.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 121.296294271945953, 335.833332777023315, 110.0, 22.0 ],
					"text" : "scale 0 127 0 1000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 117.0, 297.5, 157.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 664.814803719520569, 261.111106753349304, 150.0, 20.0 ],
					"text" : "ping pong delay"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 158.333330690860748, 264.814810395240784, 47.0, 20.0 ],
					"text" : "shift"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 325.0, 25.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"buffername" : "wetbuffer",
					"id" : "obj-23",
					"maxclass" : "waveform~",
					"numinlets" : 5,
					"numoutlets" : 6,
					"outlettype" : [ "float", "float", "float", "float", "list", "" ],
					"patching_rect" : [ 325.0, 77.0, 497.0, 92.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 325.0, 214.0, 108.0, 22.0 ],
					"text" : "buffer~ wetbuffer 2"
				}

			}
, 			{
				"box" : 				{
					"decodemode" : 1,
					"id" : "obj-14",
					"maxclass" : "live.drop",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 17.0, 25.0, 302.0, 205.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "live.drop",
							"parameter_shortname" : "live.drop",
							"parameter_type" : 4
						}

					}
,
					"varname" : "live.drop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"orientation" : 1,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 351.851845979690552, 632.407396852970123, 183.0, 45.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 104.0, 640.5, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"id" : "obj-1",
					"inletInfo" : 					{
						"IOInfo" : [ 							{
								"type" : "signal",
								"index" : 1,
								"tag" : "in1",
								"comment" : ""
							}
, 							{
								"type" : "signal",
								"index" : 2,
								"tag" : "in2",
								"comment" : ""
							}
 ]
					}
,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outletInfo" : 					{
						"IOInfo" : [ 							{
								"type" : "signal",
								"index" : 1,
								"tag" : "out1",
								"comment" : ""
							}
, 							{
								"type" : "signal",
								"index" : 2,
								"tag" : "out2",
								"comment" : ""
							}
 ]
					}
,
					"outlettype" : [ "signal", "signal", "list" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "rnbo",
						"rect" : [ 564.0, 104.0, 839.0, 828.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Lato",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"title" : "d",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 869.0, 669.0, 91.0, 21.0 ],
									"text" : "wetdry param"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 490.0, 36.0, 79.0, 21.0 ],
									"text" : "wet path"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 800.0, 32.0, 79.0, 21.0 ],
									"text" : "dry path"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 770.0, 629.0, 190.0, 23.0 ],
									"rnbo_classname" : "param",
									"rnbo_extra_attributes" : 									{
										"displayname" : "",
										"enum" : "",
										"ctlin" : 0.0,
										"displayorder" : "-",
										"unit" : "",
										"tonormalized" : "",
										"sendinit" : 1,
										"steps" : 0.0,
										"order" : "0",
										"meta" : "",
										"fromnormalized" : "",
										"exponent" : 1.0,
										"preset" : 1
									}
,
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "wetdry",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"value" : 											{
												"attrOrProp" : 2,
												"digest" : "Set initial value",
												"defaultarg" : 2,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Initial Value",
												"displayorder" : 3
											}
,
											"normalizedvalue" : 											{
												"attrOrProp" : 1,
												"digest" : "Set value normalized. ",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number"
											}
,
											"reset" : 											{
												"attrOrProp" : 1,
												"digest" : "Reset param to initial value",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bang"
											}
,
											"normalized" : 											{
												"attrOrProp" : 1,
												"digest" : "Normalized parameter value.",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "number"
											}
,
											"name" : 											{
												"attrOrProp" : 2,
												"digest" : "Name of the parameter",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "Parameter Name",
												"mandatory" : 1
											}
,
											"enum" : 											{
												"attrOrProp" : 2,
												"digest" : "Use an enumerated output",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "list",
												"label" : "Enum Values",
												"displayorder" : 6
											}
,
											"minimum" : 											{
												"attrOrProp" : 2,
												"digest" : "Minimum value",
												"isalias" : 0,
												"aliases" : [ "min" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Minimum",
												"displayorder" : 1
											}
,
											"min" : 											{
												"attrOrProp" : 2,
												"digest" : "Minimum value",
												"isalias" : 1,
												"aliasOf" : "minimum",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Minimum",
												"displayorder" : 1
											}
,
											"maximum" : 											{
												"attrOrProp" : 2,
												"digest" : "Maximum value",
												"isalias" : 0,
												"aliases" : [ "max" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Maximum",
												"displayorder" : 2
											}
,
											"max" : 											{
												"attrOrProp" : 2,
												"digest" : "Maximum value",
												"isalias" : 1,
												"aliasOf" : "maximum",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Maximum",
												"displayorder" : 2
											}
,
											"exponent" : 											{
												"attrOrProp" : 2,
												"digest" : "Scale values exponentially",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Exponent",
												"displayorder" : 7
											}
,
											"steps" : 											{
												"attrOrProp" : 2,
												"digest" : "Divide the output into a number of discrete steps",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Steps",
												"displayorder" : 8
											}
,
											"displayName" : 											{
												"attrOrProp" : 2,
												"digest" : "DEPRECATED: Use the lower case 'displayname' instead",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 1,
												"type" : "symbol",
												"label" : "Display Name"
											}
,
											"displayname" : 											{
												"attrOrProp" : 2,
												"digest" : "A more readable name for the parameter in an external RNBO target",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Display Name",
												"displayorder" : 14
											}
,
											"unit" : 											{
												"attrOrProp" : 2,
												"digest" : "A symbol to describe the unit of the parameter in an external RNBO target",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Unit",
												"displayorder" : 15
											}
,
											"tonormalized" : 											{
												"attrOrProp" : 2,
												"digest" : "Converts a real parameter value to its normalized form.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "To Normalized Expression",
												"displayorder" : 10
											}
,
											"fromnormalized" : 											{
												"attrOrProp" : 2,
												"digest" : "Converts a normalized parameter into its actual parameter value.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "From Normalized Expression",
												"displayorder" : 9
											}
,
											"order" : 											{
												"attrOrProp" : 2,
												"digest" : "Order in which initial parameter values will be sent out on patcher load. The order can be numeric or symbolic ('first' and 'last')",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "0",
												"label" : "Restore Order",
												"displayorder" : 12
											}
,
											"displayorder" : 											{
												"attrOrProp" : 2,
												"digest" : "Order in which parameters will show up in a list of all parameters. The order can be numeric or symbolic ('first' and 'last')",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "-",
												"label" : "Display Order",
												"displayorder" : 13
											}
,
											"sendinit" : 											{
												"attrOrProp" : 2,
												"digest" : "Send initial value",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "true",
												"label" : "Send Init",
												"displayorder" : 4
											}
,
											"ctlin" : 											{
												"attrOrProp" : 2,
												"digest" : "MIDI controller number to control this parameter.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"label" : "MIDI Controller Number.",
												"displayorder" : 16
											}
,
											"meta" : 											{
												"attrOrProp" : 2,
												"digest" : "A JSON formatted string containing metadata for use by the exported code",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Metadata",
												"displayorder" : 17
											}
,
											"nopreset" : 											{
												"attrOrProp" : 2,
												"digest" : "Do not add this value to the preset [DEPRECATED - USE @preset 0 instead].",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 1,
												"type" : "bool",
												"defaultValue" : "false"
											}
,
											"preset" : 											{
												"attrOrProp" : 2,
												"digest" : "Add this value to the preset.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "true",
												"label" : "Include In Preset",
												"displayorder" : 11
											}

										}
,
										"inputs" : [ 											{
												"name" : "value",
												"type" : "number",
												"digest" : "Parameter value",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "normalizedvalue",
												"type" : "number",
												"digest" : "Set value normalized. ",
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "value",
												"type" : "number",
												"digest" : "Parameter value",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "normalized",
												"type" : "number",
												"digest" : "Normalized parameter value.",
												"docked" : 0
											}
 ],
										"helpname" : "param",
										"aliasOf" : "param",
										"classname" : "param",
										"operator" : 0,
										"versionId" : -1940971094,
										"changesPatcherIO" : 0
									}
,
									"text" : "param wetdry 0.5 @min 0. @max 1.",
									"varname" : "wetdry"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 514.0, 717.0, 131.0, 52.0 ],
									"rnbo_classname" : "xfade~",
									"rnbo_extra_attributes" : 									{
										"boundmode" : "clip"
									}
,
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "xfade~_obj-28",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"out" : 											{
												"attrOrProp" : 1,
												"digest" : "The resultant crossfaded value",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "signal"
											}
,
											"in1" : 											{
												"attrOrProp" : 1,
												"digest" : "in1",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "signal",
												"defaultValue" : "0"
											}
,
											"in2" : 											{
												"attrOrProp" : 1,
												"digest" : "in2",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "signal",
												"defaultValue" : "0"
											}
,
											"pos" : 											{
												"attrOrProp" : 1,
												"digest" : "The crossfade position value",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"inputs" : 											{
												"attrOrProp" : 2,
												"digest" : "The number of input channels",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "2"
											}
,
											"fademode" : 											{
												"attrOrProp" : 2,
												"digest" : "Fade curve mode",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"enum" : [ "lin", "eqpower", "cos" ],
												"type" : "enum",
												"defaultValue" : "eqpower"
											}
,
											"positionmode" : 											{
												"attrOrProp" : 2,
												"digest" : "Fade position mode",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"enum" : [ "phase", "channel" ],
												"type" : "enum",
												"defaultValue" : "phase"
											}
,
											"boundmode" : 											{
												"attrOrProp" : 2,
												"digest" : "Fade bound mode",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"enum" : [ "wrap", "clip", "ignore" ],
												"type" : "enum",
												"defaultValue" : "clip"
											}

										}
,
										"inputs" : [ 											{
												"name" : "in1",
												"type" : "signal",
												"digest" : "in1",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "in2",
												"type" : "signal",
												"digest" : "in2",
												"docked" : 0
											}
, 											{
												"name" : "pos",
												"type" : "auto",
												"digest" : "The crossfade position value",
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "out",
												"type" : "signal",
												"digest" : "The resultant crossfaded value",
												"docked" : 0
											}
 ],
										"helpname" : "xfade~",
										"aliasOf" : "xfade",
										"classname" : "xfade~",
										"operator" : 0,
										"versionId" : 2103749869,
										"changesPatcherIO" : 0
									}
,
									"text" : "xfade~ 2 @positionmode phase @fademode eqpower"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 705.0, 717.0, 150.0, 52.0 ],
									"rnbo_classname" : "xfade~",
									"rnbo_extra_attributes" : 									{
										"boundmode" : "clip"
									}
,
									"rnbo_serial" : 2,
									"rnbo_uniqueid" : "xfade~_obj-20",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"out" : 											{
												"attrOrProp" : 1,
												"digest" : "The resultant crossfaded value",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "signal"
											}
,
											"in1" : 											{
												"attrOrProp" : 1,
												"digest" : "in1",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "signal",
												"defaultValue" : "0"
											}
,
											"in2" : 											{
												"attrOrProp" : 1,
												"digest" : "in2",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "signal",
												"defaultValue" : "0"
											}
,
											"pos" : 											{
												"attrOrProp" : 1,
												"digest" : "The crossfade position value",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"inputs" : 											{
												"attrOrProp" : 2,
												"digest" : "The number of input channels",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "2"
											}
,
											"fademode" : 											{
												"attrOrProp" : 2,
												"digest" : "Fade curve mode",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"enum" : [ "lin", "eqpower", "cos" ],
												"type" : "enum",
												"defaultValue" : "eqpower"
											}
,
											"positionmode" : 											{
												"attrOrProp" : 2,
												"digest" : "Fade position mode",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"enum" : [ "phase", "channel" ],
												"type" : "enum",
												"defaultValue" : "phase"
											}
,
											"boundmode" : 											{
												"attrOrProp" : 2,
												"digest" : "Fade bound mode",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"enum" : [ "wrap", "clip", "ignore" ],
												"type" : "enum",
												"defaultValue" : "clip"
											}

										}
,
										"inputs" : [ 											{
												"name" : "in1",
												"type" : "signal",
												"digest" : "in1",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "in2",
												"type" : "signal",
												"digest" : "in2",
												"docked" : 0
											}
, 											{
												"name" : "pos",
												"type" : "auto",
												"digest" : "The crossfade position value",
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "out",
												"type" : "signal",
												"digest" : "The resultant crossfaded value",
												"docked" : 0
											}
 ],
										"helpname" : "xfade~",
										"aliasOf" : "xfade",
										"classname" : "xfade~",
										"operator" : 0,
										"versionId" : 2103749869,
										"changesPatcherIO" : 0
									}
,
									"text" : "xfade~ 2 @positionmode phase @fademode eqpower"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 709.0, 290.5, 32.0, 23.0 ],
									"rnbo_classname" : "*~",
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "*~_obj-36",
									"text" : "*~ 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 743.0, 290.5, 29.5, 23.0 ],
									"rnbo_classname" : "*",
									"rnbo_extra_attributes" : 									{
										"hot" : 0
									}
,
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "*_obj-38",
									"text" : "* 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"genpatcher" : 									{
										"patcher" : 										{
											"fileversion" : 1,
											"appversion" : 											{
												"major" : 8,
												"minor" : 6,
												"revision" : 0,
												"architecture" : "x64",
												"modernui" : 1
											}
,
											"classnamespace" : "dsp.gen",
											"rect" : [ 472.0, 341.0, 558.0, 528.0 ],
											"bglocked" : 0,
											"openinpresentation" : 0,
											"default_fontsize" : 12.0,
											"default_fontface" : 0,
											"default_fontname" : "Arial",
											"gridonopen" : 1,
											"gridsize" : [ 15.0, 15.0 ],
											"gridsnaponopen" : 1,
											"objectsnaponopen" : 1,
											"statusbarvisible" : 0,
											"toolbarvisible" : 1,
											"lefttoolbarpinned" : 0,
											"toptoolbarpinned" : 0,
											"righttoolbarpinned" : 0,
											"bottomtoolbarpinned" : 0,
											"toolbars_unpinned_last_save" : 0,
											"tallnewobj" : 0,
											"boxanimatetime" : 200,
											"enablehscroll" : 1,
											"enablevscroll" : 1,
											"devicewidth" : 0.0,
											"description" : "",
											"digest" : "",
											"tags" : "",
											"style" : "",
											"subpatcher_template" : "",
											"assistshowspatchername" : 0,
											"boxes" : [ 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* pi",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-9",
														"patching_rect" : [ 271.0, 243.0, 26.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "in 3 @comment windowms",
														"numinlets" : 0,
														"id" : "obj-20",
														"patching_rect" : [ 24.5, 84.0, 152.0, 22.0 ],
														"numoutlets" : 1,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "in 2 @comment \"shift amount\"",
														"fontname" : "Arial",
														"numinlets" : 0,
														"id" : "obj-22",
														"patching_rect" : [ 271.0, 17.0, 172.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "out 1",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-21",
														"patching_rect" : [ 334.0, 439.0, 37.0, 22.0 ],
														"numoutlets" : 0,
														"fontsize" : 12.0
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontname" : "Arial",
														"numinlets" : 2,
														"id" : "obj-19",
														"patching_rect" : [ 411.5, 370.0, 32.5, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontname" : "Arial",
														"numinlets" : 2,
														"id" : "obj-18",
														"patching_rect" : [ 257.5, 370.0, 32.5, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "delay 44100 2",
														"fontname" : "Arial",
														"numinlets" : 3,
														"id" : "obj-17",
														"patching_rect" : [ 45.5, 313.0, 325.5, 22.0 ],
														"numoutlets" : 2,
														"fontsize" : 12.0,
														"outlettype" : [ "", "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontname" : "Arial",
														"numinlets" : 2,
														"id" : "obj-11",
														"patching_rect" : [ 352.0, 187.0, 32.5, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "cos",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-12",
														"patching_rect" : [ 425.0, 260.0, 29.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* pi",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-13",
														"patching_rect" : [ 425.0, 217.0, 28.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "- 0.5",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-14",
														"patching_rect" : [ 425.0, 187.0, 35.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "% 1",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-15",
														"patching_rect" : [ 425.0, 123.0, 31.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+ 0.5",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-16",
														"patching_rect" : [ 425.0, 95.0, 38.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "mstosamps",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-10",
														"patching_rect" : [ 24.5, 130.0, 72.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontname" : "Arial",
														"numinlets" : 2,
														"id" : "obj-8",
														"patching_rect" : [ 198.75, 187.0, 32.5, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "cos",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-7",
														"patching_rect" : [ 271.0, 269.0, 29.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* pi",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-6",
														"patching_rect" : [ 271.0, 217.0, 26.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "- 0.5",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-5",
														"patching_rect" : [ 271.0, 187.0, 35.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "% 1",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-4",
														"patching_rect" : [ 271.0, 123.0, 31.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+ 0.",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-3",
														"patching_rect" : [ 271.0, 95.0, 31.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "phasor",
														"fontname" : "Arial",
														"numinlets" : 2,
														"id" : "obj-2",
														"patching_rect" : [ 271.0, 49.0, 47.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "in 1 @comment \"input to shift\"",
														"linecount" : 2,
														"fontname" : "Arial",
														"numinlets" : 0,
														"id" : "obj-1",
														"patching_rect" : [ 45.5, 247.0, 103.0, 35.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
 ],
											"lines" : [ 												{
													"patchline" : 													{
														"source" : [ "obj-20", 0 ],
														"destination" : [ "obj-10", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-4", 0 ],
														"destination" : [ "obj-8", 0 ],
														"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-10", 0 ],
														"destination" : [ "obj-8", 1 ],
														"color" : [ 0.0, 1.0, 0.501961, 1.0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-15", 0 ],
														"destination" : [ "obj-11", 0 ],
														"color" : [ 1.0, 0.0, 0.501961, 1.0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-14", 0 ],
														"destination" : [ "obj-13", 0 ],
														"color" : [ 1.0, 0.0, 0.501961, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-15", 0 ],
														"destination" : [ "obj-14", 0 ],
														"color" : [ 1.0, 0.0, 0.501961, 1.0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-10", 0 ],
														"destination" : [ "obj-11", 1 ],
														"color" : [ 0.0, 1.0, 0.501961, 1.0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-8", 0 ],
														"destination" : [ "obj-17", 1 ],
														"color" : [ 1.0, 0.501961, 0.0, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-11", 0 ],
														"destination" : [ "obj-17", 2 ],
														"color" : [ 1.0, 0.0, 0.501961, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-17", 0 ],
														"destination" : [ "obj-18", 0 ],
														"color" : [ 1.0, 0.501961, 0.0, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-17", 1 ],
														"destination" : [ "obj-19", 0 ],
														"color" : [ 1.0, 0.0, 0.501961, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-12", 0 ],
														"destination" : [ "obj-19", 1 ],
														"color" : [ 1.0, 0.0, 0.501961, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-7", 0 ],
														"destination" : [ "obj-18", 1 ],
														"color" : [ 1.0, 0.501961, 0.0, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-18", 0 ],
														"destination" : [ "obj-21", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-1", 0 ],
														"destination" : [ "obj-17", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-4", 0 ],
														"destination" : [ "obj-5", 0 ],
														"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-2", 0 ],
														"destination" : [ "obj-3", 0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-3", 0 ],
														"destination" : [ "obj-4", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-16", 0 ],
														"destination" : [ "obj-15", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-2", 0 ],
														"destination" : [ "obj-16", 0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-19", 0 ],
														"destination" : [ "obj-21", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-22", 0 ],
														"destination" : [ "obj-2", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-5", 0 ],
														"destination" : [ "obj-6", 0 ],
														"color" : [ 1.0, 0.501961, 0.0, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-13", 0 ],
														"destination" : [ "obj-12", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-9", 0 ],
														"destination" : [ "obj-7", 0 ],
														"color" : [ 1.0, 0.501961, 0.0, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-6", 0 ],
														"destination" : [ "obj-9", 0 ],
														"color" : [ 1.0, 0.501961, 0.0, 1.0 ]
													}

												}
 ],
											"bgcolor" : [ 0.9, 0.9, 0.9, 0.9 ]
										}

									}
,
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 684.0, 331.5, 68.0, 22.0 ],
									"rnbo_classname" : "gen~",
									"rnbo_extra_attributes" : 									{
										"exposeparams" : 0
									}
,
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "shift1",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"in1" : 											{
												"attrOrProp" : 1,
												"digest" : "in1",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number"
											}
,
											"reset" : 											{
												"attrOrProp" : 1,
												"digest" : "Reset all param and history objects to initial values",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bang"
											}
,
											"expr" : 											{
												"attrOrProp" : 2,
												"digest" : "a gen expression",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"doNotShowInMaxInspector" : 1
											}
,
											"file" : 											{
												"attrOrProp" : 2,
												"digest" : "gendsp file to load",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"doNotShowInMaxInspector" : 1
											}
,
											"title" : 											{
												"attrOrProp" : 2,
												"digest" : "a title",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [ "t" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"doNotShowInMaxInspector" : 1
											}
,
											"t" : 											{
												"attrOrProp" : 2,
												"digest" : "a title",
												"defaultarg" : 1,
												"isalias" : 1,
												"aliasOf" : "title",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol"
											}
,
											"exposeparams" : 											{
												"attrOrProp" : 2,
												"digest" : "Expose gen params as RNBO params.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "false"
											}

										}
,
										"inputs" : [ 											{
												"name" : "in1",
												"type" : "auto",
												"digest" : "in1",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "in2",
												"type" : "auto"
											}
, 											{
												"name" : "in3",
												"type" : "auto"
											}
 ],
										"outputs" : [ 											{
												"name" : "out1",
												"type" : "signal"
											}
 ],
										"helpname" : "gen~",
										"aliasOf" : "gen~",
										"classname" : "gen~",
										"operator" : 0,
										"versionId" : 1405647718,
										"changesPatcherIO" : 0
									}
,
									"text" : "gen~ shift1",
									"varname" : "shift1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 518.0, 289.0, 32.0, 23.0 ],
									"rnbo_classname" : "*~",
									"rnbo_serial" : 2,
									"rnbo_uniqueid" : "*~_obj-35",
									"text" : "*~ 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 552.0, 289.0, 29.5, 23.0 ],
									"rnbo_classname" : "*",
									"rnbo_extra_attributes" : 									{
										"hot" : 0
									}
,
									"rnbo_serial" : 2,
									"rnbo_uniqueid" : "*_obj-34",
									"text" : "* 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"genpatcher" : 									{
										"patcher" : 										{
											"fileversion" : 1,
											"appversion" : 											{
												"major" : 8,
												"minor" : 6,
												"revision" : 0,
												"architecture" : "x64",
												"modernui" : 1
											}
,
											"classnamespace" : "dsp.gen",
											"rect" : [ 472.0, 341.0, 558.0, 528.0 ],
											"bglocked" : 0,
											"openinpresentation" : 0,
											"default_fontsize" : 12.0,
											"default_fontface" : 0,
											"default_fontname" : "Arial",
											"gridonopen" : 1,
											"gridsize" : [ 15.0, 15.0 ],
											"gridsnaponopen" : 1,
											"objectsnaponopen" : 1,
											"statusbarvisible" : 0,
											"toolbarvisible" : 1,
											"lefttoolbarpinned" : 0,
											"toptoolbarpinned" : 0,
											"righttoolbarpinned" : 0,
											"bottomtoolbarpinned" : 0,
											"toolbars_unpinned_last_save" : 0,
											"tallnewobj" : 0,
											"boxanimatetime" : 200,
											"enablehscroll" : 1,
											"enablevscroll" : 1,
											"devicewidth" : 0.0,
											"description" : "",
											"digest" : "",
											"tags" : "",
											"style" : "",
											"subpatcher_template" : "",
											"assistshowspatchername" : 0,
											"boxes" : [ 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* pi",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-9",
														"patching_rect" : [ 271.0, 243.0, 26.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "in 3 @comment windowms",
														"numinlets" : 0,
														"id" : "obj-20",
														"patching_rect" : [ 24.5, 84.0, 152.0, 22.0 ],
														"numoutlets" : 1,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "in 2 @comment \"shift amount\"",
														"fontname" : "Arial",
														"numinlets" : 0,
														"id" : "obj-22",
														"patching_rect" : [ 271.0, 17.0, 172.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "out 1",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-21",
														"patching_rect" : [ 334.0, 439.0, 37.0, 22.0 ],
														"numoutlets" : 0,
														"fontsize" : 12.0
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontname" : "Arial",
														"numinlets" : 2,
														"id" : "obj-19",
														"patching_rect" : [ 411.5, 370.0, 32.5, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontname" : "Arial",
														"numinlets" : 2,
														"id" : "obj-18",
														"patching_rect" : [ 257.5, 370.0, 32.5, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "delay 44100 2",
														"fontname" : "Arial",
														"numinlets" : 3,
														"id" : "obj-17",
														"patching_rect" : [ 45.5, 313.0, 325.5, 22.0 ],
														"numoutlets" : 2,
														"fontsize" : 12.0,
														"outlettype" : [ "", "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontname" : "Arial",
														"numinlets" : 2,
														"id" : "obj-11",
														"patching_rect" : [ 352.0, 187.0, 32.5, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "cos",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-12",
														"patching_rect" : [ 425.0, 260.0, 29.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* pi",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-13",
														"patching_rect" : [ 425.0, 217.0, 28.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "- 0.5",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-14",
														"patching_rect" : [ 425.0, 187.0, 35.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "% 1",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-15",
														"patching_rect" : [ 425.0, 123.0, 31.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+ 0.5",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-16",
														"patching_rect" : [ 425.0, 95.0, 38.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "mstosamps",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-10",
														"patching_rect" : [ 24.5, 130.0, 72.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontname" : "Arial",
														"numinlets" : 2,
														"id" : "obj-8",
														"patching_rect" : [ 198.75, 187.0, 32.5, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "cos",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-7",
														"patching_rect" : [ 271.0, 269.0, 29.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* pi",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-6",
														"patching_rect" : [ 271.0, 217.0, 26.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "- 0.5",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-5",
														"patching_rect" : [ 271.0, 187.0, 35.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "% 1",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-4",
														"patching_rect" : [ 271.0, 123.0, 31.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+ 0.",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-3",
														"patching_rect" : [ 271.0, 95.0, 31.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "phasor",
														"fontname" : "Arial",
														"numinlets" : 2,
														"id" : "obj-2",
														"patching_rect" : [ 271.0, 49.0, 47.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "in 1 @comment \"input to shift\"",
														"linecount" : 2,
														"fontname" : "Arial",
														"numinlets" : 0,
														"id" : "obj-1",
														"patching_rect" : [ 45.5, 247.0, 103.0, 35.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
 ],
											"lines" : [ 												{
													"patchline" : 													{
														"source" : [ "obj-6", 0 ],
														"destination" : [ "obj-9", 0 ],
														"color" : [ 1.0, 0.501961, 0.0, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-9", 0 ],
														"destination" : [ "obj-7", 0 ],
														"color" : [ 1.0, 0.501961, 0.0, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-13", 0 ],
														"destination" : [ "obj-12", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-5", 0 ],
														"destination" : [ "obj-6", 0 ],
														"color" : [ 1.0, 0.501961, 0.0, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-22", 0 ],
														"destination" : [ "obj-2", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-19", 0 ],
														"destination" : [ "obj-21", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-2", 0 ],
														"destination" : [ "obj-16", 0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-16", 0 ],
														"destination" : [ "obj-15", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-3", 0 ],
														"destination" : [ "obj-4", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-2", 0 ],
														"destination" : [ "obj-3", 0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-4", 0 ],
														"destination" : [ "obj-5", 0 ],
														"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-1", 0 ],
														"destination" : [ "obj-17", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-18", 0 ],
														"destination" : [ "obj-21", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-7", 0 ],
														"destination" : [ "obj-18", 1 ],
														"color" : [ 1.0, 0.501961, 0.0, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-12", 0 ],
														"destination" : [ "obj-19", 1 ],
														"color" : [ 1.0, 0.0, 0.501961, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-17", 1 ],
														"destination" : [ "obj-19", 0 ],
														"color" : [ 1.0, 0.0, 0.501961, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-17", 0 ],
														"destination" : [ "obj-18", 0 ],
														"color" : [ 1.0, 0.501961, 0.0, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-11", 0 ],
														"destination" : [ "obj-17", 2 ],
														"color" : [ 1.0, 0.0, 0.501961, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-8", 0 ],
														"destination" : [ "obj-17", 1 ],
														"color" : [ 1.0, 0.501961, 0.0, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-10", 0 ],
														"destination" : [ "obj-11", 1 ],
														"color" : [ 0.0, 1.0, 0.501961, 1.0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-15", 0 ],
														"destination" : [ "obj-14", 0 ],
														"color" : [ 1.0, 0.0, 0.501961, 1.0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-14", 0 ],
														"destination" : [ "obj-13", 0 ],
														"color" : [ 1.0, 0.0, 0.501961, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-15", 0 ],
														"destination" : [ "obj-11", 0 ],
														"color" : [ 1.0, 0.0, 0.501961, 1.0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-10", 0 ],
														"destination" : [ "obj-8", 1 ],
														"color" : [ 0.0, 1.0, 0.501961, 1.0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-4", 0 ],
														"destination" : [ "obj-8", 0 ],
														"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-20", 0 ],
														"destination" : [ "obj-10", 0 ]
													}

												}
 ],
											"bgcolor" : [ 0.9, 0.9, 0.9, 0.9 ]
										}

									}
,
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 497.0, 333.0, 68.0, 22.0 ],
									"rnbo_classname" : "gen~",
									"rnbo_extra_attributes" : 									{
										"exposeparams" : 0
									}
,
									"rnbo_serial" : 2,
									"rnbo_uniqueid" : "shift2",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"in1" : 											{
												"attrOrProp" : 1,
												"digest" : "in1",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number"
											}
,
											"reset" : 											{
												"attrOrProp" : 1,
												"digest" : "Reset all param and history objects to initial values",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bang"
											}
,
											"expr" : 											{
												"attrOrProp" : 2,
												"digest" : "a gen expression",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"doNotShowInMaxInspector" : 1
											}
,
											"file" : 											{
												"attrOrProp" : 2,
												"digest" : "gendsp file to load",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"doNotShowInMaxInspector" : 1
											}
,
											"title" : 											{
												"attrOrProp" : 2,
												"digest" : "a title",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [ "t" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"doNotShowInMaxInspector" : 1
											}
,
											"t" : 											{
												"attrOrProp" : 2,
												"digest" : "a title",
												"defaultarg" : 1,
												"isalias" : 1,
												"aliasOf" : "title",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol"
											}
,
											"exposeparams" : 											{
												"attrOrProp" : 2,
												"digest" : "Expose gen params as RNBO params.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "false"
											}

										}
,
										"inputs" : [ 											{
												"name" : "in1",
												"type" : "auto",
												"digest" : "in1",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "in2",
												"type" : "auto"
											}
, 											{
												"name" : "in3",
												"type" : "auto"
											}
 ],
										"outputs" : [ 											{
												"name" : "out1",
												"type" : "signal"
											}
 ],
										"helpname" : "gen~",
										"aliasOf" : "gen~",
										"classname" : "gen~",
										"operator" : 0,
										"versionId" : 1405647718,
										"changesPatcherIO" : 0
									}
,
									"text" : "gen~ shift2",
									"varname" : "shift2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 859.0, 247.0, 70.0, 21.0 ],
									"text" : "lfo panner"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1.0, 58.0, 86.0, 21.0 ],
									"text" : "shift feedback"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 684.0, 210.5, 63.0, 23.0 ],
									"rnbo_classname" : "feedback~",
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "feedback~_obj-16",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"input" : 											{
												"attrOrProp" : 1,
												"digest" : "Signal to feed back.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "signal"
											}
,
											"output" : 											{
												"attrOrProp" : 1,
												"digest" : "Signal that was fed back (with one signal buffer delay).",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "signal"
											}

										}
,
										"inputs" : [ 											{
												"name" : "input",
												"type" : "signal",
												"digest" : "Signal to feed back.",
												"hot" : 1,
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "output",
												"type" : "signal",
												"digest" : "Signal that was fed back (with one signal buffer delay).",
												"docked" : 0
											}
 ],
										"helpname" : "feedback~",
										"aliasOf" : "feedback~",
										"classname" : "feedback~",
										"operator" : 0,
										"versionId" : -653846986,
										"changesPatcherIO" : 0
									}
,
									"text" : "feedback~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 684.0, 172.5, 29.5, 23.0 ],
									"rnbo_classname" : "*~",
									"rnbo_serial" : 3,
									"rnbo_uniqueid" : "*~_obj-18",
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 498.0, 209.5, 63.0, 23.0 ],
									"rnbo_classname" : "feedback~",
									"rnbo_serial" : 2,
									"rnbo_uniqueid" : "feedback~_obj-15",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"input" : 											{
												"attrOrProp" : 1,
												"digest" : "Signal to feed back.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "signal"
											}
,
											"output" : 											{
												"attrOrProp" : 1,
												"digest" : "Signal that was fed back (with one signal buffer delay).",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "signal"
											}

										}
,
										"inputs" : [ 											{
												"name" : "input",
												"type" : "signal",
												"digest" : "Signal to feed back.",
												"hot" : 1,
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "output",
												"type" : "signal",
												"digest" : "Signal that was fed back (with one signal buffer delay).",
												"docked" : 0
											}
 ],
										"helpname" : "feedback~",
										"aliasOf" : "feedback~",
										"classname" : "feedback~",
										"operator" : 0,
										"versionId" : -653846986,
										"changesPatcherIO" : 0
									}
,
									"text" : "feedback~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 498.0, 172.5, 29.5, 23.0 ],
									"rnbo_classname" : "*~",
									"rnbo_serial" : 4,
									"rnbo_uniqueid" : "*~_obj-3",
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 105.5, 57.0, 231.0, 23.0 ],
									"rnbo_classname" : "param",
									"rnbo_extra_attributes" : 									{
										"displayname" : "",
										"enum" : "",
										"ctlin" : 0.0,
										"displayorder" : "-",
										"unit" : "",
										"tonormalized" : "",
										"sendinit" : 1,
										"steps" : 0.0,
										"order" : "0",
										"meta" : "",
										"fromnormalized" : "",
										"exponent" : 1.0,
										"preset" : 1
									}
,
									"rnbo_serial" : 10,
									"rnbo_uniqueid" : "shiftfeedback",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"value" : 											{
												"attrOrProp" : 2,
												"digest" : "Set initial value",
												"defaultarg" : 2,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Initial Value",
												"displayorder" : 3
											}
,
											"normalizedvalue" : 											{
												"attrOrProp" : 1,
												"digest" : "Set value normalized. ",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number"
											}
,
											"reset" : 											{
												"attrOrProp" : 1,
												"digest" : "Reset param to initial value",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bang"
											}
,
											"normalized" : 											{
												"attrOrProp" : 1,
												"digest" : "Normalized parameter value.",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "number"
											}
,
											"name" : 											{
												"attrOrProp" : 2,
												"digest" : "Name of the parameter",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "Parameter Name",
												"mandatory" : 1
											}
,
											"enum" : 											{
												"attrOrProp" : 2,
												"digest" : "Use an enumerated output",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "list",
												"label" : "Enum Values",
												"displayorder" : 6
											}
,
											"minimum" : 											{
												"attrOrProp" : 2,
												"digest" : "Minimum value",
												"isalias" : 0,
												"aliases" : [ "min" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Minimum",
												"displayorder" : 1
											}
,
											"min" : 											{
												"attrOrProp" : 2,
												"digest" : "Minimum value",
												"isalias" : 1,
												"aliasOf" : "minimum",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Minimum",
												"displayorder" : 1
											}
,
											"maximum" : 											{
												"attrOrProp" : 2,
												"digest" : "Maximum value",
												"isalias" : 0,
												"aliases" : [ "max" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Maximum",
												"displayorder" : 2
											}
,
											"max" : 											{
												"attrOrProp" : 2,
												"digest" : "Maximum value",
												"isalias" : 1,
												"aliasOf" : "maximum",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Maximum",
												"displayorder" : 2
											}
,
											"exponent" : 											{
												"attrOrProp" : 2,
												"digest" : "Scale values exponentially",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Exponent",
												"displayorder" : 7
											}
,
											"steps" : 											{
												"attrOrProp" : 2,
												"digest" : "Divide the output into a number of discrete steps",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Steps",
												"displayorder" : 8
											}
,
											"displayName" : 											{
												"attrOrProp" : 2,
												"digest" : "DEPRECATED: Use the lower case 'displayname' instead",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 1,
												"type" : "symbol",
												"label" : "Display Name"
											}
,
											"displayname" : 											{
												"attrOrProp" : 2,
												"digest" : "A more readable name for the parameter in an external RNBO target",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Display Name",
												"displayorder" : 14
											}
,
											"unit" : 											{
												"attrOrProp" : 2,
												"digest" : "A symbol to describe the unit of the parameter in an external RNBO target",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Unit",
												"displayorder" : 15
											}
,
											"tonormalized" : 											{
												"attrOrProp" : 2,
												"digest" : "Converts a real parameter value to its normalized form.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "To Normalized Expression",
												"displayorder" : 10
											}
,
											"fromnormalized" : 											{
												"attrOrProp" : 2,
												"digest" : "Converts a normalized parameter into its actual parameter value.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "From Normalized Expression",
												"displayorder" : 9
											}
,
											"order" : 											{
												"attrOrProp" : 2,
												"digest" : "Order in which initial parameter values will be sent out on patcher load. The order can be numeric or symbolic ('first' and 'last')",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "0",
												"label" : "Restore Order",
												"displayorder" : 12
											}
,
											"displayorder" : 											{
												"attrOrProp" : 2,
												"digest" : "Order in which parameters will show up in a list of all parameters. The order can be numeric or symbolic ('first' and 'last')",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "-",
												"label" : "Display Order",
												"displayorder" : 13
											}
,
											"sendinit" : 											{
												"attrOrProp" : 2,
												"digest" : "Send initial value",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "true",
												"label" : "Send Init",
												"displayorder" : 4
											}
,
											"ctlin" : 											{
												"attrOrProp" : 2,
												"digest" : "MIDI controller number to control this parameter.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"label" : "MIDI Controller Number.",
												"displayorder" : 16
											}
,
											"meta" : 											{
												"attrOrProp" : 2,
												"digest" : "A JSON formatted string containing metadata for use by the exported code",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Metadata",
												"displayorder" : 17
											}
,
											"nopreset" : 											{
												"attrOrProp" : 2,
												"digest" : "Do not add this value to the preset [DEPRECATED - USE @preset 0 instead].",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 1,
												"type" : "bool",
												"defaultValue" : "false"
											}
,
											"preset" : 											{
												"attrOrProp" : 2,
												"digest" : "Add this value to the preset.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "true",
												"label" : "Include In Preset",
												"displayorder" : 11
											}

										}
,
										"inputs" : [ 											{
												"name" : "value",
												"type" : "number",
												"digest" : "Parameter value",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "normalizedvalue",
												"type" : "number",
												"digest" : "Set value normalized. ",
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "value",
												"type" : "number",
												"digest" : "Parameter value",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "normalized",
												"type" : "number",
												"digest" : "Normalized parameter value.",
												"docked" : 0
											}
 ],
										"helpname" : "param",
										"aliasOf" : "param",
										"classname" : "param",
										"operator" : 0,
										"versionId" : -1940971094,
										"changesPatcherIO" : 0
									}
,
									"text" : "param shiftfeedback 0.2 @min 0. @max 0.8",
									"varname" : "shiftfeedback"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 830.0, 415.0, 42.0, 23.0 ],
									"rnbo_classname" : "+~",
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "+~_obj-13",
									"text" : "+~ 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 602.0, 17.5, 35.0, 23.0 ],
									"rnbo_classname" : "in~",
									"rnbo_extra_attributes" : 									{
										"comment" : "",
										"meta" : ""
									}
,
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "in~_obj-45",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"out1" : 											{
												"attrOrProp" : 1,
												"digest" : "signal from inlet with index 2",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "signal"
											}
,
											"index" : 											{
												"attrOrProp" : 2,
												"digest" : "inlet number",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"mandatory" : 1
											}
,
											"comment" : 											{
												"attrOrProp" : 2,
												"digest" : "mouse over comment",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol"
											}
,
											"meta" : 											{
												"attrOrProp" : 2,
												"digest" : "A JSON formatted string containing metadata for use by the exported code",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Metadata",
												"displayorder" : 3
											}

										}
,
										"inputs" : [  ],
										"outputs" : [ 											{
												"name" : "out1",
												"type" : "signal",
												"digest" : "signal from inlet with index 2",
												"displayName" : "",
												"docked" : 0
											}
 ],
										"helpname" : "in~",
										"aliasOf" : "in~",
										"classname" : "in~",
										"operator" : 0,
										"versionId" : -176007711,
										"changesPatcherIO" : 1
									}
,
									"text" : "in~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 419.0, 17.5, 35.0, 23.0 ],
									"rnbo_classname" : "in~",
									"rnbo_extra_attributes" : 									{
										"comment" : "",
										"meta" : ""
									}
,
									"rnbo_serial" : 2,
									"rnbo_uniqueid" : "in~_obj-26",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"out1" : 											{
												"attrOrProp" : 1,
												"digest" : "signal from inlet with index 1",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "signal"
											}
,
											"index" : 											{
												"attrOrProp" : 2,
												"digest" : "inlet number",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"mandatory" : 1
											}
,
											"comment" : 											{
												"attrOrProp" : 2,
												"digest" : "mouse over comment",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol"
											}
,
											"meta" : 											{
												"attrOrProp" : 2,
												"digest" : "A JSON formatted string containing metadata for use by the exported code",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Metadata",
												"displayorder" : 3
											}

										}
,
										"inputs" : [  ],
										"outputs" : [ 											{
												"name" : "out1",
												"type" : "signal",
												"digest" : "signal from inlet with index 1",
												"displayName" : "",
												"docked" : 0
											}
 ],
										"helpname" : "in~",
										"aliasOf" : "in~",
										"classname" : "in~",
										"operator" : 0,
										"versionId" : -176007711,
										"changesPatcherIO" : 1
									}
,
									"text" : "in~ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-77",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 830.0, 385.0, 29.5, 23.0 ],
									"rnbo_classname" : "*~",
									"rnbo_serial" : 5,
									"rnbo_uniqueid" : "*~_obj-77",
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-75",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 859.0, 346.0, 218.0, 23.0 ],
									"rnbo_classname" : "param",
									"rnbo_extra_attributes" : 									{
										"displayname" : "",
										"enum" : "",
										"ctlin" : 0.0,
										"displayorder" : "-",
										"unit" : "",
										"tonormalized" : "",
										"sendinit" : 1,
										"steps" : 0.0,
										"order" : "0",
										"meta" : "",
										"fromnormalized" : "",
										"exponent" : 1.0,
										"preset" : 1
									}
,
									"rnbo_serial" : 3,
									"rnbo_uniqueid" : "lfoamount",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"value" : 											{
												"attrOrProp" : 2,
												"digest" : "Set initial value",
												"defaultarg" : 2,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Initial Value",
												"displayorder" : 3
											}
,
											"normalizedvalue" : 											{
												"attrOrProp" : 1,
												"digest" : "Set value normalized. ",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number"
											}
,
											"reset" : 											{
												"attrOrProp" : 1,
												"digest" : "Reset param to initial value",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bang"
											}
,
											"normalized" : 											{
												"attrOrProp" : 1,
												"digest" : "Normalized parameter value.",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "number"
											}
,
											"name" : 											{
												"attrOrProp" : 2,
												"digest" : "Name of the parameter",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "Parameter Name",
												"mandatory" : 1
											}
,
											"enum" : 											{
												"attrOrProp" : 2,
												"digest" : "Use an enumerated output",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "list",
												"label" : "Enum Values",
												"displayorder" : 6
											}
,
											"minimum" : 											{
												"attrOrProp" : 2,
												"digest" : "Minimum value",
												"isalias" : 0,
												"aliases" : [ "min" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Minimum",
												"displayorder" : 1
											}
,
											"min" : 											{
												"attrOrProp" : 2,
												"digest" : "Minimum value",
												"isalias" : 1,
												"aliasOf" : "minimum",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Minimum",
												"displayorder" : 1
											}
,
											"maximum" : 											{
												"attrOrProp" : 2,
												"digest" : "Maximum value",
												"isalias" : 0,
												"aliases" : [ "max" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Maximum",
												"displayorder" : 2
											}
,
											"max" : 											{
												"attrOrProp" : 2,
												"digest" : "Maximum value",
												"isalias" : 1,
												"aliasOf" : "maximum",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Maximum",
												"displayorder" : 2
											}
,
											"exponent" : 											{
												"attrOrProp" : 2,
												"digest" : "Scale values exponentially",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Exponent",
												"displayorder" : 7
											}
,
											"steps" : 											{
												"attrOrProp" : 2,
												"digest" : "Divide the output into a number of discrete steps",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Steps",
												"displayorder" : 8
											}
,
											"displayName" : 											{
												"attrOrProp" : 2,
												"digest" : "DEPRECATED: Use the lower case 'displayname' instead",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 1,
												"type" : "symbol",
												"label" : "Display Name"
											}
,
											"displayname" : 											{
												"attrOrProp" : 2,
												"digest" : "A more readable name for the parameter in an external RNBO target",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Display Name",
												"displayorder" : 14
											}
,
											"unit" : 											{
												"attrOrProp" : 2,
												"digest" : "A symbol to describe the unit of the parameter in an external RNBO target",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Unit",
												"displayorder" : 15
											}
,
											"tonormalized" : 											{
												"attrOrProp" : 2,
												"digest" : "Converts a real parameter value to its normalized form.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "To Normalized Expression",
												"displayorder" : 10
											}
,
											"fromnormalized" : 											{
												"attrOrProp" : 2,
												"digest" : "Converts a normalized parameter into its actual parameter value.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "From Normalized Expression",
												"displayorder" : 9
											}
,
											"order" : 											{
												"attrOrProp" : 2,
												"digest" : "Order in which initial parameter values will be sent out on patcher load. The order can be numeric or symbolic ('first' and 'last')",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "0",
												"label" : "Restore Order",
												"displayorder" : 12
											}
,
											"displayorder" : 											{
												"attrOrProp" : 2,
												"digest" : "Order in which parameters will show up in a list of all parameters. The order can be numeric or symbolic ('first' and 'last')",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "-",
												"label" : "Display Order",
												"displayorder" : 13
											}
,
											"sendinit" : 											{
												"attrOrProp" : 2,
												"digest" : "Send initial value",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "true",
												"label" : "Send Init",
												"displayorder" : 4
											}
,
											"ctlin" : 											{
												"attrOrProp" : 2,
												"digest" : "MIDI controller number to control this parameter.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"label" : "MIDI Controller Number.",
												"displayorder" : 16
											}
,
											"meta" : 											{
												"attrOrProp" : 2,
												"digest" : "A JSON formatted string containing metadata for use by the exported code",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Metadata",
												"displayorder" : 17
											}
,
											"nopreset" : 											{
												"attrOrProp" : 2,
												"digest" : "Do not add this value to the preset [DEPRECATED - USE @preset 0 instead].",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 1,
												"type" : "bool",
												"defaultValue" : "false"
											}
,
											"preset" : 											{
												"attrOrProp" : 2,
												"digest" : "Add this value to the preset.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "true",
												"label" : "Include In Preset",
												"displayorder" : 11
											}

										}
,
										"inputs" : [ 											{
												"name" : "value",
												"type" : "number",
												"digest" : "Parameter value",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "normalizedvalue",
												"type" : "number",
												"digest" : "Set value normalized. ",
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "value",
												"type" : "number",
												"digest" : "Parameter value",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "normalized",
												"type" : "number",
												"digest" : "Normalized parameter value.",
												"docked" : 0
											}
 ],
										"helpname" : "param",
										"aliasOf" : "param",
										"classname" : "param",
										"operator" : 0,
										"versionId" : -1940971094,
										"changesPatcherIO" : 0
									}
,
									"text" : "param lfoamount 0. @min 0.01 @max 1.",
									"varname" : "lfoamount"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 830.0, 287.0, 203.0, 23.0 ],
									"rnbo_classname" : "param",
									"rnbo_extra_attributes" : 									{
										"displayname" : "",
										"enum" : "",
										"ctlin" : 0.0,
										"displayorder" : "-",
										"unit" : "",
										"tonormalized" : "",
										"sendinit" : 1,
										"steps" : 0.0,
										"order" : "0",
										"meta" : "",
										"fromnormalized" : "",
										"exponent" : 1.0,
										"preset" : 1
									}
,
									"rnbo_serial" : 4,
									"rnbo_uniqueid" : "lfofreq",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"value" : 											{
												"attrOrProp" : 2,
												"digest" : "Set initial value",
												"defaultarg" : 2,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Initial Value",
												"displayorder" : 3
											}
,
											"normalizedvalue" : 											{
												"attrOrProp" : 1,
												"digest" : "Set value normalized. ",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number"
											}
,
											"reset" : 											{
												"attrOrProp" : 1,
												"digest" : "Reset param to initial value",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bang"
											}
,
											"normalized" : 											{
												"attrOrProp" : 1,
												"digest" : "Normalized parameter value.",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "number"
											}
,
											"name" : 											{
												"attrOrProp" : 2,
												"digest" : "Name of the parameter",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "Parameter Name",
												"mandatory" : 1
											}
,
											"enum" : 											{
												"attrOrProp" : 2,
												"digest" : "Use an enumerated output",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "list",
												"label" : "Enum Values",
												"displayorder" : 6
											}
,
											"minimum" : 											{
												"attrOrProp" : 2,
												"digest" : "Minimum value",
												"isalias" : 0,
												"aliases" : [ "min" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Minimum",
												"displayorder" : 1
											}
,
											"min" : 											{
												"attrOrProp" : 2,
												"digest" : "Minimum value",
												"isalias" : 1,
												"aliasOf" : "minimum",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Minimum",
												"displayorder" : 1
											}
,
											"maximum" : 											{
												"attrOrProp" : 2,
												"digest" : "Maximum value",
												"isalias" : 0,
												"aliases" : [ "max" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Maximum",
												"displayorder" : 2
											}
,
											"max" : 											{
												"attrOrProp" : 2,
												"digest" : "Maximum value",
												"isalias" : 1,
												"aliasOf" : "maximum",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Maximum",
												"displayorder" : 2
											}
,
											"exponent" : 											{
												"attrOrProp" : 2,
												"digest" : "Scale values exponentially",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Exponent",
												"displayorder" : 7
											}
,
											"steps" : 											{
												"attrOrProp" : 2,
												"digest" : "Divide the output into a number of discrete steps",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Steps",
												"displayorder" : 8
											}
,
											"displayName" : 											{
												"attrOrProp" : 2,
												"digest" : "DEPRECATED: Use the lower case 'displayname' instead",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 1,
												"type" : "symbol",
												"label" : "Display Name"
											}
,
											"displayname" : 											{
												"attrOrProp" : 2,
												"digest" : "A more readable name for the parameter in an external RNBO target",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Display Name",
												"displayorder" : 14
											}
,
											"unit" : 											{
												"attrOrProp" : 2,
												"digest" : "A symbol to describe the unit of the parameter in an external RNBO target",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Unit",
												"displayorder" : 15
											}
,
											"tonormalized" : 											{
												"attrOrProp" : 2,
												"digest" : "Converts a real parameter value to its normalized form.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "To Normalized Expression",
												"displayorder" : 10
											}
,
											"fromnormalized" : 											{
												"attrOrProp" : 2,
												"digest" : "Converts a normalized parameter into its actual parameter value.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "From Normalized Expression",
												"displayorder" : 9
											}
,
											"order" : 											{
												"attrOrProp" : 2,
												"digest" : "Order in which initial parameter values will be sent out on patcher load. The order can be numeric or symbolic ('first' and 'last')",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "0",
												"label" : "Restore Order",
												"displayorder" : 12
											}
,
											"displayorder" : 											{
												"attrOrProp" : 2,
												"digest" : "Order in which parameters will show up in a list of all parameters. The order can be numeric or symbolic ('first' and 'last')",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "-",
												"label" : "Display Order",
												"displayorder" : 13
											}
,
											"sendinit" : 											{
												"attrOrProp" : 2,
												"digest" : "Send initial value",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "true",
												"label" : "Send Init",
												"displayorder" : 4
											}
,
											"ctlin" : 											{
												"attrOrProp" : 2,
												"digest" : "MIDI controller number to control this parameter.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"label" : "MIDI Controller Number.",
												"displayorder" : 16
											}
,
											"meta" : 											{
												"attrOrProp" : 2,
												"digest" : "A JSON formatted string containing metadata for use by the exported code",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Metadata",
												"displayorder" : 17
											}
,
											"nopreset" : 											{
												"attrOrProp" : 2,
												"digest" : "Do not add this value to the preset [DEPRECATED - USE @preset 0 instead].",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 1,
												"type" : "bool",
												"defaultValue" : "false"
											}
,
											"preset" : 											{
												"attrOrProp" : 2,
												"digest" : "Add this value to the preset.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "true",
												"label" : "Include In Preset",
												"displayorder" : 11
											}

										}
,
										"inputs" : [ 											{
												"name" : "value",
												"type" : "number",
												"digest" : "Parameter value",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "normalizedvalue",
												"type" : "number",
												"digest" : "Set value normalized. ",
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "value",
												"type" : "number",
												"digest" : "Parameter value",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "normalized",
												"type" : "number",
												"digest" : "Normalized parameter value.",
												"docked" : 0
											}
 ],
										"helpname" : "param",
										"aliasOf" : "param",
										"classname" : "param",
										"operator" : 0,
										"versionId" : -1940971094,
										"changesPatcherIO" : 0
									}
,
									"text" : "param lfofreq 5. @min 0.01 @max 15",
									"varname" : "lfofreq"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 830.0, 316.0, 69.0, 23.0 ],
									"rnbo_classname" : "cycle~",
									"rnbo_extra_attributes" : 									{
										"buffername" : "RNBODefaultSinus",
										"index" : "freq",
										"interp" : "linear"
									}
,
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "cycle~_obj-73",
									"text" : "cycle~ 0.01"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-71",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 100.0, 543.0, 29.5, 23.0 ],
									"rnbo_classname" : "*~",
									"rnbo_serial" : 6,
									"rnbo_uniqueid" : "*~_obj-71",
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 73.0, 443.0, 145.0, 37.0 ],
									"rnbo_classname" : "param",
									"rnbo_extra_attributes" : 									{
										"displayname" : "",
										"enum" : "",
										"ctlin" : 0.0,
										"displayorder" : "-",
										"unit" : "",
										"tonormalized" : "",
										"sendinit" : 1,
										"steps" : 0.0,
										"order" : "0",
										"meta" : "",
										"fromnormalized" : "",
										"exponent" : 1.0,
										"preset" : 1
									}
,
									"rnbo_serial" : 5,
									"rnbo_uniqueid" : "shiftdelaysend",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"value" : 											{
												"attrOrProp" : 2,
												"digest" : "Set initial value",
												"defaultarg" : 2,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Initial Value",
												"displayorder" : 3
											}
,
											"normalizedvalue" : 											{
												"attrOrProp" : 1,
												"digest" : "Set value normalized. ",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number"
											}
,
											"reset" : 											{
												"attrOrProp" : 1,
												"digest" : "Reset param to initial value",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bang"
											}
,
											"normalized" : 											{
												"attrOrProp" : 1,
												"digest" : "Normalized parameter value.",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "number"
											}
,
											"name" : 											{
												"attrOrProp" : 2,
												"digest" : "Name of the parameter",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "Parameter Name",
												"mandatory" : 1
											}
,
											"enum" : 											{
												"attrOrProp" : 2,
												"digest" : "Use an enumerated output",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "list",
												"label" : "Enum Values",
												"displayorder" : 6
											}
,
											"minimum" : 											{
												"attrOrProp" : 2,
												"digest" : "Minimum value",
												"isalias" : 0,
												"aliases" : [ "min" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Minimum",
												"displayorder" : 1
											}
,
											"min" : 											{
												"attrOrProp" : 2,
												"digest" : "Minimum value",
												"isalias" : 1,
												"aliasOf" : "minimum",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Minimum",
												"displayorder" : 1
											}
,
											"maximum" : 											{
												"attrOrProp" : 2,
												"digest" : "Maximum value",
												"isalias" : 0,
												"aliases" : [ "max" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Maximum",
												"displayorder" : 2
											}
,
											"max" : 											{
												"attrOrProp" : 2,
												"digest" : "Maximum value",
												"isalias" : 1,
												"aliasOf" : "maximum",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Maximum",
												"displayorder" : 2
											}
,
											"exponent" : 											{
												"attrOrProp" : 2,
												"digest" : "Scale values exponentially",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Exponent",
												"displayorder" : 7
											}
,
											"steps" : 											{
												"attrOrProp" : 2,
												"digest" : "Divide the output into a number of discrete steps",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Steps",
												"displayorder" : 8
											}
,
											"displayName" : 											{
												"attrOrProp" : 2,
												"digest" : "DEPRECATED: Use the lower case 'displayname' instead",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 1,
												"type" : "symbol",
												"label" : "Display Name"
											}
,
											"displayname" : 											{
												"attrOrProp" : 2,
												"digest" : "A more readable name for the parameter in an external RNBO target",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Display Name",
												"displayorder" : 14
											}
,
											"unit" : 											{
												"attrOrProp" : 2,
												"digest" : "A symbol to describe the unit of the parameter in an external RNBO target",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Unit",
												"displayorder" : 15
											}
,
											"tonormalized" : 											{
												"attrOrProp" : 2,
												"digest" : "Converts a real parameter value to its normalized form.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "To Normalized Expression",
												"displayorder" : 10
											}
,
											"fromnormalized" : 											{
												"attrOrProp" : 2,
												"digest" : "Converts a normalized parameter into its actual parameter value.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "From Normalized Expression",
												"displayorder" : 9
											}
,
											"order" : 											{
												"attrOrProp" : 2,
												"digest" : "Order in which initial parameter values will be sent out on patcher load. The order can be numeric or symbolic ('first' and 'last')",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "0",
												"label" : "Restore Order",
												"displayorder" : 12
											}
,
											"displayorder" : 											{
												"attrOrProp" : 2,
												"digest" : "Order in which parameters will show up in a list of all parameters. The order can be numeric or symbolic ('first' and 'last')",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "-",
												"label" : "Display Order",
												"displayorder" : 13
											}
,
											"sendinit" : 											{
												"attrOrProp" : 2,
												"digest" : "Send initial value",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "true",
												"label" : "Send Init",
												"displayorder" : 4
											}
,
											"ctlin" : 											{
												"attrOrProp" : 2,
												"digest" : "MIDI controller number to control this parameter.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"label" : "MIDI Controller Number.",
												"displayorder" : 16
											}
,
											"meta" : 											{
												"attrOrProp" : 2,
												"digest" : "A JSON formatted string containing metadata for use by the exported code",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Metadata",
												"displayorder" : 17
											}
,
											"nopreset" : 											{
												"attrOrProp" : 2,
												"digest" : "Do not add this value to the preset [DEPRECATED - USE @preset 0 instead].",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 1,
												"type" : "bool",
												"defaultValue" : "false"
											}
,
											"preset" : 											{
												"attrOrProp" : 2,
												"digest" : "Add this value to the preset.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "true",
												"label" : "Include In Preset",
												"displayorder" : 11
											}

										}
,
										"inputs" : [ 											{
												"name" : "value",
												"type" : "number",
												"digest" : "Parameter value",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "normalizedvalue",
												"type" : "number",
												"digest" : "Set value normalized. ",
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "value",
												"type" : "number",
												"digest" : "Parameter value",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "normalized",
												"type" : "number",
												"digest" : "Normalized parameter value.",
												"docked" : 0
											}
 ],
										"helpname" : "param",
										"aliasOf" : "param",
										"classname" : "param",
										"operator" : 0,
										"versionId" : -1940971094,
										"changesPatcherIO" : 0
									}
,
									"text" : "param shiftdelaysend 0 @min 0 @max 1.",
									"varname" : "shiftdelaysend"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 62.0, 543.0, 29.5, 23.0 ],
									"rnbo_classname" : "*~",
									"rnbo_serial" : 7,
									"rnbo_uniqueid" : "*~_obj-69",
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 166.5, 393.0, 115.0, 21.0 ],
									"text" : "ping pong delay"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 151.25, 14.0, 79.0, 21.0 ],
									"text" : "shift params"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 531.0, 463.0, 210.0, 23.0 ],
									"rnbo_classname" : "pan~",
									"rnbo_extra_attributes" : 									{
										"fademode" : "eqpower",
										"outputs" : 2.0,
										"boundmode" : "ignore"
									}
,
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "pan~_obj-37",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"spread" : 											{
												"attrOrProp" : 1,
												"digest" : "The distance between multiple inputs in the panning field.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0.5"
											}
,
											"out1" : 											{
												"attrOrProp" : 1,
												"digest" : "out1",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "signal"
											}
,
											"out2" : 											{
												"attrOrProp" : 1,
												"digest" : "out2",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "signal"
											}
,
											"in1" : 											{
												"attrOrProp" : 1,
												"digest" : "in1",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "signal",
												"defaultValue" : "0"
											}
,
											"in2" : 											{
												"attrOrProp" : 1,
												"digest" : "in2",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "signal",
												"defaultValue" : "0"
											}
,
											"pos" : 											{
												"attrOrProp" : 1,
												"digest" : "The pan position value",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"outputs" : 											{
												"attrOrProp" : 2,
												"digest" : "The number of output channels.",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "2"
											}
,
											"inputs" : 											{
												"attrOrProp" : 2,
												"digest" : "The number of input channels.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1"
											}
,
											"fademode" : 											{
												"attrOrProp" : 2,
												"digest" : "Fade curve mode.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"enum" : [ "lin", "eqpower", "cos" ],
												"type" : "enum",
												"defaultValue" : "eqpower"
											}
,
											"positionmode" : 											{
												"attrOrProp" : 2,
												"digest" : "Fade position mode.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"enum" : [ "phase", "channel" ],
												"type" : "enum",
												"defaultValue" : "phase"
											}
,
											"boundmode" : 											{
												"attrOrProp" : 2,
												"digest" : "Fade bound mode.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"enum" : [ "wrap", "clip", "ignore" ],
												"type" : "enum",
												"defaultValue" : "ignore"
											}

										}
,
										"inputs" : [ 											{
												"name" : "in1",
												"type" : "signal",
												"digest" : "in1",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "in2",
												"type" : "signal",
												"digest" : "in2",
												"docked" : 0
											}
, 											{
												"name" : "pos",
												"type" : "auto",
												"digest" : "The pan position value",
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "out1",
												"type" : "signal",
												"digest" : "out1",
												"docked" : 0
											}
, 											{
												"name" : "out2",
												"type" : "signal",
												"digest" : "out2",
												"docked" : 0
											}
 ],
										"helpname" : "pan~",
										"aliasOf" : "pan",
										"classname" : "pan~",
										"operator" : 0,
										"versionId" : -680469649,
										"changesPatcherIO" : 0
									}
,
									"text" : "pan~ @inputs 2 @positionmode phase"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"genpatcher" : 									{
										"patcher" : 										{
											"fileversion" : 1,
											"appversion" : 											{
												"major" : 8,
												"minor" : 6,
												"revision" : 0,
												"architecture" : "x64",
												"modernui" : 1
											}
,
											"classnamespace" : "dsp.gen",
											"rect" : [ 472.0, 341.0, 558.0, 528.0 ],
											"bglocked" : 0,
											"openinpresentation" : 0,
											"default_fontsize" : 12.0,
											"default_fontface" : 0,
											"default_fontname" : "Arial",
											"gridonopen" : 1,
											"gridsize" : [ 15.0, 15.0 ],
											"gridsnaponopen" : 1,
											"objectsnaponopen" : 1,
											"statusbarvisible" : 0,
											"toolbarvisible" : 1,
											"lefttoolbarpinned" : 0,
											"toptoolbarpinned" : 0,
											"righttoolbarpinned" : 0,
											"bottomtoolbarpinned" : 0,
											"toolbars_unpinned_last_save" : 0,
											"tallnewobj" : 0,
											"boxanimatetime" : 200,
											"enablehscroll" : 1,
											"enablevscroll" : 1,
											"devicewidth" : 0.0,
											"description" : "",
											"digest" : "",
											"tags" : "",
											"style" : "",
											"subpatcher_template" : "",
											"assistshowspatchername" : 0,
											"boxes" : [ 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* pi",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-9",
														"patching_rect" : [ 271.0, 243.0, 26.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "in 3 @comment windowms",
														"numinlets" : 0,
														"id" : "obj-20",
														"patching_rect" : [ 24.5, 84.0, 152.0, 22.0 ],
														"numoutlets" : 1,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "in 2 @comment \"shift amount\"",
														"fontname" : "Arial",
														"numinlets" : 0,
														"id" : "obj-22",
														"patching_rect" : [ 271.0, 17.0, 172.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "out 1",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-21",
														"patching_rect" : [ 334.0, 439.0, 37.0, 22.0 ],
														"numoutlets" : 0,
														"fontsize" : 12.0
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontname" : "Arial",
														"numinlets" : 2,
														"id" : "obj-19",
														"patching_rect" : [ 411.5, 370.0, 32.5, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontname" : "Arial",
														"numinlets" : 2,
														"id" : "obj-18",
														"patching_rect" : [ 257.5, 370.0, 32.5, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "delay 44100 2",
														"fontname" : "Arial",
														"numinlets" : 3,
														"id" : "obj-17",
														"patching_rect" : [ 45.5, 313.0, 325.5, 22.0 ],
														"numoutlets" : 2,
														"fontsize" : 12.0,
														"outlettype" : [ "", "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontname" : "Arial",
														"numinlets" : 2,
														"id" : "obj-11",
														"patching_rect" : [ 352.0, 187.0, 32.5, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "cos",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-12",
														"patching_rect" : [ 425.0, 260.0, 29.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* pi",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-13",
														"patching_rect" : [ 425.0, 217.0, 28.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "- 0.5",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-14",
														"patching_rect" : [ 425.0, 187.0, 35.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "% 1",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-15",
														"patching_rect" : [ 425.0, 123.0, 31.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+ 0.5",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-16",
														"patching_rect" : [ 425.0, 95.0, 38.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "mstosamps",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-10",
														"patching_rect" : [ 24.5, 130.0, 72.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontname" : "Arial",
														"numinlets" : 2,
														"id" : "obj-8",
														"patching_rect" : [ 198.75, 187.0, 32.5, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "cos",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-7",
														"patching_rect" : [ 271.0, 269.0, 29.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* pi",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-6",
														"patching_rect" : [ 271.0, 217.0, 26.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "- 0.5",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-5",
														"patching_rect" : [ 271.0, 187.0, 35.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "% 1",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-4",
														"patching_rect" : [ 271.0, 123.0, 31.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+ 0.",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-3",
														"patching_rect" : [ 271.0, 95.0, 31.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "phasor",
														"fontname" : "Arial",
														"numinlets" : 2,
														"id" : "obj-2",
														"patching_rect" : [ 271.0, 49.0, 47.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "in 1 @comment \"input to shift\"",
														"linecount" : 2,
														"fontname" : "Arial",
														"numinlets" : 0,
														"id" : "obj-1",
														"patching_rect" : [ 45.5, 247.0, 103.0, 35.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
 ],
											"lines" : [ 												{
													"patchline" : 													{
														"source" : [ "obj-20", 0 ],
														"destination" : [ "obj-10", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-4", 0 ],
														"destination" : [ "obj-8", 0 ],
														"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-10", 0 ],
														"destination" : [ "obj-8", 1 ],
														"color" : [ 0.0, 1.0, 0.501961, 1.0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-15", 0 ],
														"destination" : [ "obj-11", 0 ],
														"color" : [ 1.0, 0.0, 0.501961, 1.0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-14", 0 ],
														"destination" : [ "obj-13", 0 ],
														"color" : [ 1.0, 0.0, 0.501961, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-15", 0 ],
														"destination" : [ "obj-14", 0 ],
														"color" : [ 1.0, 0.0, 0.501961, 1.0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-10", 0 ],
														"destination" : [ "obj-11", 1 ],
														"color" : [ 0.0, 1.0, 0.501961, 1.0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-8", 0 ],
														"destination" : [ "obj-17", 1 ],
														"color" : [ 1.0, 0.501961, 0.0, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-11", 0 ],
														"destination" : [ "obj-17", 2 ],
														"color" : [ 1.0, 0.0, 0.501961, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-17", 0 ],
														"destination" : [ "obj-18", 0 ],
														"color" : [ 1.0, 0.501961, 0.0, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-17", 1 ],
														"destination" : [ "obj-19", 0 ],
														"color" : [ 1.0, 0.0, 0.501961, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-12", 0 ],
														"destination" : [ "obj-19", 1 ],
														"color" : [ 1.0, 0.0, 0.501961, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-7", 0 ],
														"destination" : [ "obj-18", 1 ],
														"color" : [ 1.0, 0.501961, 0.0, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-18", 0 ],
														"destination" : [ "obj-21", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-1", 0 ],
														"destination" : [ "obj-17", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-4", 0 ],
														"destination" : [ "obj-5", 0 ],
														"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-2", 0 ],
														"destination" : [ "obj-3", 0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-3", 0 ],
														"destination" : [ "obj-4", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-16", 0 ],
														"destination" : [ "obj-15", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-2", 0 ],
														"destination" : [ "obj-16", 0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-19", 0 ],
														"destination" : [ "obj-21", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-22", 0 ],
														"destination" : [ "obj-2", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-5", 0 ],
														"destination" : [ "obj-6", 0 ],
														"color" : [ 1.0, 0.501961, 0.0, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-13", 0 ],
														"destination" : [ "obj-12", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-9", 0 ],
														"destination" : [ "obj-7", 0 ],
														"color" : [ 1.0, 0.501961, 0.0, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-6", 0 ],
														"destination" : [ "obj-9", 0 ],
														"color" : [ 1.0, 0.501961, 0.0, 1.0 ]
													}

												}
 ],
											"bgcolor" : [ 0.9, 0.9, 0.9, 0.9 ]
										}

									}
,
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 418.0, 210.0, 68.0, 22.0 ],
									"rnbo_classname" : "gen~",
									"rnbo_extra_attributes" : 									{
										"exposeparams" : 0
									}
,
									"rnbo_serial" : 3,
									"rnbo_uniqueid" : "shift1[1]",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"in1" : 											{
												"attrOrProp" : 1,
												"digest" : "in1",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number"
											}
,
											"reset" : 											{
												"attrOrProp" : 1,
												"digest" : "Reset all param and history objects to initial values",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bang"
											}
,
											"expr" : 											{
												"attrOrProp" : 2,
												"digest" : "a gen expression",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"doNotShowInMaxInspector" : 1
											}
,
											"file" : 											{
												"attrOrProp" : 2,
												"digest" : "gendsp file to load",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"doNotShowInMaxInspector" : 1
											}
,
											"title" : 											{
												"attrOrProp" : 2,
												"digest" : "a title",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [ "t" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"doNotShowInMaxInspector" : 1
											}
,
											"t" : 											{
												"attrOrProp" : 2,
												"digest" : "a title",
												"defaultarg" : 1,
												"isalias" : 1,
												"aliasOf" : "title",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol"
											}
,
											"exposeparams" : 											{
												"attrOrProp" : 2,
												"digest" : "Expose gen params as RNBO params.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "false"
											}

										}
,
										"inputs" : [ 											{
												"name" : "in1",
												"type" : "auto",
												"digest" : "in1",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "in2",
												"type" : "auto"
											}
, 											{
												"name" : "in3",
												"type" : "auto"
											}
 ],
										"outputs" : [ 											{
												"name" : "out1",
												"type" : "signal"
											}
 ],
										"helpname" : "gen~",
										"aliasOf" : "gen~",
										"classname" : "gen~",
										"operator" : 0,
										"versionId" : 1405647718,
										"changesPatcherIO" : 0
									}
,
									"text" : "gen~ shift1",
									"varname" : "shift1[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 94.0, 229.0, 253.0, 23.0 ],
									"rnbo_classname" : "param",
									"rnbo_extra_attributes" : 									{
										"displayname" : "",
										"enum" : "",
										"ctlin" : 0.0,
										"displayorder" : "-",
										"unit" : "",
										"tonormalized" : "",
										"sendinit" : 1,
										"steps" : 0.0,
										"order" : "0",
										"meta" : "",
										"fromnormalized" : "",
										"exponent" : 1.0,
										"preset" : 1
									}
,
									"rnbo_serial" : 6,
									"rnbo_uniqueid" : "shiftamount",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"value" : 											{
												"attrOrProp" : 2,
												"digest" : "Set initial value",
												"defaultarg" : 2,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Initial Value",
												"displayorder" : 3
											}
,
											"normalizedvalue" : 											{
												"attrOrProp" : 1,
												"digest" : "Set value normalized. ",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number"
											}
,
											"reset" : 											{
												"attrOrProp" : 1,
												"digest" : "Reset param to initial value",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bang"
											}
,
											"normalized" : 											{
												"attrOrProp" : 1,
												"digest" : "Normalized parameter value.",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "number"
											}
,
											"name" : 											{
												"attrOrProp" : 2,
												"digest" : "Name of the parameter",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "Parameter Name",
												"mandatory" : 1
											}
,
											"enum" : 											{
												"attrOrProp" : 2,
												"digest" : "Use an enumerated output",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "list",
												"label" : "Enum Values",
												"displayorder" : 6
											}
,
											"minimum" : 											{
												"attrOrProp" : 2,
												"digest" : "Minimum value",
												"isalias" : 0,
												"aliases" : [ "min" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Minimum",
												"displayorder" : 1
											}
,
											"min" : 											{
												"attrOrProp" : 2,
												"digest" : "Minimum value",
												"isalias" : 1,
												"aliasOf" : "minimum",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Minimum",
												"displayorder" : 1
											}
,
											"maximum" : 											{
												"attrOrProp" : 2,
												"digest" : "Maximum value",
												"isalias" : 0,
												"aliases" : [ "max" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Maximum",
												"displayorder" : 2
											}
,
											"max" : 											{
												"attrOrProp" : 2,
												"digest" : "Maximum value",
												"isalias" : 1,
												"aliasOf" : "maximum",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Maximum",
												"displayorder" : 2
											}
,
											"exponent" : 											{
												"attrOrProp" : 2,
												"digest" : "Scale values exponentially",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Exponent",
												"displayorder" : 7
											}
,
											"steps" : 											{
												"attrOrProp" : 2,
												"digest" : "Divide the output into a number of discrete steps",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Steps",
												"displayorder" : 8
											}
,
											"displayName" : 											{
												"attrOrProp" : 2,
												"digest" : "DEPRECATED: Use the lower case 'displayname' instead",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 1,
												"type" : "symbol",
												"label" : "Display Name"
											}
,
											"displayname" : 											{
												"attrOrProp" : 2,
												"digest" : "A more readable name for the parameter in an external RNBO target",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Display Name",
												"displayorder" : 14
											}
,
											"unit" : 											{
												"attrOrProp" : 2,
												"digest" : "A symbol to describe the unit of the parameter in an external RNBO target",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Unit",
												"displayorder" : 15
											}
,
											"tonormalized" : 											{
												"attrOrProp" : 2,
												"digest" : "Converts a real parameter value to its normalized form.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "To Normalized Expression",
												"displayorder" : 10
											}
,
											"fromnormalized" : 											{
												"attrOrProp" : 2,
												"digest" : "Converts a normalized parameter into its actual parameter value.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "From Normalized Expression",
												"displayorder" : 9
											}
,
											"order" : 											{
												"attrOrProp" : 2,
												"digest" : "Order in which initial parameter values will be sent out on patcher load. The order can be numeric or symbolic ('first' and 'last')",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "0",
												"label" : "Restore Order",
												"displayorder" : 12
											}
,
											"displayorder" : 											{
												"attrOrProp" : 2,
												"digest" : "Order in which parameters will show up in a list of all parameters. The order can be numeric or symbolic ('first' and 'last')",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "-",
												"label" : "Display Order",
												"displayorder" : 13
											}
,
											"sendinit" : 											{
												"attrOrProp" : 2,
												"digest" : "Send initial value",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "true",
												"label" : "Send Init",
												"displayorder" : 4
											}
,
											"ctlin" : 											{
												"attrOrProp" : 2,
												"digest" : "MIDI controller number to control this parameter.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"label" : "MIDI Controller Number.",
												"displayorder" : 16
											}
,
											"meta" : 											{
												"attrOrProp" : 2,
												"digest" : "A JSON formatted string containing metadata for use by the exported code",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Metadata",
												"displayorder" : 17
											}
,
											"nopreset" : 											{
												"attrOrProp" : 2,
												"digest" : "Do not add this value to the preset [DEPRECATED - USE @preset 0 instead].",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 1,
												"type" : "bool",
												"defaultValue" : "false"
											}
,
											"preset" : 											{
												"attrOrProp" : 2,
												"digest" : "Add this value to the preset.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "true",
												"label" : "Include In Preset",
												"displayorder" : 11
											}

										}
,
										"inputs" : [ 											{
												"name" : "value",
												"type" : "number",
												"digest" : "Parameter value",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "normalizedvalue",
												"type" : "number",
												"digest" : "Set value normalized. ",
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "value",
												"type" : "number",
												"digest" : "Parameter value",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "normalized",
												"type" : "number",
												"digest" : "Normalized parameter value.",
												"docked" : 0
											}
 ],
										"helpname" : "param",
										"aliasOf" : "param",
										"classname" : "param",
										"operator" : 0,
										"versionId" : -1940971094,
										"changesPatcherIO" : 0
									}
,
									"text" : "param shiftamount @min 0 @max 10 @value 0",
									"varname" : "shiftamount"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 105.5, 100.0, 269.0, 23.0 ],
									"rnbo_classname" : "param",
									"rnbo_extra_attributes" : 									{
										"displayname" : "",
										"enum" : "",
										"ctlin" : 0.0,
										"displayorder" : "-",
										"unit" : "",
										"tonormalized" : "",
										"sendinit" : 1,
										"steps" : 0.0,
										"order" : "0",
										"meta" : "",
										"fromnormalized" : "",
										"exponent" : 1.0,
										"preset" : 1
									}
,
									"rnbo_serial" : 7,
									"rnbo_uniqueid" : "shiftwindow",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"value" : 											{
												"attrOrProp" : 2,
												"digest" : "Set initial value",
												"defaultarg" : 2,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Initial Value",
												"displayorder" : 3
											}
,
											"normalizedvalue" : 											{
												"attrOrProp" : 1,
												"digest" : "Set value normalized. ",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number"
											}
,
											"reset" : 											{
												"attrOrProp" : 1,
												"digest" : "Reset param to initial value",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bang"
											}
,
											"normalized" : 											{
												"attrOrProp" : 1,
												"digest" : "Normalized parameter value.",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "number"
											}
,
											"name" : 											{
												"attrOrProp" : 2,
												"digest" : "Name of the parameter",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "Parameter Name",
												"mandatory" : 1
											}
,
											"enum" : 											{
												"attrOrProp" : 2,
												"digest" : "Use an enumerated output",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "list",
												"label" : "Enum Values",
												"displayorder" : 6
											}
,
											"minimum" : 											{
												"attrOrProp" : 2,
												"digest" : "Minimum value",
												"isalias" : 0,
												"aliases" : [ "min" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Minimum",
												"displayorder" : 1
											}
,
											"min" : 											{
												"attrOrProp" : 2,
												"digest" : "Minimum value",
												"isalias" : 1,
												"aliasOf" : "minimum",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Minimum",
												"displayorder" : 1
											}
,
											"maximum" : 											{
												"attrOrProp" : 2,
												"digest" : "Maximum value",
												"isalias" : 0,
												"aliases" : [ "max" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Maximum",
												"displayorder" : 2
											}
,
											"max" : 											{
												"attrOrProp" : 2,
												"digest" : "Maximum value",
												"isalias" : 1,
												"aliasOf" : "maximum",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Maximum",
												"displayorder" : 2
											}
,
											"exponent" : 											{
												"attrOrProp" : 2,
												"digest" : "Scale values exponentially",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Exponent",
												"displayorder" : 7
											}
,
											"steps" : 											{
												"attrOrProp" : 2,
												"digest" : "Divide the output into a number of discrete steps",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Steps",
												"displayorder" : 8
											}
,
											"displayName" : 											{
												"attrOrProp" : 2,
												"digest" : "DEPRECATED: Use the lower case 'displayname' instead",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 1,
												"type" : "symbol",
												"label" : "Display Name"
											}
,
											"displayname" : 											{
												"attrOrProp" : 2,
												"digest" : "A more readable name for the parameter in an external RNBO target",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Display Name",
												"displayorder" : 14
											}
,
											"unit" : 											{
												"attrOrProp" : 2,
												"digest" : "A symbol to describe the unit of the parameter in an external RNBO target",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Unit",
												"displayorder" : 15
											}
,
											"tonormalized" : 											{
												"attrOrProp" : 2,
												"digest" : "Converts a real parameter value to its normalized form.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "To Normalized Expression",
												"displayorder" : 10
											}
,
											"fromnormalized" : 											{
												"attrOrProp" : 2,
												"digest" : "Converts a normalized parameter into its actual parameter value.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "From Normalized Expression",
												"displayorder" : 9
											}
,
											"order" : 											{
												"attrOrProp" : 2,
												"digest" : "Order in which initial parameter values will be sent out on patcher load. The order can be numeric or symbolic ('first' and 'last')",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "0",
												"label" : "Restore Order",
												"displayorder" : 12
											}
,
											"displayorder" : 											{
												"attrOrProp" : 2,
												"digest" : "Order in which parameters will show up in a list of all parameters. The order can be numeric or symbolic ('first' and 'last')",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "-",
												"label" : "Display Order",
												"displayorder" : 13
											}
,
											"sendinit" : 											{
												"attrOrProp" : 2,
												"digest" : "Send initial value",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "true",
												"label" : "Send Init",
												"displayorder" : 4
											}
,
											"ctlin" : 											{
												"attrOrProp" : 2,
												"digest" : "MIDI controller number to control this parameter.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"label" : "MIDI Controller Number.",
												"displayorder" : 16
											}
,
											"meta" : 											{
												"attrOrProp" : 2,
												"digest" : "A JSON formatted string containing metadata for use by the exported code",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Metadata",
												"displayorder" : 17
											}
,
											"nopreset" : 											{
												"attrOrProp" : 2,
												"digest" : "Do not add this value to the preset [DEPRECATED - USE @preset 0 instead].",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 1,
												"type" : "bool",
												"defaultValue" : "false"
											}
,
											"preset" : 											{
												"attrOrProp" : 2,
												"digest" : "Add this value to the preset.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "true",
												"label" : "Include In Preset",
												"displayorder" : 11
											}

										}
,
										"inputs" : [ 											{
												"name" : "value",
												"type" : "number",
												"digest" : "Parameter value",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "normalizedvalue",
												"type" : "number",
												"digest" : "Set value normalized. ",
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "value",
												"type" : "number",
												"digest" : "Parameter value",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "normalized",
												"type" : "number",
												"digest" : "Normalized parameter value.",
												"docked" : 0
											}
 ],
										"helpname" : "param",
										"aliasOf" : "param",
										"classname" : "param",
										"operator" : 0,
										"versionId" : -1940971094,
										"changesPatcherIO" : 0
									}
,
									"text" : "param shiftwindow @min 0 @max 1000 @value 0",
									"varname" : "shiftwindow"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-19",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 3.0, 231.5, 82.0, 20.0 ],
									"text" : "shift amount"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-22",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 94.0, 262.0, 50.0, 22.0 ],
									"rnbo_classname" : "number",
									"rnbo_extra_attributes" : 									{
										"maximum" : "<none>",
										"minimum" : "<none>",
										"order" : "",
										"initialFormat" : "float",
										"preset" : 0
									}
,
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "number_obj-22"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 94.0, 294.0, 124.0, 22.0 ],
									"rnbo_classname" : "sig~",
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "sig~_obj-1",
									"text" : "sig~ 2 @unit samples"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-17",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 4.5, 109.0, 96.0, 33.0 ],
									"text" : "window size milliseconds"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-23",
									"maxclass" : "flonum",
									"maximum" : 1000.0,
									"minimum" : 1.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 105.5, 132.0, 50.0, 22.0 ],
									"rnbo_classname" : "number",
									"rnbo_extra_attributes" : 									{
										"maximum" : 1000.0,
										"minimum" : 1.0,
										"order" : "",
										"initialFormat" : "float",
										"preset" : 0
									}
,
									"rnbo_serial" : 2,
									"rnbo_uniqueid" : "number_obj-23"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"genpatcher" : 									{
										"patcher" : 										{
											"fileversion" : 1,
											"appversion" : 											{
												"major" : 8,
												"minor" : 6,
												"revision" : 0,
												"architecture" : "x64",
												"modernui" : 1
											}
,
											"classnamespace" : "dsp.gen",
											"rect" : [ 1118.0, 376.0, 558.0, 528.0 ],
											"bglocked" : 0,
											"openinpresentation" : 0,
											"default_fontsize" : 12.0,
											"default_fontface" : 0,
											"default_fontname" : "Arial",
											"gridonopen" : 1,
											"gridsize" : [ 15.0, 15.0 ],
											"gridsnaponopen" : 1,
											"objectsnaponopen" : 1,
											"statusbarvisible" : 0,
											"toolbarvisible" : 1,
											"lefttoolbarpinned" : 0,
											"toptoolbarpinned" : 0,
											"righttoolbarpinned" : 0,
											"bottomtoolbarpinned" : 0,
											"toolbars_unpinned_last_save" : 0,
											"tallnewobj" : 0,
											"boxanimatetime" : 200,
											"enablehscroll" : 1,
											"enablevscroll" : 1,
											"devicewidth" : 0.0,
											"description" : "",
											"digest" : "",
											"tags" : "",
											"style" : "",
											"subpatcher_template" : "",
											"assistshowspatchername" : 0,
											"boxes" : [ 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "in 3 @comment windowms",
														"numinlets" : 0,
														"id" : "obj-20",
														"patching_rect" : [ 24.5, 84.0, 152.0, 22.0 ],
														"numoutlets" : 1,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "in 2 @comment \"shift amount\"",
														"fontname" : "Arial",
														"numinlets" : 0,
														"id" : "obj-22",
														"patching_rect" : [ 271.0, 17.0, 172.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "out 1",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-21",
														"patching_rect" : [ 334.0, 439.0, 37.0, 22.0 ],
														"numoutlets" : 0,
														"fontsize" : 12.0
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontname" : "Arial",
														"numinlets" : 2,
														"id" : "obj-19",
														"patching_rect" : [ 411.5, 370.0, 32.5, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontname" : "Arial",
														"numinlets" : 2,
														"id" : "obj-18",
														"patching_rect" : [ 257.5, 370.0, 32.5, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "delay 44100 2",
														"fontname" : "Arial",
														"numinlets" : 3,
														"id" : "obj-17",
														"patching_rect" : [ 45.5, 313.0, 325.5, 22.0 ],
														"numoutlets" : 2,
														"fontsize" : 12.0,
														"outlettype" : [ "", "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontname" : "Arial",
														"numinlets" : 2,
														"id" : "obj-11",
														"patching_rect" : [ 352.0, 247.0, 32.5, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "cos",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-12",
														"patching_rect" : [ 425.0, 247.0, 29.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* pi",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-13",
														"patching_rect" : [ 425.0, 217.0, 28.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "- 0.5",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-14",
														"patching_rect" : [ 425.0, 187.0, 35.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "% 1",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-15",
														"patching_rect" : [ 425.0, 123.0, 31.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+ 1.5",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-16",
														"patching_rect" : [ 425.0, 95.0, 36.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "mstosamps",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-10",
														"patching_rect" : [ 24.5, 130.0, 72.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontname" : "Arial",
														"numinlets" : 2,
														"id" : "obj-8",
														"patching_rect" : [ 198.75, 247.0, 32.5, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "cos",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-7",
														"patching_rect" : [ 271.0, 247.0, 29.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* pi",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-6",
														"patching_rect" : [ 271.0, 217.0, 28.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "- 0.5",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-5",
														"patching_rect" : [ 271.0, 187.0, 35.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "% 1",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-4",
														"patching_rect" : [ 271.0, 123.0, 31.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+ 1.",
														"fontname" : "Arial",
														"numinlets" : 1,
														"id" : "obj-3",
														"patching_rect" : [ 271.0, 95.0, 29.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "phasor",
														"fontname" : "Arial",
														"numinlets" : 2,
														"id" : "obj-2",
														"patching_rect" : [ 271.0, 49.0, 47.0, 22.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "in 1 @comment \"input to shift\"",
														"linecount" : 2,
														"fontname" : "Arial",
														"numinlets" : 0,
														"id" : "obj-1",
														"patching_rect" : [ 45.5, 247.0, 103.0, 35.0 ],
														"numoutlets" : 1,
														"fontsize" : 12.0,
														"outlettype" : [ "" ]
													}

												}
 ],
											"lines" : [ 												{
													"patchline" : 													{
														"source" : [ "obj-22", 0 ],
														"destination" : [ "obj-2", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-19", 0 ],
														"destination" : [ "obj-21", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-5", 0 ],
														"destination" : [ "obj-6", 0 ],
														"color" : [ 1.0, 0.501961, 0.0, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-4", 0 ],
														"destination" : [ "obj-5", 0 ],
														"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-1", 0 ],
														"destination" : [ "obj-17", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-18", 0 ],
														"destination" : [ "obj-21", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-7", 0 ],
														"destination" : [ "obj-18", 1 ],
														"color" : [ 1.0, 0.501961, 0.0, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-12", 0 ],
														"destination" : [ "obj-19", 1 ],
														"color" : [ 1.0, 0.0, 0.501961, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-17", 1 ],
														"destination" : [ "obj-19", 0 ],
														"color" : [ 1.0, 0.0, 0.501961, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-17", 0 ],
														"destination" : [ "obj-18", 0 ],
														"color" : [ 1.0, 0.501961, 0.0, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-11", 0 ],
														"destination" : [ "obj-17", 2 ],
														"color" : [ 1.0, 0.0, 0.501961, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-8", 0 ],
														"destination" : [ "obj-17", 1 ],
														"color" : [ 1.0, 0.501961, 0.0, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-13", 0 ],
														"destination" : [ "obj-12", 0 ],
														"color" : [ 1.0, 0.0, 0.501961, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-6", 0 ],
														"destination" : [ "obj-7", 0 ],
														"color" : [ 1.0, 0.501961, 0.0, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-10", 0 ],
														"destination" : [ "obj-11", 1 ],
														"color" : [ 0.0, 1.0, 0.501961, 1.0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-15", 0 ],
														"destination" : [ "obj-14", 0 ],
														"color" : [ 1.0, 0.0, 0.501961, 1.0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-14", 0 ],
														"destination" : [ "obj-13", 0 ],
														"color" : [ 1.0, 0.0, 0.501961, 1.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-15", 0 ],
														"destination" : [ "obj-11", 0 ],
														"color" : [ 1.0, 0.0, 0.501961, 1.0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-10", 0 ],
														"destination" : [ "obj-8", 1 ],
														"color" : [ 0.0, 1.0, 0.501961, 1.0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-4", 0 ],
														"destination" : [ "obj-8", 0 ],
														"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-20", 0 ],
														"destination" : [ "obj-10", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-2", 0 ],
														"destination" : [ "obj-3", 0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-3", 0 ],
														"destination" : [ "obj-4", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-16", 0 ],
														"destination" : [ "obj-15", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-2", 0 ],
														"destination" : [ "obj-16", 0 ],
														"order" : 0
													}

												}
 ],
											"bgcolor" : [ 0.9, 0.9, 0.9, 0.9 ]
										}

									}
,
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 602.0, 210.5, 68.0, 22.0 ],
									"rnbo_classname" : "gen~",
									"rnbo_extra_attributes" : 									{
										"exposeparams" : 0
									}
,
									"rnbo_serial" : 4,
									"rnbo_uniqueid" : "shift2[1]",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"in1" : 											{
												"attrOrProp" : 1,
												"digest" : "in1",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number"
											}
,
											"reset" : 											{
												"attrOrProp" : 1,
												"digest" : "Reset all param and history objects to initial values",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bang"
											}
,
											"expr" : 											{
												"attrOrProp" : 2,
												"digest" : "a gen expression",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"doNotShowInMaxInspector" : 1
											}
,
											"file" : 											{
												"attrOrProp" : 2,
												"digest" : "gendsp file to load",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"doNotShowInMaxInspector" : 1
											}
,
											"title" : 											{
												"attrOrProp" : 2,
												"digest" : "a title",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [ "t" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"doNotShowInMaxInspector" : 1
											}
,
											"t" : 											{
												"attrOrProp" : 2,
												"digest" : "a title",
												"defaultarg" : 1,
												"isalias" : 1,
												"aliasOf" : "title",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol"
											}
,
											"exposeparams" : 											{
												"attrOrProp" : 2,
												"digest" : "Expose gen params as RNBO params.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "false"
											}

										}
,
										"inputs" : [ 											{
												"name" : "in1",
												"type" : "auto",
												"digest" : "in1",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "in2",
												"type" : "auto"
											}
, 											{
												"name" : "in3",
												"type" : "auto"
											}
 ],
										"outputs" : [ 											{
												"name" : "out1",
												"type" : "signal"
											}
 ],
										"helpname" : "gen~",
										"aliasOf" : "gen~",
										"classname" : "gen~",
										"operator" : 0,
										"versionId" : 1405647718,
										"changesPatcherIO" : 0
									}
,
									"text" : "gen~ shift2",
									"varname" : "shift2[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 176.0, 543.0, 261.0, 23.0 ],
									"rnbo_classname" : "param",
									"rnbo_extra_attributes" : 									{
										"displayname" : "",
										"enum" : "",
										"ctlin" : 0.0,
										"displayorder" : "-",
										"unit" : "",
										"tonormalized" : "",
										"sendinit" : 1,
										"steps" : 0.0,
										"order" : "0",
										"meta" : "",
										"fromnormalized" : "",
										"exponent" : 1.0,
										"preset" : 1
									}
,
									"rnbo_serial" : 8,
									"rnbo_uniqueid" : "delayms",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"value" : 											{
												"attrOrProp" : 2,
												"digest" : "Set initial value",
												"defaultarg" : 2,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Initial Value",
												"displayorder" : 3
											}
,
											"normalizedvalue" : 											{
												"attrOrProp" : 1,
												"digest" : "Set value normalized. ",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number"
											}
,
											"reset" : 											{
												"attrOrProp" : 1,
												"digest" : "Reset param to initial value",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bang"
											}
,
											"normalized" : 											{
												"attrOrProp" : 1,
												"digest" : "Normalized parameter value.",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "number"
											}
,
											"name" : 											{
												"attrOrProp" : 2,
												"digest" : "Name of the parameter",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "Parameter Name",
												"mandatory" : 1
											}
,
											"enum" : 											{
												"attrOrProp" : 2,
												"digest" : "Use an enumerated output",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "list",
												"label" : "Enum Values",
												"displayorder" : 6
											}
,
											"minimum" : 											{
												"attrOrProp" : 2,
												"digest" : "Minimum value",
												"isalias" : 0,
												"aliases" : [ "min" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Minimum",
												"displayorder" : 1
											}
,
											"min" : 											{
												"attrOrProp" : 2,
												"digest" : "Minimum value",
												"isalias" : 1,
												"aliasOf" : "minimum",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Minimum",
												"displayorder" : 1
											}
,
											"maximum" : 											{
												"attrOrProp" : 2,
												"digest" : "Maximum value",
												"isalias" : 0,
												"aliases" : [ "max" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Maximum",
												"displayorder" : 2
											}
,
											"max" : 											{
												"attrOrProp" : 2,
												"digest" : "Maximum value",
												"isalias" : 1,
												"aliasOf" : "maximum",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Maximum",
												"displayorder" : 2
											}
,
											"exponent" : 											{
												"attrOrProp" : 2,
												"digest" : "Scale values exponentially",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Exponent",
												"displayorder" : 7
											}
,
											"steps" : 											{
												"attrOrProp" : 2,
												"digest" : "Divide the output into a number of discrete steps",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Steps",
												"displayorder" : 8
											}
,
											"displayName" : 											{
												"attrOrProp" : 2,
												"digest" : "DEPRECATED: Use the lower case 'displayname' instead",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 1,
												"type" : "symbol",
												"label" : "Display Name"
											}
,
											"displayname" : 											{
												"attrOrProp" : 2,
												"digest" : "A more readable name for the parameter in an external RNBO target",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Display Name",
												"displayorder" : 14
											}
,
											"unit" : 											{
												"attrOrProp" : 2,
												"digest" : "A symbol to describe the unit of the parameter in an external RNBO target",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Unit",
												"displayorder" : 15
											}
,
											"tonormalized" : 											{
												"attrOrProp" : 2,
												"digest" : "Converts a real parameter value to its normalized form.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "To Normalized Expression",
												"displayorder" : 10
											}
,
											"fromnormalized" : 											{
												"attrOrProp" : 2,
												"digest" : "Converts a normalized parameter into its actual parameter value.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "From Normalized Expression",
												"displayorder" : 9
											}
,
											"order" : 											{
												"attrOrProp" : 2,
												"digest" : "Order in which initial parameter values will be sent out on patcher load. The order can be numeric or symbolic ('first' and 'last')",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "0",
												"label" : "Restore Order",
												"displayorder" : 12
											}
,
											"displayorder" : 											{
												"attrOrProp" : 2,
												"digest" : "Order in which parameters will show up in a list of all parameters. The order can be numeric or symbolic ('first' and 'last')",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "-",
												"label" : "Display Order",
												"displayorder" : 13
											}
,
											"sendinit" : 											{
												"attrOrProp" : 2,
												"digest" : "Send initial value",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "true",
												"label" : "Send Init",
												"displayorder" : 4
											}
,
											"ctlin" : 											{
												"attrOrProp" : 2,
												"digest" : "MIDI controller number to control this parameter.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"label" : "MIDI Controller Number.",
												"displayorder" : 16
											}
,
											"meta" : 											{
												"attrOrProp" : 2,
												"digest" : "A JSON formatted string containing metadata for use by the exported code",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Metadata",
												"displayorder" : 17
											}
,
											"nopreset" : 											{
												"attrOrProp" : 2,
												"digest" : "Do not add this value to the preset [DEPRECATED - USE @preset 0 instead].",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 1,
												"type" : "bool",
												"defaultValue" : "false"
											}
,
											"preset" : 											{
												"attrOrProp" : 2,
												"digest" : "Add this value to the preset.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "true",
												"label" : "Include In Preset",
												"displayorder" : 11
											}

										}
,
										"inputs" : [ 											{
												"name" : "value",
												"type" : "number",
												"digest" : "Parameter value",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "normalizedvalue",
												"type" : "number",
												"digest" : "Set value normalized. ",
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "value",
												"type" : "number",
												"digest" : "Parameter value",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "normalized",
												"type" : "number",
												"digest" : "Normalized parameter value.",
												"docked" : 0
											}
 ],
										"helpname" : "param",
										"aliasOf" : "param",
										"classname" : "param",
										"operator" : 0,
										"versionId" : -1940971094,
										"changesPatcherIO" : 0
									}
,
									"text" : "param delayms @min 0 @max 2000 @value 500",
									"varname" : "delayms"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 216.0, 618.0, 78.0, 23.0 ],
									"rnbo_classname" : "number",
									"rnbo_extra_attributes" : 									{
										"maximum" : "<none>",
										"minimum" : "<none>",
										"order" : "",
										"initialFormat" : "float",
										"preset" : 0
									}
,
									"rnbo_serial" : 3,
									"rnbo_uniqueid" : "number_obj-11"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 176.0, 576.0, 118.0, 23.0 ],
									"rnbo_classname" : "translate",
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "translate_obj-5",
									"text" : "translate ms samples"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 176.0, 618.0, 29.5, 23.0 ],
									"rnbo_classname" : "*",
									"rnbo_extra_attributes" : 									{
										"hot" : 0
									}
,
									"rnbo_serial" : 3,
									"rnbo_uniqueid" : "*_obj-9",
									"text" : "* 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 353.0, 776.0, 63.0, 23.0 ],
									"rnbo_classname" : "feedback~",
									"rnbo_serial" : 3,
									"rnbo_uniqueid" : "feedback~_obj-8",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"input" : 											{
												"attrOrProp" : 1,
												"digest" : "Signal to feed back.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "signal"
											}
,
											"output" : 											{
												"attrOrProp" : 1,
												"digest" : "Signal that was fed back (with one signal buffer delay).",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "signal"
											}

										}
,
										"inputs" : [ 											{
												"name" : "input",
												"type" : "signal",
												"digest" : "Signal to feed back.",
												"hot" : 1,
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "output",
												"type" : "signal",
												"digest" : "Signal that was fed back (with one signal buffer delay).",
												"docked" : 0
											}
 ],
										"helpname" : "feedback~",
										"aliasOf" : "feedback~",
										"classname" : "feedback~",
										"operator" : 0,
										"versionId" : -653846986,
										"changesPatcherIO" : 0
									}
,
									"text" : "feedback~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 215.0, 776.0, 63.0, 23.0 ],
									"rnbo_classname" : "feedback~",
									"rnbo_serial" : 4,
									"rnbo_uniqueid" : "feedback~_obj-6",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"input" : 											{
												"attrOrProp" : 1,
												"digest" : "Signal to feed back.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "signal"
											}
,
											"output" : 											{
												"attrOrProp" : 1,
												"digest" : "Signal that was fed back (with one signal buffer delay).",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "signal"
											}

										}
,
										"inputs" : [ 											{
												"name" : "input",
												"type" : "signal",
												"digest" : "Signal to feed back.",
												"hot" : 1,
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "output",
												"type" : "signal",
												"digest" : "Signal that was fed back (with one signal buffer delay).",
												"docked" : 0
											}
 ],
										"helpname" : "feedback~",
										"aliasOf" : "feedback~",
										"classname" : "feedback~",
										"operator" : 0,
										"versionId" : -653846986,
										"changesPatcherIO" : 0
									}
,
									"text" : "feedback~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 215.0, 746.0, 33.0, 23.0 ],
									"rnbo_classname" : "*~",
									"rnbo_serial" : 8,
									"rnbo_uniqueid" : "*~_obj-7",
									"text" : "*~ 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 353.0, 746.0, 33.0, 23.0 ],
									"rnbo_classname" : "*~",
									"rnbo_serial" : 9,
									"rnbo_uniqueid" : "*~_obj-4",
									"text" : "*~ 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 136.0, 512.0, 287.0, 23.0 ],
									"rnbo_classname" : "param",
									"rnbo_extra_attributes" : 									{
										"displayname" : "",
										"enum" : "",
										"ctlin" : 0.0,
										"displayorder" : "-",
										"unit" : "",
										"tonormalized" : "",
										"sendinit" : 1,
										"steps" : 0.0,
										"order" : "0",
										"meta" : "",
										"fromnormalized" : "",
										"exponent" : 1.0,
										"preset" : 1
									}
,
									"rnbo_serial" : 9,
									"rnbo_uniqueid" : "delayfeedback",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"value" : 											{
												"attrOrProp" : 2,
												"digest" : "Set initial value",
												"defaultarg" : 2,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Initial Value",
												"displayorder" : 3
											}
,
											"normalizedvalue" : 											{
												"attrOrProp" : 1,
												"digest" : "Set value normalized. ",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number"
											}
,
											"reset" : 											{
												"attrOrProp" : 1,
												"digest" : "Reset param to initial value",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bang"
											}
,
											"normalized" : 											{
												"attrOrProp" : 1,
												"digest" : "Normalized parameter value.",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "number"
											}
,
											"name" : 											{
												"attrOrProp" : 2,
												"digest" : "Name of the parameter",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "Parameter Name",
												"mandatory" : 1
											}
,
											"enum" : 											{
												"attrOrProp" : 2,
												"digest" : "Use an enumerated output",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "list",
												"label" : "Enum Values",
												"displayorder" : 6
											}
,
											"minimum" : 											{
												"attrOrProp" : 2,
												"digest" : "Minimum value",
												"isalias" : 0,
												"aliases" : [ "min" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Minimum",
												"displayorder" : 1
											}
,
											"min" : 											{
												"attrOrProp" : 2,
												"digest" : "Minimum value",
												"isalias" : 1,
												"aliasOf" : "minimum",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Minimum",
												"displayorder" : 1
											}
,
											"maximum" : 											{
												"attrOrProp" : 2,
												"digest" : "Maximum value",
												"isalias" : 0,
												"aliases" : [ "max" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Maximum",
												"displayorder" : 2
											}
,
											"max" : 											{
												"attrOrProp" : 2,
												"digest" : "Maximum value",
												"isalias" : 1,
												"aliasOf" : "maximum",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Maximum",
												"displayorder" : 2
											}
,
											"exponent" : 											{
												"attrOrProp" : 2,
												"digest" : "Scale values exponentially",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Exponent",
												"displayorder" : 7
											}
,
											"steps" : 											{
												"attrOrProp" : 2,
												"digest" : "Divide the output into a number of discrete steps",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Steps",
												"displayorder" : 8
											}
,
											"displayName" : 											{
												"attrOrProp" : 2,
												"digest" : "DEPRECATED: Use the lower case 'displayname' instead",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 1,
												"type" : "symbol",
												"label" : "Display Name"
											}
,
											"displayname" : 											{
												"attrOrProp" : 2,
												"digest" : "A more readable name for the parameter in an external RNBO target",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Display Name",
												"displayorder" : 14
											}
,
											"unit" : 											{
												"attrOrProp" : 2,
												"digest" : "A symbol to describe the unit of the parameter in an external RNBO target",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Unit",
												"displayorder" : 15
											}
,
											"tonormalized" : 											{
												"attrOrProp" : 2,
												"digest" : "Converts a real parameter value to its normalized form.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "To Normalized Expression",
												"displayorder" : 10
											}
,
											"fromnormalized" : 											{
												"attrOrProp" : 2,
												"digest" : "Converts a normalized parameter into its actual parameter value.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "From Normalized Expression",
												"displayorder" : 9
											}
,
											"order" : 											{
												"attrOrProp" : 2,
												"digest" : "Order in which initial parameter values will be sent out on patcher load. The order can be numeric or symbolic ('first' and 'last')",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "0",
												"label" : "Restore Order",
												"displayorder" : 12
											}
,
											"displayorder" : 											{
												"attrOrProp" : 2,
												"digest" : "Order in which parameters will show up in a list of all parameters. The order can be numeric or symbolic ('first' and 'last')",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "-",
												"label" : "Display Order",
												"displayorder" : 13
											}
,
											"sendinit" : 											{
												"attrOrProp" : 2,
												"digest" : "Send initial value",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "true",
												"label" : "Send Init",
												"displayorder" : 4
											}
,
											"ctlin" : 											{
												"attrOrProp" : 2,
												"digest" : "MIDI controller number to control this parameter.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"label" : "MIDI Controller Number.",
												"displayorder" : 16
											}
,
											"meta" : 											{
												"attrOrProp" : 2,
												"digest" : "A JSON formatted string containing metadata for use by the exported code",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Metadata",
												"displayorder" : 17
											}
,
											"nopreset" : 											{
												"attrOrProp" : 2,
												"digest" : "Do not add this value to the preset [DEPRECATED - USE @preset 0 instead].",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 1,
												"type" : "bool",
												"defaultValue" : "false"
											}
,
											"preset" : 											{
												"attrOrProp" : 2,
												"digest" : "Add this value to the preset.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "true",
												"label" : "Include In Preset",
												"displayorder" : 11
											}

										}
,
										"inputs" : [ 											{
												"name" : "value",
												"type" : "number",
												"digest" : "Parameter value",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "normalizedvalue",
												"type" : "number",
												"digest" : "Set value normalized. ",
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "value",
												"type" : "number",
												"digest" : "Parameter value",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "normalized",
												"type" : "number",
												"digest" : "Normalized parameter value.",
												"docked" : 0
											}
 ],
										"helpname" : "param",
										"aliasOf" : "param",
										"classname" : "param",
										"operator" : 0,
										"versionId" : -1940971094,
										"changesPatcherIO" : 0
									}
,
									"text" : "param delayfeedback @min 0 @max 0.99 @value 0.2",
									"varname" : "delayfeedback"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 514.0, 792.0, 35.0, 23.0 ],
									"rnbo_classname" : "limi~",
									"rnbo_extra_attributes" : 									{
										"buffersize" : 512.0,
										"channels" : 1.0,
										"mode" : "exponential"
									}
,
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "limi~_obj-12",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"input1" : 											{
												"attrOrProp" : 1,
												"digest" : "Input",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "signal"
											}
,
											"output1" : 											{
												"attrOrProp" : 1,
												"digest" : "Filtered output",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "signal"
											}
,
											"bypass" : 											{
												"attrOrProp" : 1,
												"digest" : "Bypass",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"dcblock" : 											{
												"attrOrProp" : 1,
												"digest" : "DC block",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"lookahead" : 											{
												"attrOrProp" : 1,
												"digest" : "Lookahead",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "100"
											}
,
											"preamp" : 											{
												"attrOrProp" : 1,
												"digest" : "Preamp",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"postamp" : 											{
												"attrOrProp" : 1,
												"digest" : "postamp",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"threshold" : 											{
												"attrOrProp" : 1,
												"digest" : "Threshold",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"release" : 											{
												"attrOrProp" : 1,
												"digest" : "Release",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1000"
											}
,
											"clear" : 											{
												"attrOrProp" : 1,
												"digest" : "Clear",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bang"
											}
,
											"channels" : 											{
												"attrOrProp" : 2,
												"digest" : "Channels",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1"
											}
,
											"buffersize" : 											{
												"attrOrProp" : 2,
												"digest" : "Buffer size",
												"defaultarg" : 2,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "512"
											}
,
											"mode" : 											{
												"attrOrProp" : 2,
												"digest" : "Mode",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"enum" : [ "linear", "exponential" ],
												"type" : "enum",
												"defaultValue" : "exponential"
											}

										}
,
										"inputs" : [ 											{
												"name" : "input1",
												"type" : "signal",
												"digest" : "Input",
												"hot" : 1,
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "output1",
												"type" : "signal",
												"digest" : "Filtered output",
												"docked" : 0
											}
 ],
										"helpname" : "limi~",
										"aliasOf" : "limi~",
										"classname" : "limi~",
										"operator" : 0,
										"versionId" : -112350452,
										"changesPatcherIO" : 0
									}
,
									"text" : "limi~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 705.0, 792.0, 35.0, 23.0 ],
									"rnbo_classname" : "limi~",
									"rnbo_extra_attributes" : 									{
										"buffersize" : 512.0,
										"channels" : 1.0,
										"mode" : "exponential"
									}
,
									"rnbo_serial" : 2,
									"rnbo_uniqueid" : "limi~_obj-14",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"input1" : 											{
												"attrOrProp" : 1,
												"digest" : "Input",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "signal"
											}
,
											"output1" : 											{
												"attrOrProp" : 1,
												"digest" : "Filtered output",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "signal"
											}
,
											"bypass" : 											{
												"attrOrProp" : 1,
												"digest" : "Bypass",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"dcblock" : 											{
												"attrOrProp" : 1,
												"digest" : "DC block",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"lookahead" : 											{
												"attrOrProp" : 1,
												"digest" : "Lookahead",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "100"
											}
,
											"preamp" : 											{
												"attrOrProp" : 1,
												"digest" : "Preamp",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"postamp" : 											{
												"attrOrProp" : 1,
												"digest" : "postamp",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"threshold" : 											{
												"attrOrProp" : 1,
												"digest" : "Threshold",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"release" : 											{
												"attrOrProp" : 1,
												"digest" : "Release",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1000"
											}
,
											"clear" : 											{
												"attrOrProp" : 1,
												"digest" : "Clear",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bang"
											}
,
											"channels" : 											{
												"attrOrProp" : 2,
												"digest" : "Channels",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1"
											}
,
											"buffersize" : 											{
												"attrOrProp" : 2,
												"digest" : "Buffer size",
												"defaultarg" : 2,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "512"
											}
,
											"mode" : 											{
												"attrOrProp" : 2,
												"digest" : "Mode",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"enum" : [ "linear", "exponential" ],
												"type" : "enum",
												"defaultValue" : "exponential"
											}

										}
,
										"inputs" : [ 											{
												"name" : "input1",
												"type" : "signal",
												"digest" : "Input",
												"hot" : 1,
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "output1",
												"type" : "signal",
												"digest" : "Filtered output",
												"docked" : 0
											}
 ],
										"helpname" : "limi~",
										"aliasOf" : "limi~",
										"classname" : "limi~",
										"operator" : 0,
										"versionId" : -112350452,
										"changesPatcherIO" : 0
									}
,
									"text" : "limi~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 298.0, 691.0, 138.0, 23.0 ],
									"rnbo_classname" : "delay~",
									"rnbo_extra_attributes" : 									{
										"ramp" : 50.0,
										"maxdelayms" : 0.0,
										"interp" : "linear"
									}
,
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "delay~_obj-43",
									"text" : "delay~ 100000 22050"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 161.0, 691.0, 126.0, 23.0 ],
									"rnbo_classname" : "delay~",
									"rnbo_extra_attributes" : 									{
										"ramp" : 50.0,
										"maxdelayms" : 0.0,
										"interp" : "linear"
									}
,
									"rnbo_serial" : 2,
									"rnbo_uniqueid" : "delay~_obj-42",
									"text" : "delay~ 100000 11025"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-55",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 514.0, 831.0, 43.0, 23.0 ],
									"rnbo_classname" : "out~",
									"rnbo_extra_attributes" : 									{
										"comment" : "",
										"meta" : ""
									}
,
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "out~_obj-55",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"in1" : 											{
												"attrOrProp" : 1,
												"digest" : "signal sent to outlet with index 1",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "signal"
											}
,
											"index" : 											{
												"attrOrProp" : 2,
												"digest" : "outlet number",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"mandatory" : 1
											}
,
											"comment" : 											{
												"attrOrProp" : 2,
												"digest" : "mouse over comment",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol"
											}
,
											"meta" : 											{
												"attrOrProp" : 2,
												"digest" : "A JSON formatted string containing metadata for use by the exported code",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Metadata",
												"displayorder" : 3
											}

										}
,
										"inputs" : [ 											{
												"name" : "in1",
												"type" : "signal",
												"digest" : "signal sent to outlet with index 1",
												"displayName" : "",
												"hot" : 1,
												"docked" : 0
											}
 ],
										"outputs" : [  ],
										"helpname" : "out~",
										"aliasOf" : "out~",
										"classname" : "out~",
										"operator" : 0,
										"versionId" : 374499139,
										"changesPatcherIO" : 1
									}
,
									"text" : "out~ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 705.0, 831.0, 43.0, 23.0 ],
									"rnbo_classname" : "out~",
									"rnbo_extra_attributes" : 									{
										"comment" : "",
										"meta" : ""
									}
,
									"rnbo_serial" : 2,
									"rnbo_uniqueid" : "out~_obj-56",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"in1" : 											{
												"attrOrProp" : 1,
												"digest" : "signal sent to outlet with index 2",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "signal"
											}
,
											"index" : 											{
												"attrOrProp" : 2,
												"digest" : "outlet number",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"mandatory" : 1
											}
,
											"comment" : 											{
												"attrOrProp" : 2,
												"digest" : "mouse over comment",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol"
											}
,
											"meta" : 											{
												"attrOrProp" : 2,
												"digest" : "A JSON formatted string containing metadata for use by the exported code",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Metadata",
												"displayorder" : 3
											}

										}
,
										"inputs" : [ 											{
												"name" : "in1",
												"type" : "signal",
												"digest" : "signal sent to outlet with index 2",
												"displayName" : "",
												"hot" : 1,
												"docked" : 0
											}
 ],
										"outputs" : [  ],
										"helpname" : "out~",
										"aliasOf" : "out~",
										"classname" : "out~",
										"operator" : 0,
										"versionId" : 374499139,
										"changesPatcherIO" : 1
									}
,
									"text" : "out~ 2"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 1 ],
									"midpoints" : [ 103.5, 333.0, 357.0, 333.0, 357.0, 158.0, 452.0, 158.0 ],
									"order" : 3,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"midpoints" : [ 103.5, 332.0, 483.0, 332.0, 483.0, 277.0, 527.5, 277.0 ],
									"order" : 2,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"midpoints" : [ 103.5, 333.0, 483.0, 333.0, 483.0, 264.0, 718.5, 264.0 ],
									"order" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 1 ],
									"midpoints" : [ 103.5, 331.0, 357.0, 331.0, 357.0, 159.0, 636.0, 159.0 ],
									"order" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 145.5, 678.0, 142.0, 678.0, 142.0, 732.0, 376.5, 732.0 ],
									"order" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 1 ],
									"midpoints" : [ 145.5, 678.0, 139.0, 678.0, 139.0, 732.0, 238.5, 732.0 ],
									"order" : 1,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 2 ],
									"midpoints" : [ 839.5, 450.0, 731.5, 450.0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 1 ],
									"midpoints" : [ 115.0, 90.0, 129.0, 90.0, 129.0, 90.0, 405.0, 90.0, 405.0, 90.0, 704.0, 90.0 ],
									"order" : 2,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 1 ],
									"midpoints" : [ 115.0, 89.0, 129.0, 89.0, 129.0, 89.0, 405.0, 89.0, 518.0, 89.0 ],
									"order" : 5,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 1 ],
									"midpoints" : [ 115.0, 96.0, 85.0, 96.0, 85.0, 205.0, 405.0, 205.0, 405.0, 251.0, 572.0, 251.0 ],
									"order" : 3,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 1 ],
									"midpoints" : [ 115.0, 96.0, 87.0, 96.0, 87.0, 205.0, 405.0, 205.0, 405.0, 251.0, 540.5, 251.0 ],
									"order" : 4,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 1 ],
									"midpoints" : [ 115.0, 96.0, 102.0, 96.0, 102.0, 216.0, 405.0, 216.0, 405.0, 255.0, 731.5, 255.0 ],
									"order" : 1,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 1 ],
									"midpoints" : [ 115.0, 96.0, 102.0, 96.0, 102.0, 216.0, 405.0, 216.0, 405.0, 255.0, 763.0, 255.0 ],
									"order" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"midpoints" : [ 185.5, 567.0, 185.5, 567.0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 2 ],
									"midpoints" : [ 115.0, 174.0, 173.0, 174.0, 173.0, 132.0, 476.5, 132.0 ],
									"order" : 2,
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"midpoints" : [ 115.0, 223.0, 397.0, 223.0, 397.0, 269.0, 561.5, 269.0 ],
									"order" : 1,
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 2 ],
									"midpoints" : [ 115.0, 174.0, 171.0, 174.0, 171.0, 132.0, 660.5, 132.0 ],
									"order" : 0,
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"order" : 1,
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"midpoints" : [ 115.0, 126.0, 165.0, 126.0, 165.0, 159.0, 568.0, 159.0, 568.0, 255.0, 752.5, 255.0 ],
									"order" : 0,
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"midpoints" : [ 428.5, 69.0, 1064.0, 69.0, 1064.0, 592.0, 523.5, 592.0 ],
									"order" : 0,
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"order" : 1,
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"midpoints" : [ 427.5, 249.0, 383.0, 249.0, 383.0, 145.0, 507.5, 145.0 ],
									"order" : 1,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"midpoints" : [ 427.5, 417.0, 540.5, 417.0 ],
									"order" : 0,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 2 ],
									"midpoints" : [ 779.5, 672.0, 845.5, 672.0 ],
									"order" : 0,
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 2 ],
									"midpoints" : [ 779.5, 672.0, 635.5, 672.0 ],
									"order" : 1,
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"midpoints" : [ 506.5, 372.0, 398.0, 372.0, 398.0, 198.0, 427.5, 198.0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 2 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 1 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 1 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 1 ],
									"midpoints" : [ 731.5, 702.0, 780.0, 702.0 ],
									"order" : 0,
									"source" : [ "obj-37", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 1 ],
									"midpoints" : [ 540.5, 702.0, 579.5, 702.0 ],
									"order" : 0,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"midpoints" : [ 540.5, 497.0, 71.5, 497.0 ],
									"order" : 1,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 0 ],
									"midpoints" : [ 731.5, 498.0, 109.5, 498.0 ],
									"order" : 1,
									"source" : [ "obj-37", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 2 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"midpoints" : [ 693.5, 373.5, 792.0, 373.5, 792.0, 144.5, 611.5, 144.5 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"midpoints" : [ 362.5, 771.0, 362.5, 771.0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 1 ],
									"midpoints" : [ 170.5, 726.0, 474.0, 726.0, 474.0, 682.0, 579.5, 682.0 ],
									"order" : 0,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"midpoints" : [ 170.5, 732.0, 224.5, 732.0 ],
									"order" : 1,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 1 ],
									"midpoints" : [ 307.5, 727.0, 474.0, 727.0, 474.0, 682.0, 780.0, 682.0 ],
									"order" : 0,
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 307.5, 732.0, 362.5, 732.0 ],
									"order" : 1,
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"midpoints" : [ 611.5, 60.0, 1072.0, 60.0, 1072.0, 276.0, 1072.0, 276.0, 1072.0, 601.0, 714.0, 601.0, 714.0, 696.0, 714.5, 696.0 ],
									"order" : 0,
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"order" : 1,
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"midpoints" : [ 185.5, 609.0, 225.5, 609.0 ],
									"order" : 1,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 1 ],
									"midpoints" : [ 185.5, 600.0, 162.0, 600.0, 162.0, 678.0, 277.5, 678.0 ],
									"order" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 185.5, 600.0, 185.5, 600.0 ],
									"order" : 2,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"midpoints" : [ 611.5, 245.5, 580.0, 245.5, 580.0, 144.5, 693.5, 144.5 ],
									"order" : 0,
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 1 ],
									"midpoints" : [ 611.5, 409.0, 636.0, 409.0 ],
									"order" : 1,
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"midpoints" : [ 224.5, 816.0, 294.0, 816.0, 294.0, 687.0, 307.5, 687.0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"midpoints" : [ 71.5, 678.0, 170.5, 678.0 ],
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"midpoints" : [ 224.5, 777.0, 224.5, 777.0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 1 ],
									"midpoints" : [ 82.5, 513.0, 82.0, 513.0 ],
									"order" : 1,
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 1 ],
									"midpoints" : [ 82.5, 485.0, 120.0, 485.0 ],
									"order" : 0,
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"midpoints" : [ 109.5, 678.0, 307.5, 678.0 ],
									"source" : [ "obj-71", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 0 ],
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"midpoints" : [ 839.5, 311.0, 839.5, 311.0 ],
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 1 ],
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"midpoints" : [ 362.5, 807.0, 291.0, 807.0, 291.0, 726.0, 151.0, 726.0, 151.0, 687.0, 170.5, 687.0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 1 ],
									"midpoints" : [ 185.5, 668.0, 426.5, 668.0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"default_bgcolor" : [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
						"color" : [ 0.929412, 0.929412, 0.352941, 1.0 ],
						"elementcolor" : [ 0.357540726661682, 0.515565991401672, 0.861786782741547, 1.0 ],
						"accentcolor" : [ 0.343034118413925, 0.506230533123016, 0.86220508813858, 1.0 ],
						"stripecolor" : [ 0.258338063955307, 0.352425158023834, 0.511919498443604, 1.0 ],
						"bgfillcolor_type" : "color",
						"bgfillcolor_color" : [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
						"bgfillcolor_color1" : [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
						"bgfillcolor_color2" : [ 0.263682, 0.004541, 0.038797, 1.0 ],
						"bgfillcolor_angle" : 270.0,
						"bgfillcolor_proportion" : 0.39,
						"bgfillcolor_autogradient" : 0.0,
						"export_config" : 						{
							"web-export" : 							{
								"json-web-export" : 								{
									"file_name" : "shift.export.json",
									"classname" : "rnbomatic"
								}

							}

						}

					}
,
					"patching_rect" : [ 351.851845979690552, 593.518508613109589, 87.0, 22.0 ],
					"rnboattrcache" : 					{
						"lfofreq" : 						{
							"label" : "lfofreq",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"shiftwindow" : 						{
							"label" : "shiftwindow",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"delayms" : 						{
							"label" : "delayms",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"delayfeedback" : 						{
							"label" : "delayfeedback",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"wetdry" : 						{
							"label" : "wetdry",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"shiftamount" : 						{
							"label" : "shiftamount",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"shiftdelaysend" : 						{
							"label" : "shiftdelaysend",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"lfoamount" : 						{
							"label" : "lfoamount",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"shiftfeedback" : 						{
							"label" : "shiftfeedback",
							"isEnum" : 0,
							"parsestring" : ""
						}

					}
,
					"rnboversion" : "1.2.4",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "rnbo~",
							"parameter_shortname" : "rnbo~",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"optimization" : "O1",
						"parameter_enable" : 1,
						"uuid" : "ec1cf905-ead7-11ee-b905-18c04d2c1028"
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "rnbo~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"shiftwindow" : 							{
								"value" : 448.0
							}
,
							"__presetid" : "d",
							"shiftamount" : 							{
								"value" : 4.488188976377953
							}
,
							"delayms" : 							{
								"value" : 0.0
							}
,
							"shiftdelaysend" : 							{
								"value" : 0.0
							}
,
							"shiftfeedback" : 							{
								"value" : 0.2
							}
,
							"delayfeedback" : 							{
								"value" : 0.0
							}
,
							"wetdry" : 							{
								"value" : 0.0
							}
,
							"lfoamount" : 							{
								"value" : 0.574803149606299
							}
,
							"lfofreq" : 							{
								"value" : 6.147637795275591
							}

						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 8,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "default",
									"origin" : "d",
									"type" : "rnbo",
									"subtype" : "",
									"embed" : 0,
									"snapshot" : 									{
										"lfofreq" : 										{
											"value" : 0.836220472440945
										}
,
										"delayms" : 										{
											"value" : 0.0
										}
,
										"shiftwindow" : 										{
											"value" : 0.0
										}
,
										"lfoamount" : 										{
											"value" : 0.716535433070866
										}
,
										"shiftamount" : 										{
											"value" : 0.0
										}
,
										"delayfeedback" : 										{
											"value" : 0.0
										}
,
										"shiftdelaysend" : 										{
											"value" : 0.0
										}
,
										"__presetid" : "d"
									}
,
									"fileref" : 									{
										"name" : "default",
										"filename" : "d.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "6a922e1cbcf8fe70e0e5c158dfcb1dec"
									}

								}
, 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "default",
									"origin" : "d",
									"type" : "rnbo",
									"subtype" : "",
									"embed" : 0,
									"fileref" : 									{
										"name" : "default",
										"filename" : "d.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "f0d08b4f7a43cc3075161da8b3a6e5d2"
									}

								}
, 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "ping pong delay",
									"origin" : "d",
									"type" : "rnbo",
									"subtype" : "",
									"embed" : 0,
									"fileref" : 									{
										"name" : "ping pong delay",
										"filename" : "d lfo panner[1].maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "63d930cb7f2c163d52cda9e13f1bf8ab"
									}

								}
, 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "slow lfo panner",
									"origin" : "d",
									"type" : "rnbo",
									"subtype" : "",
									"embed" : 0,
									"fileref" : 									{
										"name" : "slow lfo panner",
										"filename" : "d[1].maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "a9cf1a9204914c60f39065c7a4004e57"
									}

								}
, 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "shifter ",
									"origin" : "d",
									"type" : "rnbo",
									"subtype" : "",
									"embed" : 0,
									"fileref" : 									{
										"name" : "shifter ",
										"filename" : "lfo panner[1].maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "b7991e33aec533a69b1296dba72ca13e"
									}

								}
, 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "shifter-delay",
									"origin" : "d",
									"type" : "rnbo",
									"subtype" : "",
									"embed" : 0,
									"fileref" : 									{
										"name" : "shifter-delay",
										"filename" : "shifter [1].maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "a3230173e3169027d45828eb300a8ef0"
									}

								}
, 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "deep-rattler",
									"origin" : "d",
									"type" : "rnbo",
									"subtype" : "",
									"embed" : 0,
									"fileref" : 									{
										"name" : "deep-rattler",
										"filename" : "default[1].maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "7435bae30354258835ec99a90ca47f64"
									}

								}
, 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "fast lfo panner",
									"origin" : "d",
									"type" : "rnbo",
									"subtype" : "",
									"embed" : 0,
									"fileref" : 									{
										"name" : "fast lfo panner",
										"filename" : "slow lfo panner[1].maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "89057db43f8c525a00c3680d03ad36f9"
									}

								}
, 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "chorus-pingpong",
									"origin" : "d",
									"type" : "rnbo",
									"subtype" : "",
									"embed" : 0,
									"snapshot" : 									{
										"shiftwindow" : 										{
											"value" : 448.0
										}
,
										"__presetid" : "d",
										"shiftamount" : 										{
											"value" : 4.488188976377953
										}
,
										"delayms" : 										{
											"value" : 0.0
										}
,
										"shiftdelaysend" : 										{
											"value" : 0.0
										}
,
										"shiftfeedback" : 										{
											"value" : 0.2
										}
,
										"delayfeedback" : 										{
											"value" : 0.0
										}
,
										"wetdry" : 										{
											"value" : 0.0
										}
,
										"lfoamount" : 										{
											"value" : 0.574803149606299
										}
,
										"lfofreq" : 										{
											"value" : 6.147637795275591
										}

									}
,
									"fileref" : 									{
										"name" : "chorus-pingpong",
										"filename" : "default[1]_20240419.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "62d2600674f98fa53c930d7f16df1370"
									}

								}
 ]
						}

					}
,
					"text" : "rnbo~ @title d",
					"varname" : "rnbo~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 325.0, 51.0, 77.0, 22.0 ],
					"text" : "set wetbuffer"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 326.0, 182.0, 65.0, 22.0 ],
					"text" : "replace $1"
				}

			}
, 			{
				"box" : 				{
					"attr" : "shiftwindow",
					"id" : "obj-3",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 114.0, 365.5, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "shiftamount",
					"id" : "obj-7",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 117.0, 464.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "delayms",
					"id" : "obj-8",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 661.111100077629089, 356.481475532054901, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "delayfeedback",
					"id" : "obj-9",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 661.111100077629089, 467.592584788799286, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "lfofreq",
					"id" : "obj-39",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 313.314817905426025, 300.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "lfoamount",
					"id" : "obj-45",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 313.314817905426025, 404.944444954395294, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "loop",
					"id" : "obj-55",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 767.0, 589.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "shiftfeedback",
					"id" : "obj-2",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 117.0, 544.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "wetdry",
					"id" : "obj-11",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 574.5, 584.0, 150.0, 22.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"midpoints" : [ 395.351845979690552, 612.0, 525.351845979690552, 612.0 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 361.351845979690552, 612.0, 361.351845979690552, 612.0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"midpoints" : [ 126.5, 517.111110508441925, 126.5, 517.111110508441925 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 126.5, 327.0, 130.796294271945953, 327.0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"midpoints" : [ 130.796294271945953, 357.0, 123.5, 357.0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"midpoints" : [ 26.5, 237.0, 321.0, 237.0, 321.0, 174.0, 335.5, 174.0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 584.0, 672.0, 561.0, 672.0, 561.0, 579.0, 584.0, 579.0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"midpoints" : [ 584.0, 641.111110508441925, 584.0, 641.111110508441925 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"midpoints" : [ 334.5, 75.0, 334.5, 75.0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"midpoints" : [ 334.5, 48.0, 334.5, 48.0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"midpoints" : [ 335.5, 201.0, 334.5, 201.0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"midpoints" : [ 126.5, 462.0, 126.5, 462.0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 126.5, 429.0, 126.5, 429.0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"midpoints" : [ 670.611100077629089, 355.611106753349304, 670.611100077629089, 355.611106753349304 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 123.5, 390.0, 99.0, 390.0, 99.0, 573.0, 361.351845979690552, 573.0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"midpoints" : [ 670.611100077629089, 325.611106753349304, 670.611100077629089, 325.611106753349304 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 670.611100077629089, 454.611106753349304, 670.611100077629089, 454.611106753349304 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"midpoints" : [ 670.611100077629089, 416.611106753349304, 670.611100077629089, 416.611106753349304 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"midpoints" : [ 502.092584371566772, 403.074075758457184, 502.092584371566772, 403.074075758457184 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"midpoints" : [ 498.592584371566772, 370.074075758457184, 502.092584371566772, 370.074075758457184 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 502.092584371566772, 573.0, 361.351845979690552, 573.0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 322.814817905426025, 324.0, 300.0, 324.0, 300.0, 573.0, 361.351845979690552, 573.0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"midpoints" : [ 322.814817905426025, 359.666665554046631, 322.814817905426025, 359.666665554046631 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"midpoints" : [ 322.814817905426025, 464.611110508441925, 322.814817905426025, 464.611110508441925 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 322.814817905426025, 429.0, 300.0, 429.0, 300.0, 573.0, 361.351845979690552, 573.0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 1 ],
					"order" : 0,
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"order" : 1,
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"midpoints" : [ 42.851851403713226, 573.0, 429.351845979690552, 573.0 ],
					"source" : [ "obj-48", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 36.351851403713226, 573.0, 361.351845979690552, 573.0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"midpoints" : [ 816.0, 692.0, 546.0, 692.0, 546.0, 588.0, 429.351845979690552, 588.0 ],
					"source" : [ "obj-49", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 775.5, 688.962962746620178, 546.0, 688.962962746620178, 546.0, 584.555555462837219, 361.351845979690552, 584.555555462837219 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"midpoints" : [ 773.5, 616.9629727602005, 775.5, 616.9629727602005 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"midpoints" : [ 813.5, 610.9629727602005, 775.5, 610.9629727602005 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"midpoints" : [ 776.5, 610.9629727602005, 775.5, 610.9629727602005 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"midpoints" : [ 402.351845979690552, 681.0, 159.0, 681.0, 159.0, 636.0, 139.5, 636.0 ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 361.351845979690552, 672.0, 159.0, 672.0, 159.0, 627.0, 113.5, 627.0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 126.5, 573.0, 361.351845979690552, 573.0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 670.611100077629089, 381.0, 642.0, 381.0, 642.0, 573.0, 361.351845979690552, 573.0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 670.611100077629089, 573.0, 361.351845979690552, 573.0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-1" : [ "rnbo~", "rnbo~", 0 ],
			"obj-14" : [ "live.drop", "live.drop", 0 ],
			"obj-48" : [ "live.gain~[1]", "live.gain~", 0 ],
			"obj-6" : [ "live.gain~", "live.gain~", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "d lfo panner[1].maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "d.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "d[1].maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "default[1].maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "default[1]_20240419.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "lfo panner[1].maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "shifter [1].maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "slow lfo panner[1].maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
