-- local SKILL_NAME = "Reflect"

function onTargetCreature_Reflect(cid, target)
	doCreatureAddStatus(cid, CREATURE_STATUS_REFLECT, nil, cid)
end

local combat = createCombatObject() setCombatCallback(combat, CALLBACK_PARAM_TARGETCREATURE, "onTargetCreature_Reflect")
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)
function onCastSpell(cid, var)
	doSendMagicEffect(getCreaturePosition(cid), EFFECT_BIG_MIRROR)
    return doCombat(cid, combat, var)
end
