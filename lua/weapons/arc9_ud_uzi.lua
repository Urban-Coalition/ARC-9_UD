--
-- Copyright Urban Coalition 1997-2001.
--

AddCSLuaFile()

SWEP.Base					= "arc9_base"

SWEP.Spawnable				= true
SWEP.Category				= "ARC-9 - Urban Coalition"

SWEP.PrintName				= "IAL-9"
SWEP.TrueName				= "Uzi"

SWEP.Class					= "Pistol"
SWEP.Trivia = {
	Manufacturer	= "Next Generation Weapons Inc.",
	Calibre			= "9x19 Parabellum",
	Mechanism		= "Short Recoil",
	Country			= "Austria",
	Year			= "1982"
}
if ARC9:UseTrueNames() then
	SWEP.PrintName				= SWEP.TrueName
    SWEP.Trivia.Manufacturer	= "Glock Ges.m.b.H."
end

SWEP.Credits = {
	Author	= "Urban Decay Team",
}

SWEP.Description				= [[Handgun originally designed by a curtain rod manufacturer for the Austrian military. Its reliable and cost-effective polymer design has since made it one of the most popular and widely used pistols in the world, common in military, police and civilian use alike.

Great backup weapon due to its quick draw and sight times, but a relatively low damage output makes it a less than ideal primary.]]


SWEP.ViewModel				= "models/weapons/arccw/c_ud_uzi.mdl"
SWEP.WorldModel				= "models/weapons/arccw/c_ud_uzi.mdl"
SWEP.ViewModelFOVBase		= 70

SWEP.Slot					= 1
SWEP.Crosshair				= true

SWEP.MirrorVMWM				= true
SWEP.WorldModelOffset = {
	Pos				= Vector(-7.5, 1.5, -5.5),
	Ang				= Angle(-5, 0, 180),
	Scale				= 1
}

SWEP.DefaultBodygroups		= "0000000000000000000000"

-------------------------- DAMAGE PROFILE

SWEP.DamageMax				= 27 -- Damage done at point blank range
SWEP.DamageMin				= 20 -- Damage done at maximum range

SWEP.DamageRand				= 0 -- Damage varies randomly per shot by this fraction. 0.1				= +- 10% damage per shot.

SWEP.RangeMin				= 15 / ARC9.HUToM -- How far bullets retain their maximum damage for.
SWEP.RangeMax				= 50 / ARC9.HUToM -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration			= 5 -- Units of wood that can be penetrated by this gun.

SWEP.PhysBulletMuzzleVelocity	= 375 / ARC9.HUToM

-------------------------- MAGAZINE

SWEP.Ammo						= "pistol" -- What ammo type this gun uses.
SWEP.ChamberSize				= 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize					= 17 -- Self-explanatory.
SWEP.SupplyLimit				= 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit		= 2 -- Amount of reserve UBGL magazines you can take.

SWEP.DropMagazineModel				= false -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
	"weapons/arc9_ud/common/rifle_magdrop_1.ogg",
	"weapons/arc9_ud/common/rifle_magdrop_2.ogg",
	"weapons/arc9_ud/common/rifle_magdrop_3.ogg",
	"weapons/arc9_ud/common/rifle_magdrop_4.ogg"
}	-- Table of sounds a dropped magazine should play.
SWEP.DropMagazineAmount				= 0 -- Amount of mags to drop.
SWEP.DropMagazineTime				= 0

-------------------------- FIREMODES

SWEP.RPM				= 525
SWEP.Firemodes = {
	{
		Mode				= -1
	},
	{
		Mode				= 1
	}
}

-------------------------- MELEE

SWEP.Bash						= true
SWEP.PrimaryBash				= false

SWEP.BashDamage					= 50
SWEP.BashLungeRange				= 128
SWEP.BashRange					= 64
SWEP.PreBashTime				= 0.25
SWEP.PostBashTime				= 0.5

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil				= 0.4

-- Static increasing recoil
SWEP.RecoilUp				= 0.5
SWEP.RecoilSide				= 0.2

-- Unpredictable circle recoil
SWEP.RecoilRandomUp			= 0.1
SWEP.RecoilRandomSide		= 0.4

SWEP.RecoilDissipationRate	= 15 -- How much recoil dissipates per second.
SWEP.RecoilResetTime		= 0.1 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl		= 0

SWEP.RecoilKick				= 0.1
SWEP.RecoilPatternDrift		= 5000

