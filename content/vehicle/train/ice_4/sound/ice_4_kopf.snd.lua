local soundsetutil = require "::/scripts/soundsetutil.lua"

function data()

local data = soundsetutil.makeSoundSet()

soundsetutil.addTrackParam01
(data, "br412/stehen.wav", 25.0,
		{
			{ 0.00 , 1.0 },
			{ 0.10, 0.5 },
			{ 0.15, 0.0 },
			{ 1.00 , 0.0 } },

		{
			{ 0.0, 1.0 },
			{ 1.0, 1.0 } },
		{"vehicle","speed01"})

soundsetutil.addTrackParam01
(data, "br412/schnell.wav", 25.0,
		{
			{ 0.0, 0.0 },
			{ 0.5, 0.2 },
			{ 1.0, 1.0 } },
		{
			{ 0.0, 1.0 },
			{ 1.0, 1.0 } },
		{"vehicle","speed01"})

soundsetutil.addTrackParam01
(data, "br412/rollen.wav", 25.0,
		{
			{ 0.0, 0.0 },
			{ 0.5, 1.0 },
			{ 1.0, 0.2 } },
		{
			{ 0.0, 1.0 },
			{ 1.0, 1.0 } },
		{"vehicle","speed01"})

soundsetutil.addTrackSqueal(data, "br412/kurve.wav", 25.0)
soundsetutil.addTrackBrake(data, "br412/bremsen.wav", 25.0, 1.0)

soundsetutil.addEvent(data, "horn", { "br412/horn.wav" }, 50.0)

soundsetutil.addEvent(data, "openDoors", { "br412/opendoor.wav" }, 5.0)
soundsetutil.addEvent(data, "closeDoors", { "br412/closedoor.wav" }, 5.0)

return data

end
