/obj/item/weapon/reagent_containers/food/snacks/meat
	name = "meat"
	desc = "A slab of meat."
	icon_state = "meat"
	health = 180
	filling_color = "#FF1C1C"
	center_of_mass = list("x"=16, "y"=14)
	bitesize = 3
	preloaded = list("protein" = 9)
	matter = list(MATERIAL_BIOMATTER = 20)

/obj/item/weapon/reagent_containers/food/snacks/meat/attackby(obj/item/I, mob/user)
	if(QUALITY_CUTTING in I.tool_qualities)
		if(I.use_tool(user, src, WORKTIME_NORMAL, QUALITY_CUTTING, FAILCHANCE_ZERO, required_stat = STAT_BIO))
			to_chat(user, SPAN_NOTICE("You cut the meat into thin strips."))
			new /obj/item/weapon/reagent_containers/food/snacks/rawcutlet(src)
			new /obj/item/weapon/reagent_containers/food/snacks/rawcutlet(src)
			new /obj/item/weapon/reagent_containers/food/snacks/rawcutlet(src)
			qdel(src)
	else
		..()

/obj/item/weapon/reagent_containers/food/snacks/meat/syntiflesh
	name = "synthetic meat"
	desc = "A synthetic slab of flesh."

// Seperate definitions because some food likes to know if it's human.
// TODO: rewrite kitchen code to check a var on the meat item so we can remove
// all these sybtypes.
/obj/item/weapon/reagent_containers/food/snacks/meat/human
/obj/item/weapon/reagent_containers/food/snacks/meat/monkey
	//same as plain meat

/obj/item/weapon/reagent_containers/food/snacks/meat/corgi
	name = "Corgi meat"
	desc = "Tastes like... well, you know."
