local mod = {}

mod.postRunFn = function(captureParams : NativeLuaTable, configDict : {{string, string}}, allModParams : {string : {string : integer}} )

	local multipleUnitsToHide: {{string}} = {
		[1] = { 
			"mw_ice_4::/vehicle/train/ice_4/ice4_7_fake.mu",
			"mw_ice_4::/vehicle/train/ice_4/ice4_7_klima_fake.mu",
			"mw_ice_4::/vehicle/train/ice_4/ice4_7_mns_fake.mu",
			"mw_ice_4::/vehicle/train/ice_4/ice4_12_fake.mu",
			"mw_ice_4::/vehicle/train/ice_4/ice4_12_gruen_fake.mu",
			"mw_ice_4::/vehicle/train/ice_4/ice4_12_klima_fake.mu",
			"mw_ice_4::/vehicle/train/ice_4/ice4_13_brd_fake.mu",
			"mw_ice_4::/vehicle/train/ice_4/ice4_13_klima_fake.mu",
		},
		[2] = { }
	}
	
	local selectedfilter_fake: integer = allModParams[getCurrentModId()].ice_4_fake

	for _, v in ipairs(multipleUnitsToHide[selectedfilter_fake]) do
		api.res.multipleUnitRep.setVisible(api.res.multipleUnitRep.find(v), false)
	end
	

end

return mod