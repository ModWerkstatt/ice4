local soundsetutil = require "soundsetutil"

function data()

local data = soundsetutil.makeSoundSet()

soundsetutil.addTrackParam01
(data, "vehicle/ice412/stehen.wav", 25.0,
		{
			{ 0.00 , 1.0 },
			{ 0.10, 0.5 },
			{ 0.15, 0.0 },
			{ 1.00 , 0.0 } },
		
		{
			{ 0.0, 1.0 },
			{ 1.0, 1.0 } }, 
		"speed01")

soundsetutil.addTrackParam01
(data, "vehicle/ice412/schnell.wav", 25.0,
		{
			{ 0.0, 0.0 },
			{ 0.5, 0.2 },
			{ 1.0, 1.0 } },
		{
			{ 0.0, 1.0 },
			{ 1.0, 1.0 } }, 
		"speed01")
		
soundsetutil.addTrackParam01
(data, "vehicle/ice412/rollen.wav", 25.0,
		{
			{ 0.0, 0.0 },
			{ 0.5, 1.0 },
			{ 1.0, 0.2 } },
		{
			{ 0.0, 1.0 },
			{ 1.0, 1.0 } }, 
		"speed01")

soundsetutil.addTrackSqueal(data, "vehicle/ice412/kurve.wav", 25.0)
soundsetutil.addTrackBrake(data, "vehicle/ice412/bremsen.wav", 25.0, 1.0)

soundsetutil.addEvent(data, "horn", { "vehicle/ice412/horn.wav" }, 50.0)

soundsetutil.addEvent(data, "openDoors", { "vehicle/ice412/opendoor.wav" }, 5.0)
soundsetutil.addEvent(data, "closeDoors", { "vehicle/ice412/closedoor.wav" }, 5.0)

return data

end