SWEP.RecoilMultHipFire				= 1.25
SWEP.RecoilAutoControlMultHipFire	= 0.5

-------------------------- SPREAD

SWEP.Spread				= math.rad(1)

SWEP.SpreadMultHipFire				= 2
SWEP.SpreadMultMidAir				= 2
SWEP.SpreadMultMove					= 2
SWEP.SpreadMultCrouch				= 0.5

-------------------------- HANDLING

SWEP.FreeAimRadius			= 10 / 1.25 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway					= 0.75 + 1 -- How much the gun sways.

SWEP.SwayMultMidAir			= 2
SWEP.SwayMultMove			= 1.15
SWEP.SwayMultCrouch			= 0.66
SWEP.SwayMultShooting		= 1.2

SWEP.FreeAimRadiusSights	= 1

SWEP.SwayMultSights				= 0.3

SWEP.AimDownSightsTime		= 0.5 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime		= 0.5 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult				= 0.95
SWEP.SpeedMultSights		= 0.75
SWEP.SpeedMultShooting		= 0.75
SWEP.SpeedMultMelee			= 0.75
SWEP.SpeedMultCrouch		= 1
SWEP.SpeedMultBlindFire		= 1

-------------------------- TRACERS

SWEP.TracerNum				= 1 -- Tracer every X
SWEP.TracerColor			= Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
	Pos			= Vector(-2.3, 1, 2.52),
	Ang			= Angle(0.3, 0, 0),
	Midpoint = { -- Where the gun should be at the middle of it's irons
		Pos			= Vector(0, 15, -4),
		Ang			= Angle(0, 0, -45),
	},
	ViewModelFOV = 50,
	Magnification	= 1.1,
}

SWEP.SprintPos				= Vector(1, -2, -3)
SWEP.SprintAng				= Angle(15.5, 2, -7)

SWEP.ActivePos				= Vector(0.2, -1, 1)
SWEP.ActiveAng				= Angle(0, 0, -5)

SWEP.CustomizeAng			= Angle(90, 0, 0)
SWEP.CustomizePos			= Vector(16, 22, 6)
SWEP.CustomizeSnapshotFOV	= 70

-------------------------- HoldTypes

SWEP.HoldType				= "ar2"
SWEP.HoldTypeSprint			= "passive"
SWEP.HoldTypeHolstered		= "passive"
SWEP.HoldTypeSights			= "ar2"
SWEP.HoldTypeCustomize		= "slam"
SWEP.HoldTypeBlindfire		= "pistol"

SWEP.AnimShoot				= ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload				= false
SWEP.AnimDraw				= false

-------------------------- EFFECTS

SWEP.MuzzleParticle			= "muzzleflash_1" -- Used for some muzzle effects.

SWEP.ShellModel				= "models/weapons/arccw/uc_shells/9x19.mdl"
SWEP.ShellCorrectAng		= Angle(0, 180, 0)
SWEP.ShellScale				= 1
SWEP.ShellPhysBox			= Vector(0.5, 0.5, 2)

SWEP.CamQCA					= 3
SWEP.CamOffsetAng			= Angle(0, 0, 90)
-------------------------- SOUNDS

local path					= ")^weapons/arccw_ud/glock/"
local path1					= ")^weapons/arccw_ud/uzi/"
local common				= ")^arccw_uc/common/"
SWEP.ShootSound	 = {
    path .. "fire-01.ogg",
    path .. "fire-02.ogg",
    path .. "fire-03.ogg",
    path .. "fire-04.ogg",
    path .. "fire-05.ogg",
    path .. "fire-06.ogg"
}
SWEP.DistantShootSound			= {
    path .. "fire-dist-01.ogg",
    path .. "fire-dist-02.ogg",
    path .. "fire-dist-03.ogg",
    path .. "fire-dist-04.ogg",
    path .. "fire-dist-05.ogg",
    path .. "fire-dist-06.ogg"
}
SWEP.ShootSoundSilenced			= path .. "fire_supp.ogg"
SWEP.DistantShootSoundSilenced	= common .. "sup_tail.ogg"
SWEP.DryFireSound				= path .. "dryfire.ogg"

SWEP.FiremodeSound				= "arc9/firemode.wav"

local ci = CHAN_AUTO
local ratel = {path .. "pistol_rattle_1.ogg", path .. "pistol_rattle_2.ogg", path .. "pistol_rattle_3.ogg"}
local rottle = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}

SWEP.ReloadInSights				= true -- This weapon can aim down sights while reloading.

