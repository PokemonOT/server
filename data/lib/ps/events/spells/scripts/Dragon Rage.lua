local SKILL_NAME = "Dragon Rage"

function onTargetCreature_DragonRage(cid, target)
	doSkillDamage(cid, target, SKILL_NAME)
end

local combat = createCombatObject() setCombatCallback(combat, CALLBACK_PARAM_TARGETCREATURE, "onTargetCreature_DragonRage")
function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
