/obj/item/clothing/suit/combo/electricallsuit
	name = "Sneaking Suit"
	desc= "Surprisingly, the all-weather combat suit of the time of the introduction of Guantanamo Jail in 1975, has not lost its effectiveness. Sea colors mask the body well on wet ground, asphalt, or on urban terrain. The body and limbs are protected by a dense stitching of aramid fiber with bitumen impregnation, which protects the suit from freezing, but loses much in the competence of protection against laser weapons." //same
	icon = 'THETA/icons/mob/clothing/stealth_4.dmi'
	mob_overlay_icon = 'THETA/icons/mob/clothing/stealth_4.dmi' //this is worn icon too? Can i use it for some strange things?
	icon_state = "suit_i"
	item_state = "suit" //is this worn icon?
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	cold_protection = CHEST|GROIN|LEGS|ARMS
	max_heat_protection_temperature = FIRE_SUIT_MAX_TEMP_PROTECT
	heat_protection = CHEST|GROIN|LEGS|ARMS
	armor = list("melee" = 35, "bullet" = 55, "laser" = 5, "energy" = 30, "bomb" = 35, "bio" = 0, "rad" = 0, "fire" = 75, "acid" = 65)
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals, /obj/item/resonator, /obj/item/mining_scanner, /obj/item/t_scanner/adv_mining_scanner, /obj/item/gun/energy/kinetic_accelerator, /obj/item/pickaxe)
	resistance_flags = FIRE_PROOF