SWEP.Animations = {
	["idle"] = {
		Source				= "idle",
		Time				= 1
	},
	["idle_empty"] = {
		Source				= "idle_empty",
		Time				= 1
	},
	["draw"] = {
		Source				= "draw",
		EventTable = {
			{s	= common .. "raise.ogg",			t = 0},
			{s	= common .. "shoulder.ogg",			t = 0.15},
			{s	= ratel,							t = 0.2},
		},
	},
	["draw_empty"] = {
		Source				= "draw_empty",
		Time				= 20 / 30,
		EventTable = {
			{s	= common .. "raise.ogg",			t = 0},
			{s	= common .. "shoulder.ogg",			t = 0.15},
			{s	= ratel,							t = 0.2},
		},
	},
	["holster"] = {
		Source				= "holster",
		EventTable = {
			{s	= ratel,							t = 0},
			{s	= common .. "cloth_6.ogg",			t = 0.2},
		},
	},
	["holster_empty"] = {
		Source				= "holster_empty",
		Time				= 20 / 30,
		EventTable = {
			{s	= ratel,							t = 0},
			{s	= common .. "cloth_6.ogg",			t = 0.2},
		},
	},
	["fire"] = {
		Source				= "fire",
		Time				= 16 / 30,
		ShellEjectAt				= 0.03,
		EventTable = {
			{s	= {
				path .. "mech-01.ogg",
				path .. "mech-02.ogg",
				path .. "mech-03.ogg",
				path .. "mech-04.ogg",
				path .. "mech-05.ogg",
				path .. "mech-06.ogg"
			},										t = 0.03},
		},
	},
	["fire_empty"] = {
		Source				= "fire_empty",
		Time				= 16 / 30,
		ShellEjectAt				= 0.03,
		EventTable = {
			{s	= path .. "mech_last.ogg",			t = 0},
		},
	},

	["fix"] = {
		Source				= "fix",
		Time				= 45 / 30,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.4,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.6,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},
		EventTable = {
			{s	= path .. "chback.ogg",				t = 0.15},
			{s	= common .. "cloth_4.ogg", 			t = 0.5},
			{s	= path .. "chamber.ogg", 			t = 0.55},
		},
	},
	["fix_empty"] = {
		Source				= "fix_empty",
		Time				= 45 / 30,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.4,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.6,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},
		EventTable = {
			{s	= path .. "chback.ogg",				t = 0.15},
			{s	= common .. "cloth_4.ogg", 			t = 0.5},
			{s	= path .. "chamber.ogg", 			t = 0.55},
		},
	},
	["fix_100"] = {
		Source				= "fix_100",
		Time				= 50 / 30,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.4,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.6,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},
		EventTable = {
			{s	= path .. "chback.ogg",				t = 0.15},
			{s	= common .. "cloth_4.ogg", 			t = 0.5},
			{s	= path .. "chamber.ogg", 			t = 0.55},
		},
	},
	["fix_empty_100"] = {
		Source				= "fix_empty_100",
		Time				= 50 / 30,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.4,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.6,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},
		EventTable = {
			{s	= path .. "chback.ogg",				t = 0.15},
			{s	= common .. "cloth_4.ogg", 			t = 0.5},
			{s	= path .. "chamber.ogg", 			t = 0.55},
		},
	},

	["cycle"] = {
		Source				= "fix",
		Time				= 36 / 30 * 0.7,
		ShellEjectAt				= 0.3,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.4,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.6,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},
		EventTable = {
			{s	= path .. "chback.ogg",				t = 0.05},
			{s	= common .. "cloth_4.ogg", 			t = 0.2},
			{s	= path .. "chamber.ogg", 			t = 0.3},
		},
	},

	-- 17 Round Reloads --

	["reload"] = {
		Source				= "reload",
		TPAnim				= ACT_HL2MP_GESTURE_RELOAD_AR2,
		Time				= 56 / 30,
		MinProgress				= 1.1,
		LastClip1OutTime				= 0.9,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.2,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.75,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},
		EventTable = {
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 0},
			{v1	= 10000, v2	= 10000, vt	= 0.1,	t = 0.35},
			{v1	= 10000, v2	= 20000, vt	= 0.3,	t = 0.9},
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 1.55},
			{FOV = -6,
			FOV_Start = 1.4,
			FOV_End = 1.7,
			FOV_FuncStart = ARC9.Ease.OutCirc,
			FOV_FuncEnd = ARC9.Ease.InCirc,	t = 0},
			{s = rottle,									t = 0},
			{s = common .. "magpouch_pull_small.ogg",		t = 0.075},
			{s = rattel,									t = 0.3},
			{s = path .. "magout_partial.ogg",				t = 0.3, c = ci},
			{s = rattel,									t = 0.35},
			{s = path .. "magin_new.ogg",					t = 0.49, c = ci},
			{s = rottle,									t = 0.5},
			{s = common .. "magpouch_replace_small.ogg",	t = 1.25},
		},
	},
	["reload_empty"] = {
		Source				= "reload_empty",
		TPAnim				= ACT_HL2MP_GESTURE_RELOAD_AR2,
		Time				= 78 / 30,
		MinProgress				= 1.5,
		LastClip1OutTime				= 0.7,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.2,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.75,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},
		EventTable = {
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 0},
			{v1	= 10000, v2	= 10000, vt	= 0.1,	t = 0.4},
			{v1	= 10000, v2	= 20000, vt	= 0.1,	t = 0.9},
			{v1	= 40000, v2	= 40000, vt	= 0.2,	t = 1.7},
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 2.1},
			{FOV = -6,
			FOV_Start = 1.8,
			FOV_End = 2.4,
			FOV_FuncStart = ARC9.Ease.OutCirc,
			FOV_FuncEnd = ARC9.Ease.InCirc,	t = 0},
			{FOV = 6,
			FOV_Start = 0.2,
			FOV_End = 0.4,
			FOV_FuncStart = ARC9.Ease.OutCirc,
			FOV_FuncEnd = ARC9.Ease.InCirc,	t = 1.8},
			{s = rattel,								t = 0},
			{s = path .. "magout_empty.ogg",			t = 0.13, c = ci},
			{s = common .. "magpouch_pull_small.ogg",	t = 0.35},
			{s = rattel,								t = 0.5},
			{s = path .. "magin_new.ogg",				t = 0.55, c = ci},
			{s = common .. "pistol_magdrop.ogg",		t = 0.65},
			{s = rattel,								t = 1.2},
			{s = path .. "sliderel_deact.ogg",			t = 1.62, c = ci},
			{s = path .. "chamber.ogg",					t = 1.85, c = ci},
			{s = rottle,								t = 1.9},
		},
	},

	-- 10 Round Reloads --

	["reload_10"] = {
		Source				= "reload_10",
		TPAnim				= ACT_HL2MP_GESTURE_RELOAD_AR2,
		Time				= 56 / 30,
		MinProgress				= 1.1,
		LastClip1OutTime				= 0.9,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.2,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.75,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},
		EventTable = {
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 0},
			{v1	= 10000, v2	= 10000, vt	= 0.1,	t = 0.35},
			{v1	= 10000, v2	= 20000, vt	= 0.3,	t = 0.9},
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 1.55},
			{s = rattel,									t = 0},
			{s = common .. "magpouch_pull_small.ogg",		t = 0.025, c = ci},
			{s = rattel,									t = 0.3},
			{s = path .. "magrelease.ogg",					t = 0.2, c = ci},
			{s = path .. "magout_partial.ogg",				t = 0.2, c = ci},
			{s = path .. "magin_new.ogg",					t = 0.35, c = ci},
			{s = common .. "magpouch_replace_small.ogg",	t = 1.2},
			{s = rottle,									t = 0.65},
		},
	},
	["reload_empty_10"] = {
		Source				= "reload_empty_10",
		TPAnim				= ACT_HL2MP_GESTURE_RELOAD_AR2,
		Time				= 65 / 30,
		MinProgress				= 1.5,
		LastClip1OutTime				= 0.7,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.2,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.75,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},
		EventTable = {
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 0},
			{v1	= 10000, v2	= 10000, vt	= 0.1,	t = 0.4},
			{v1	= 10000, v2	= 20000, vt	= 0.1,	t = 0.9},
			{v1	= 40000, v2	= 40000, vt	= 0.2,	t = 1.7},
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 2.1},
			{s = rattel,								t = 0},
			{s = path .. "magrelease.ogg",				t = 0.15, c = ci},
			{s = path .. "magout_empty.ogg",			t = 0.1, c = ci},
			{s = common .. "magpouch_pull_small.ogg",	t = 0.3, c = ci},
			{s = path .. "magin_new.ogg",				t = 0.45, c = ci},
			{s = rattel,								t = 0.5},
			{s = common .. "pistol_magdrop.ogg",		t = 0.65},
			{s = rottle,								t = 0.9},
			{s = path .. "chamber.ogg",					t = 1.35, c = ci},
		},
	},

	-- 33 Round Reloads --

	["reload_33"] = {
		Source				= "reload_33",
		TPAnim				= ACT_HL2MP_GESTURE_RELOAD_AR2,
		Time				= 56 / 30,
		MinProgress				= 1.1,
		LastClip1OutTime				= 0.9,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.2,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.75,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},
		EventTable = {
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 0},
			{v1	= 10000, v2	= 10000, vt	= 0.1,	t = 0.35},
			{v1	= 5000, v2	= 20000, vt	= 0.1,	t = 0.9},
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 1.55},
			{s = rottle,									t = 0},
			{s = common .. "magpouch.ogg",					t = 0.05},
			{s = rattel,									t = 0.3},
			{s = path .. "magrelease.ogg",					t = 0.4, c = ci},
			{s = path .. "magout_partial.ogg",				t = 0.4, c = ci},
			{s = path .. "magin_new.ogg",					t = 0.55, c = ci},
			{s = rottle,									t = 0.75},
			{s = common .. "magpouchin.ogg",				t = 1.25, v = .35},
		},
	},
	["reload_empty_33"] = {
		Source				= "reload_empty_33",
		TPAnim				= ACT_HL2MP_GESTURE_RELOAD_AR2,
		Time				= 66 / 30,
		MinProgress				= 1.5,
		LastClip1OutTime				= 0.7,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.2,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.75,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},
		EventTable = {
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 0},
			{v1	= 10000, v2	= 10000, vt	= 0.1,	t = 0.4},
			{v1	= 40000, v2	= 40000, vt	= 0.2,	t = 1.4},
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 2.1},
			{s = rattel,								t = 0},
			{s = path .. "magrelease.ogg",				t = 0.16, c = ci},
			{s = path .. "magout_empty.ogg",			t = 0.16, c = ci},
			{s = common .. "magpouch.ogg",				t = 0.35, c = ci},
			{s = rattel,								t = 0.5},
			{s = path .. "magin_new.ogg",				t = 0.55, c = ci},
			{v1	= 10000, v2	= 10000, vt	= 0.1,			t = 0.9},
			{s = common .. "pistol_magdrop.ogg",		t = 0.65},
			{s = rottle,								t = 1.3},
			{s = path .. "chamber.ogg",					t = 1.42, c = ci},
		},
	},

	-- 100 Round Reloads --

	["reload_100"] = {
		Source				= "reload_100",
		TPAnim				= ACT_HL2MP_GESTURE_RELOAD_AR2,
		Time				= 56 / 30,
		MinProgress				= 1.3,
		LastClip1OutTime				= 0.9,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.2,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.75,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},
		EventTable = {
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 0},
			{v1	= 10000, v2	= 10000, vt	= 0.1,	t = 0.35},
			{v1	= 5000, v2	= 20000, vt	= 0.1,	t = 0.9},
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 1.55},
            {s = rattel,								t = 0},
            {s = path .. "magrelease.ogg",				t = 0.3, c = ci},
            {s = path .. "magout.ogg",					t = 0.3, c = ci},
            {s = rattel,								t = 0.7},
            {s = path .. "magin.ogg",					t = 0.7, c = ci},
            {s = rottle,								t = 1.1},
		},
	},
	["reload_empty_100"] = {
		Source				= "reload_empty_100",
		TPAnim				= ACT_HL2MP_GESTURE_RELOAD_AR2,
		Time				= 66 / 30,
		MinProgress				= 1.5,
		LastClip1OutTime				= 0.7,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.2,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.75,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},
		EventTable = {
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 0},
			{v1	= 10000, v2	= 10000, vt	= 0.1,	t = 0.4},
			{v1	= 40000, v2	= 40000, vt	= 0.2,	t = 1.4},
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 2.1},
            {s = rattel,								t = 0},
            {s = path .. "magrelease.ogg",				t = 0.12, c = ci},
            {s = path .. "magout.ogg",					t = 0.12, c = ci},
            {s = path .. "magin.ogg",					t = 0.5, c = ci},
            {s = common .. "magdrop.ogg",				t = 0.55},
            {s = rattel,								t = 0.7},
            {s = path .. "sliderel_deact.ogg",			t = 1.33, c = ci},
            {s = path .. "chamber.ogg",					t = 1.525, c = ci},
            {s = rottle,								t = 1.6},
		},
	},
}

