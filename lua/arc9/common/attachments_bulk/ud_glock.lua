local ATT = {}

ATT.PrintName							= "GEN3 Auto Slide"
ATT.PrintNameTrue						= "Glock 18C Auto Slide"
ATT.CompactName							= "AUTO"
ATT.Icon								= Material("entities/att/acwatt_ud_glock_slide_auto.png", "mips smooth")
ATT.Description							= "An automatic slide capable of a very high rate of fire. Compensator cuts at the top improve recoil control, although that does not change the fact that this is a hell of a bullet nozzle."

ATT.Category = {"ud_glock_slide"}

ATT.RPMMult								= 2.38
ATT.SpreadMultMove						= 1.5
ATT.SpreadMultHipFire					= 1.25
ATT.RecoilMult							= 0.95
ATT.SpeedMultShooting					= 0.85
ATT.FiremodesOverride = {
	{
		Mode = -1,
	},
	{
		Mode = 1,
	},
}

ARC9.LoadAttachment(ATT, "ud_glock_slide_auto")

ATT = {}

ATT.PrintName							= "GEN3L Long Slide"
ATT.PrintNameTrue						= "Glock 17L Long Slide"
ATT.CompactName							= "LONG"
ATT.Icon								= Material("entities/att/acwatt_ud_glock_slide_lb.png", "mips smooth")
ATT.Description							= [[A somewhat uncommon long polymer slide.
The longer barrel improves precision but is awkward to handle.]]

ATT.Category = {"ud_glock_slide"}

ATT.DeployTimeMult						= 1.15
ATT.BarrelLengthAdd						= 4		-- no equiv. in ARC-9
ATT.SwayMult							= 1.25
ATT.SpreadMultHipFire					= 1.15
ATT.AimDownSightsTimeMult				= 1.1
ATT.SpreadMult							= 0.85
ATT.RecoilMult							= 0.85
ATT.RangeMaxMult						= 1.25

ARC9.LoadAttachment(ATT, "ud_glock_slide_lb")

ATT = {}

ATT.PrintName							= "GEN3 Carbine Slide"
ATT.PrintNameTrue						= "Glock 17 Euro Carbine Slide"
ATT.CompactName							= "CARBINE"
ATT.Icon								= Material("entities/att/acwatt_ud_glock_slide_carbine.png", "mips smooth")
ATT.Description							= "Extraordinarily long extended barrel. Designed for use in countries where handguns are banned, in order to fulfil minimum length requirements."

ATT.Category = {"ud_glock_slide"}

ATT.AimDownSightsTimeMult				= 1.75
ATT.RecoilMult							= 0.5
ATT.SpreadMult							= 0.25
ATT.SwayMult							= 2
ATT.RangeMaxMult						= 3
ATT.DeployTimeMult						= 1.5
ATT.BarrelLengthAdd						= 32		-- no equiv. in ARC-9

ARC9.LoadAttachment(ATT, "ud_glock_slide_carbine")

ATT = {}

ATT.PrintName							= "GEN3K Subcompact Slide"
ATT.PrintNameTrue						= "Glock 17 Subcompact Slide"
ATT.CompactName							= "SUBCOMPACT"
ATT.Icon								= Material("entities/att/acwatt_ud_glock_slide_subcompact.png", "mips smooth")
ATT.Description							= "Shortest available slide, popular for concealed carry.\nReduced length means less holster to clear and improved handling, but more muzzle rise and terrible effective range."

ATT.Category = {"ud_glock_slide"}

ATT.RequireElements = {"ud_glock_frame_subcompact"}

ATT.DrawTime							= 0.85
ATT.BarrelLengthAdd						= -4		-- no equiv. in ARC-9
ATT.SwayMult							= 0.75
ATT.SpreadMultHipFire					= 0.85
ATT.AimDownSightsTimeMult				= 0.85
ATT.SpreadMult							= 1.5
ATT.RangeMaxMult						= 0.75
ATT.RecoilMult							= 1.25

ARC9.LoadAttachment(ATT, "ud_glock_slide_subcompact")

ATT = {}

ATT.PrintName							= "GEN3 10-Round Extended Mag"
ATT.PrintNameTrue						= "Glock 10-Round Extended Mag"
ATT.CompactName							= "10-RND"
ATT.Icon								= Material("entities/att/acwatt_ud_glock_mag_10.png", "mips smooth")
ATT.Description							= "Low-capacity magazine for the Glock, mostly used on subcompact variants like the Glock 26. The lighter load makes the weapon even more ergonomic."

ATT.Category = {"ud_glock_mag"}

