local SKILL_NAME = "Mirror Shot"

function onTargetCreature_MirrorShot(cid, target)
	doSkillDamage(cid, target, SKILL_NAME)
    if (not isCreature(target)) then return end -- Defeated
	if (not doPokemonSpecialAbilityCheck(target, POKEMON_SPECIAL_ABILITY_IDS.SHIELD_DUST, nil) and getRandom(0, 100) <=
            (doPokemonSpecialAbilityCheck(cid, POKEMON_SPECIAL_ABILITY_IDS.SERENA_GRACE, nil) and 60 or 30)) then
		doCreatureAddStatus(target, CREATURE_STATUS_LOWACCURACY, nil, cid)
	end
end

local combat = createCombatObject() setCombatCallback(combat, CALLBACK_PARAM_TARGETCREATURE, "onTargetCreature_MirrorShot")
function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
