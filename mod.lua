function data()
return {
	info = {
		minorVersion = 2,
		severityAdd = "NONE",
		severityRemove = "WARNING",
		name = _("mod_name"),
		description = _("mod_desc"),
		tags = { "europe", "train", "deutsche bahn", "ice", "high speed" },

        params = {
			{
				key = "ice4fake",
				name = _("Fake"),
				values = { "No", "Yes", },
				tooltip = _("option_fake_ice4_desc"),
				defaultIndex = 0,
			},
		},

		dependencies = { },

        requiredMods = { },

		authors = {
		    {
		        name = "ModWerkstatt",
		        role = "CREATOR",
		    },
		},
		url = "",
		visible = true,
	},

	runFn = function (settings, modParams)

	    local hidden = {
			["7_fake.lua"] = true,
			["7_klima_fake.lua"] = true,
			["7_MNS_fake.lua"] = true,
			["12_fake.lua"] = true,
			["12_gruen_fake.lua"] = true,
			["12_klima_fake.lua"] = true,
            ["13_klima_fake.lua"] = true,
            ["13_brd_fake.lua"] = true,
		}

		local modelFilter = function(fileName, data)
			local modelName = fileName:match('/ICE4_([^/]*.lua)')
			return (modelName==nil or hidden[modelName]~=true)
		end

		if modParams[getCurrentModId()] ~= nil then
			local params = modParams[getCurrentModId()]
			if params["ice4fake"] == 0 then
				addFileFilter("multipleUnit", modelFilter)
			end
		else
			addFileFilter("multipleUnit", modelFilter)
		end
	end
	}
end