ATT.AimDownSightsTimeMult				= 0.9
ATT.ReloadTimeMult						= 0.9
ATT.ClipSizeOverride					= 10
ATT.SpeedMult							= 1.05
ATT.SwayMult							= 0.5

ARC9.LoadAttachment(ATT, "ud_glock_mag_10")

ATT = {}

ATT.PrintName							= "GEN3 33-Round Extended Mag"
ATT.PrintNameTrue						= "Glock 33-Round Extended Mag"
ATT.CompactName							= "33-RND"
ATT.Icon								= Material("entities/att/acwatt_ud_glock_mag_33.png", "mips smooth")
ATT.Description							= "Extended stick magazine. Heavier and throws off weapon balance, but does allow you to fire for longer."

ATT.Category = {"ud_glock_mag"}

ATT.AimDownSightsTimeMult				= 1.1
ATT.ReloadTimeMult						= 1.15
ATT.ClipSizeOverride					= 33
ATT.SpreadMultHipFire					= 1.25
ATT.SwayMult							= 1.5
ATT.SpeedMultShooting					= 0.95

ARC9.LoadAttachment(ATT, "ud_glock_mag_33")

ATT = {}

ATT.PrintName							= "GEN3 100-Round Extended Mag"
ATT.PrintNameTrue						= "Glock 100-Round Extended Mag"
ATT.CompactName							= "100-RND"
ATT.Icon								= Material("entities/att/acwatt_ud_glock_mag_100.png", "mips smooth")
ATT.Description							= "Twin-drum magazine ideal for suppressive fire (a nicer way to say \"mag dump\"). Bulky construction and high ammo capacity substantially increases weight and shifts the weapon's center of balance. Prone to jamming."

ATT.Category = {"ud_glock_mag"}

ATT.SpeedMult							= 0.95
ATT.AimDownSightsTimeMult				= 1.2
ATT.ReloadTimeMult						= 1.5
ATT.ClipSizeOverride					= 100
ATT.SpreadMultHipFire					= 1.5
ATT.SwayMult							= 3
ATT.ShootSpeedMult						= 0.9
ATT.Malfunction							= true
ATT.MalfunctionMeanMult					= 0.75
ATT.MalfunctionVarianceMult				= 1.5

ARC9.LoadAttachment(ATT, "ud_glock_mag_100")

ATT = {}

ATT.PrintName							= "GEN3 Flared Frame"
ATT.PrintNameTrue						= "Glock 17 Flared Frame"
ATT.CompactName							= "FLARED"
ATT.Icon								= Material("entities/att/acwatt_ud_glock_frame_flared.png", "mips smooth")
ATT.Description							= "Custom frame with a flared magwell to facilitate faster reloads. The extra weight slows down handling by a bit."

ATT.Category = {"ud_glock_frame"}

ATT.ReloadTimeMult						= 0.9
ATT.AimDownSightsTimeMult				= 1.1
ATT.SpeedMultSights						= 0.95
ATT.DeployTimeMult						= 1.25

ARC9.LoadAttachment(ATT, "ud_glock_frame_flared")

ATT = {}

ATT.PrintName							= "GEN3 Subcompact Frame"
ATT.PrintNameTrue						= "Glock 17 Subcompact Frame"
ATT.CompactName							= "SUBCOMPACT"
ATT.Icon								= Material("entities/att/acwatt_ud_glock_frame_subcompact.png", "mips smooth")
ATT.Description							= "A smaller frame that is noticably shorter on the magwell.\nFast to handle, but the smaller grip surface affects recoil control."

ATT.Category = {"ud_glock_frame"}

ATT.DeployTimeMult						= 0.75
ATT.RecoilMult							= 1.15
ATT.SpeedMultSights						= 1.05
ATT.AimDownSightsTimeMult				= 0.8

ARC9.LoadAttachment(ATT, "ud_glock_frame_subcompact")

ATT = {}

ATT.PrintName = "FDE Polymer"
ATT.CompactName = "FDE"
ATT.Icon = Material("entities/att/acwatt_ud_glock_material.png", "mips smooth")
ATT.Description = "Flat dark earth finish for your polymer handgun."
ATT.Category = {"ud_glock_skin"}

ARC9.LoadAttachment(ATT, "ud_glock_skin_tan")

ATT = {}

ATT.PrintName							= "Olive Drab"
ATT.CompactName							= "OLIVE"
ATT.Icon								= Material("entities/att/acwatt_ud_glock_material.png", "mips smooth")
ATT.Description							= "Olive drab finish for for your polymer handgun."
ATT.Category							= {"ud_glock_skin"}