-------------------------- ATTACHMENTS

SWEP.AttachmentElements = {
	["ud_glock_slide_auto"] = {
		Bodygroups = {
			{3, 3}
		}
	},
	["ud_glock_slide_cs"] = {
		Bodygroups = {
			{3, 6}
		}
	},
	["ud_glock_slide_lb"] = {
		Bodygroups = {
			{3, 2}
		}
	},
	["ud_glock_slide_carbine"] = {
		Bodygroups = {
			{3, 4}
		}
	},
	["ud_glock_slide_subcompact"] = {
		Bodygroups = {
			{3, 8}
		}
	},
	["ud_glock_mag_10"] = {
		Bodygroups = {
			{1, 1}
		}
	},
	["ud_glock_mag_33"] = {
		Bodygroups = {
			{1, 2}
		}
	},
	["ud_glock_mag_100"] = {
		Bodygroups = {
			{1, 3}
		}
	},
	["ud_glock_frame_flared"] = {
		Bodygroups = {
			{0, 1}
		}
	},
	["ud_glock_frame_subcompact"] = {
		Bodygroups = {
			{0, 2}
		}
	},
	["ud_glock_skin_tan"] = {
		Skin = 1,
	},
	["ud_glock_skin_olive"] = {
		Skin = 2,
	}
}

