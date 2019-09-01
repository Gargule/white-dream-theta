/obj/item/clothing/suit/combo/electricallsuit
	name = "idk" //ask Electricall about name for this shit
	desc= "idk" //same
	icon = 'THETA/icons/mob/clothing/stealth_4.dmi'
	mob_overlay_icon = 'THETA/icons/mob/clothing/stealth_4.dmi' //this is worn icon too?
	icon_state = "suit_i"
	item_state = "suit" //is this worn icon?
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	cold_protection = CHEST|GROIN|LEGS|ARMS
	max_heat_protection_temperature = FIRE_SUIT_MAX_TEMP_PROTECT
	heat_protection = CHEST|GROIN|LEGS|ARMS
	armor = list("melee" = 30, "bullet" = 10, "laser" = 10, "energy" = 20, "bomb" = 50, "bio" = 100, "rad" = 50, "fire" = 50, "acid" = 50)
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals, /obj/item/resonator, /obj/item/mining_scanner, /obj/item/t_scanner/adv_mining_scanner, /obj/item/gun/energy/kinetic_accelerator, /obj/item/pickaxe)
	resistance_flags = FIRE_PROOF