ARC9.LoadAttachment(ATT, "ud_glock_skin_olive")

ATT = {}

ATT.PrintName							= "GEN3 10mm Auto Conversion"
ATT.PrintNameTrue						= "Glock 10mm Auto Conversion"
ATT.CompactName							= "10MM AUTO"
ATT.Icon								= Material("entities/att/acwatt_ud_glock_caliber.png", "mips smooth")
ATT.Description							= "The FBI's preferred caliber of choice.\nSignificantly more powerful, but weapon handling suffers."
ATT.Category							= {"ud_glock_caliber"}

ATT.DamageMaxMult						= 1.15
ATT.DamageMinMult						= 1.15
ATT.PenetrationMult						= 8 / 6
ATT.RecoilMult							= 1.25
ATT.RecoilSideMult						= 1.25
ATT.ReloadTimeMult						= 1.15
ATT.Mult_MalfunctionMeanMult			= 0.75
ATT.PhysBulletMuzzleVelocityOverride	= 400 / ARC9.HUToM
ATT.ClipSizeMult						= 0.9
ATT.ShellModelOverride					= "models/weapons/arccw/uc_shells/40sw.mdl"
ATT.ShellScaleOverride					= 1

ATT.ShootSoundOverride					= "weapons/arccw_ud/glock/fire_10.ogg"
ATT.ShootSoundSilencedOverride			= "weapons/arccw_ud/glock/fire_supp_10.ogg"
ATT.DistantShootSoundOverride			= "weapons/arccw_ud/glock/fire_dist_10.ogg"
ATT.DistantShootSoundSilencedOverride	= false

ARC9.LoadAttachment(ATT, "ud_glock_caliber_10auto")

ATT = {}

ATT.PrintName							= "GEN3 .22 LR Conversion"
ATT.PrintNameTrue						= "Glock .22 LR Conversion"
ATT.CompactName							= ".22 LR"
ATT.Icon								= Material("entities/att/acwatt_ud_glock_caliber.png", "mips smooth")
ATT.Description							= [[A plinking cartridge that is easy to handle but not very lethal.
Its form factor allows more rounds to be stuffed into magazines.]]
ATT.Category							= {"ud_glock_caliber"}


ATT.AmmoOverride = "plinking"
ATT.DamageMaxMult						= 0.4
ATT.DamageMinMult						= 0.4
ATT.PenetrationMult						= 0.1
ATT.RecoilMult							= 0.25
ATT.RPMMult								= 1.5
ATT.SpeedMultShooting					= 1.2
ATT.PhysBulletMuzzleVelocityOverride	= 370 / ARC9.HUToM
ATT.ClipSizeMult						= 1.2
ATT.ShellModelOverride					= "models/weapons/arccw/uc_shells/22lr.mdl"
ATT.ShellScaleOverride					= 1
ATT.ShellSoundsOverride					= ArcCW.TinyShellSoundsTable

ATT.ShootSoundOverride					= "weapons/arccw_ud/glock/fire_22.ogg"
ATT.ShootSoundSilencedOverride			= "weapons/arccw_ud/glock/fire_supp_22.ogg"
ATT.DistantShootSoundOverride			= "weapons/arccw_ud/glock/fire_dist_22.ogg"
ATT.DistantShootSoundSilencedOverride	= false

ARC9.LoadAttachment(ATT, "ud_glock_caliber_22lr")

ATT = {}

ATT.PrintName							= "GEN3 .40 S&W Conversion"
ATT.PrintNameTrue						= "Glock .40 S&W Conversion"
ATT.CompactName							= ".40 S&W"
ATT.Icon								= Material("entities/att/acwatt_ud_glock_caliber.png", "mips smooth")
ATT.Description							= [[Law-enforcement caliber with a slightly larger bullet and shorter case.
Retains damage over distance better than other calibers.]]
ATT.Category							= {"ud_glock_caliber"}

ATT.DamageMinMult						= 1.35
ATT.RangeMinMult						= 0.5
ATT.RecoilMult							= 1.15
ATT.PenetrationMult						= 8 / 6
ATT.PhysBulletMuzzleVelocityOverride	= 300 / ARC9.HUToM
ATT.ClipSizeMult						= 0.9
ATT.ShellModelOverride					= "models/weapons/arccw/uc_shells/40sw.mdl"
ATT.ShellScaleOverride					= 1

