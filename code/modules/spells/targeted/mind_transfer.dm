/spell/targeted/mind_transfer
	name = "Mind Transfer"
	desc = "This spell allows the user to switch bodies with a target."
	feedback = "MT"
	school = "transmutation"
	charge_max = 600
	spell_flags = 0
	invocation = "GIN'YU CAPAN"
	invocation_type = SpI_WHISPER
	max_targets = 1
	range = 1
	level_max = list(Sp_TOTAL = 4, Sp_SPEED = 4, Sp_POWER = 2)
	cooldown_min = 200 //100 deciseconds reduction per rank
	compatible_mobs = list(/mob/living/carbon/human) //which types of mobs are affected by the spell. NOTE: change at your own risk
	cast_sound = 'sound/magic/MandSwap.ogg'

	// TODO: Update to new antagonist system.
	var/list/protected_roles = list("Wizard","Changeling","Cultist", "Vampire") //which roles are immune to the spell
	var/msg_wait = 500 //how long in deciseconds it waits before telling that body doesn't feel right or mind swap robbed of a spell
	amt_paralysis = 20 //how much the victim is paralysed for after the spell

	hud_state = "wiz_mindswap"

/spell/targeted/mind_transfer/cast(list/targets, mob/user)
	..()

	for(var/mob/living/target in targets)
		if(target.stat == DEAD)
			to_chat(user, "You didn't study necromancy back at the Space Wizard Federation academy.")
			continue

		if(!target.key || !target.mind)
			to_chat(user, "They appear to be catatonic. Not even magic can affect their vacant mind.")
			continue

		if(target.mind.special_role in protected_roles)
			to_chat(user, "Their mind is resisting your spell.")
			continue

		var/mob/living/victim = target//The target of the spell whos body will be transferred to.
		var/mob/caster = user//The wizard/whomever doing the body transferring.

		//MIND TRANSFER BEGIN

		var/mob/abstract/observer/ghost = victim.ghostize(0)
		LAZYADD(ghost.spell_list, victim.spell_list)	//If they have spells, transfer them. Now we basically have a backup mob.

		caster.mind.transfer_to(victim)
		for(var/spell/S in victim.spell_list)
			victim.remove_spell(S) //Doing it this way will allow the spell master to update accordingly and not cause bugs.

		for(var/spell/S in caster.spell_list)
			victim.add_spell(S) //Now they are inside the victim's body - this also generates the HUD
			caster.remove_spell(S)

		ghost.mind.transfer_to(caster)
		caster.key = ghost.key	//have to transfer the key since the mind was not active
		for(var/spell/S in ghost.spell_list)
			caster.add_spell(S)

		LAZYCLEARLIST(ghost.spell_list)

		//MIND TRANSFER END

		//Target is handled in ..(), so we handle the caster here
		caster.Paralyse(amt_paralysis)

		//After a certain amount of time the victim gets a message about being in a different body.
		spawn(msg_wait)
			to_chat(caster, "<span class='danger'>You feel woozy and lightheaded. Your body doesn't seem like your own.</span>")

/spell/targeted/mind_transfer/empower_spell()
	range++

	return "You have increased the range of [src]."