SWEP.Hook_TranslateAnimation				= function(swep, anim)
	local elements				= swep:GetElements()

	if elements["ud_glock_mag_10"] then
		return anim .. "_10"
	elseif elements["ud_glock_mag_33"] then
		return anim .. "_33"
	elseif elements["ud_glock_mag_100"] then
		return anim .. "_100"
	elseif elements["ud_glock_frame_flared"] then
		return anim .. "_flared"
	end
end

SWEP.Attachments = {
	{
		PrintName						= "SLIDE",
		DefaultName						= "GEN3 Slide",
		DefaultCompactName				= "GEN3",
		DefaultName_TrueName			= "Glock 17 Slide",
		DefaultCompactName_TrueName		= "G17",
		Category						= "ud_glock_slide",
		Bone							= "glock_parent",
		Pos								= Vector(0, 0, 0),
		Ang								= Angle(0, 0, 0),
		Icon_Offset						= Vector(0, -2.33, 4)
	},
	{
		PrintName						= "CALIBER",
		DefaultName						= "Caliber",
		DefaultCompactName				= "CALIBER",
		Category						= "ud_glock_caliber",
		Bone							= "glock_parent",
		Pos								= Vector(0, 0, 0),
		Ang								= Angle(0, 0, 0),
		Icon_Offset						= Vector(0, -2.33, 2)
	},
	{
		PrintName						= "MAG",
		DefaultName						= "17-Round Mag",
		DefaultCompactName				= "17-RND",
		Category						= "ud_glock_mag",
		Bone							= "glock_mag",
		Pos								= Vector(0, 0, 0),
		Ang								= Angle(0, 0, 0),
		Icon_Offset						= Vector(0, 0, -0.67)
	},
	{
		Hidden = true,
		PrintName						= "MUZZLE",
		DefaultName						= "Muzzle",
		DefaultCompactName				= "MUZZLE",
		Category						= "uc_muzzle",
		Bone							= "glock_flash",
		Pos								= Vector(0, 0, 0),
		Ang								= Angle(0, 0, 0),
		Icon_Offset						= Vector(0, 0, 0)
	},
	{
		PrintName						= "OPTIC",
		DefaultName						= "Optic",
		DefaultCompactName				= "OPTIC",
		Category						= "optic_picatinny_small",
		Bone							= "glock_slide",
		Pos								= Vector(0, -0.67, -0.67),
		Ang								= Angle(90, 0, -90),
		Icon_Offset						= Vector(0, 0, 0)
	},
	{
		PrintName						= "FRAME",
		DefaultName						= "Glock 17 Frame",
		DefaultCompactName				= "FRAME",
		Category						= "ud_glock_frame",
		Bone							= "glock_parent",
		Pos								= Vector(0, 0, 0),
		Ang								= Angle(0, 0, 0),
		Icon_Offset						= Vector(0, 0, 0.33)
	},
	{
		PrintName						= "FINISH",
		DefaultName						= "Weapon Finish",
		DefaultCompactName				= "FINISH",
		Category						= "ud_glock_skin",
		Bone							= "glock_parent",
		Pos								= Vector(0, 0, 0),
		Ang								= Angle(0, 0, 0),
		Icon_Offset						= Vector(0, 0, 4)
	},
}