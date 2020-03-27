/obj/item/clothing/suit/combo
	name = "Combosuit"
	desc = "If you see it, you shit bricks. (Technical item, you shoudn't see it. If you see it, tell coders, pls)"
	var/suit_elements = list()
	var/elements_typepaths = list()

/obj/item/clothing/suit/combo/Initialize()
	. = ..()
	create_elements()

/obj/item/clothing/suit/combo/proc/create_elements()
	for(var/I in elements_typepaths)
		var/obj/Pisos = new I
		Pisos.loc = src
		ADD_TRAIT(Pisos,TRAIT_NODROP, "part of combosuit")
		suit_elements += Pisos //this is pisoscode

/obj/item/clothing/suit/combo/proc/wear_elements(var/mob/living/carbon/human/W , var/FORCE = FALSE) //Gargule's shitcode.Improve this, if you can
	var/slot
	var/slotd
	var/needed_slots = list()
	for(var/obj/item/I in suit_elements)
		needed_slots += slotbit2slotdefine(I.slot_flags)
	for(var/S in needed_slots)
		var/obj/item/Fuck = W.get_item_by_slot(S)
		if(Fuck)
			if(FORCE)
				W.dropItemToGround(Fuck)
			else
				to_chat(W, "<span class='notice'>You can't retract elements. Something blocking path.</span>")
				return FALSE

	for(var/obj/item/I in suit_elements)
		slot = I.slot_flags
		if(slot)
			slotd = slotbit2slotdefine(slot)
			W.equip_to_slot(I, slotd, 1)
		else
			W.equip_to_appropriate_slot(I)

/obj/item/clothing/suit/combo/proc/unwear_elements(var/mob/living/carbon/human/W)
	for(var/obj/item/I in suit_elements)
		W.dropItemToGround(I)
		I.loc = src
