local SKILL_NAME = "Phantom Force"
local INTERVAL = 2000
local PROJECTILE = getPokemonSkillProjectile(SKILL_NAME)

function onTargetCreature_PhantomForce(cid, target)
    local cidPos, targetPos = getCreaturePosition(cid), getCreaturePosition(target)
    if (getSameFloor(cidPos, targetPos)) then
        local pos = getPositionAdjacent(cid, targetPos, false)
        if (pos) then
            doSendDistanceShoot(getSkyPosition(pos), pos, PROJECTILE)
            doTeleportThing(cid, pos, false)
            doSkillDamage(cid, target, SKILL_NAME)
        end
    end
end

local combat = createCombatObject() setCombatCallback(combat, CALLBACK_PARAM_TARGETCREATURE, "onTargetCreature_PhantomForce")
local condition = createConditionObject(CONDITION_INVISIBLE, INTERVAL)

local function doSpell(cid)
    if (isCreature(cid) and hasTarget(cid)) then
        doCombat(cid, combat, numberToVariant(getCreatureTarget(cid)))
    end
end

function onCastSpell(cid, var)
    doSendMagicEffect(getCreaturePosition(cid), getPokemonSkillEffect(SKILL_NAME))
    doAddCondition(cid, condition)
    addEvent(doSpell, INTERVAL, cid)
    return true
end
