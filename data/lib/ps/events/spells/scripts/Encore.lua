local SKILL_NAME = "Encore"
local SKILL_PROJECTILE = getPokemonSkillProjectile(SKILL_NAME)
local SKILL_EFFECT = getPokemonSkillEffect(SKILL_NAME)

function onTargetCreature_Encore(cid, target)
	local cidPos, targetPos = getCreaturePosition(cid), getCreaturePosition(target)
	doSendDistanceShoot(cidPos, targetPos, SKILL_PROJECTILE)
	doSendMagicEffect(targetPos, SKILL_EFFECT)
	doSendMagicEffect(cidPos, SKILL_EFFECT)
	doCreatureAddStatus(target, CREATURE_STATUS_ENCORE, nil, cid)
end

local combat = createCombatObject() setCombatCallback(combat, CALLBACK_PARAM_TARGETCREATURE, "onTargetCreature_Encore")
function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