ATT.ShootSoundOverride					= "weapons/arccw_ud/glock/fire_40.ogg"
ATT.ShootSoundSilencedOverride			= "weapons/arccw_ud/glock/fire_supp_40.ogg"
ATT.DistantShootSoundOverride			= "weapons/arccw_ud/glock/fire_dist_40.ogg"
ATT.DistantShootSoundSilencedOverride	= false

ARC9.LoadAttachment(ATT, "ud_glock_caliber_40sw")

ATT = {}

ATT.PrintName							= "GEN3 .45 ACP Conversion"
ATT.PrintNameTrue						= "Glock .45 ACP Conversion"
ATT.CompactName							= ".45 ACP"
ATT.Icon								= Material("entities/att/acwatt_ud_glock_caliber.png", "mips smooth")
ATT.Description							= [[A venerable caliber with excellent close-range stopping power.
Because of the large bullet diameter, magazine capacity is significantly reduced.]]
ATT.Category							= {"ud_glock_caliber"}

ATT.DamageMaxMult						= 1.5
ATT.DamageMinMult						= 0.88
ATT.PenetrationMult						= 9 / 6
ATT.RangeMinMult						= 0.5
ATT.RecoilMult							= 1.5
ATT.RecoilSideMult						= 1.5
ATT.MalfunctionMeanMult					= 0.6
ATT.PhysBulletMuzzleVelocityOverride	= 320 / ARC9.HUToM
ATT.ClipSizeMult						= 0.76
ATT.RPMMult								= 0.7619

ATT.ShootSoundOverride					= "weapons/arccw_ud/glock/fire_45.ogg"
ATT.ShootSoundSilencedOverride			= "weapons/arccw_ud/glock/fire_supp_45.ogg"
ATT.DistantShootSoundOverride			= "weapons/arccw_ud/glock/fire_dist_45.ogg"
ATT.DistantShootSoundSilencedOverride	= false

ARC9.LoadAttachment(ATT, "ud_glock_caliber_45acp")

ATT = {}

ATT.PrintName							= "GEN3 .357 SIG Conversion"
ATT.PrintNameTrue						= "Glock .357 SIG Conversion"
ATT.CompactName							= ".357 SIG"
ATT.Icon								= Material("entities/att/acwatt_ud_glock_caliber.png", "mips smooth")
ATT.Description							= "A law-enforcement caliber well-known for its accuracy."
ATT.Category							= {"ud_glock_caliber"}

ATT.DamageMaxMult						= 1.1
ATT.SpreadMult							= 0.5
ATT.RecoilMult							= 1.15
ATT.PhysBulletMuzzleVelocityOverride	= 410 / ARC9.HUToM
ATT.ClipSizeMult						= 0.9
ATT.ShellModelOverride					= "models/weapons/arccw/uc_shells/357sig.mdl"
ATT.ShellScaleOverride					= 1

ATT.ShootSoundOverride					= "weapons/arccw_ud/glock/fire_357.ogg"
ATT.ShootSoundSilencedOverride			= "weapons/arccw_ud/glock/fire_supp_357.ogg"
ATT.DistantShootSoundOverride			= "weapons/arccw_ud/glock/fire_dist_357.ogg"
ATT.DistantShootSoundSilencedOverride	= false

ARC9.LoadAttachment(ATT, "ud_glock_caliber_357sig")

ATT = {}

ATT.PrintName							= "GEN3 .380 ACP Conversion"
ATT.PrintNameTrue						= "Glock .380 ACP Conversion"
ATT.CompactName							= ".380 ACP"
ATT.Icon								= Material("entities/att/acwatt_ud_glock_caliber.png", "mips smooth")
ATT.Description							= [[An old and smaller pistol caliber that is somewhat obsolete.
Has lower recoil and reduced effective range.]]
ATT.Category							= {"ud_glock_caliber"}

ATT.RangeMult							= 0.8
ATT.DamageMinMult						= 0.9
ATT.RecoilMult							= 0.65
ATT.PenetrationMult						= 3 / 6
ATT.PhysBulletMuzzleVelocityOverride	= 312 / ARC9.HUToM
ATT.ShellModelOverride					= "models/weapons/arccw/uc_shells/357sig.mdl"
ATT.ShellScaleOverride					= 1

ATT.ShootSoundOverride					= "weapons/arccw_ud/glock/fire_380.ogg"
ATT.ShootSoundSilencedOverride			= "weapons/arccw_ud/glock/fire_supp_380.ogg"
ATT.DistantShootSoundOverride			= "weapons/arccw_ud/glock/fire_dist_380.ogg"
ATT.DistantShootSoundSilencedOverride	= false

ARC9.LoadAttachment(ATT, "ud_glock_caliber_380acp")