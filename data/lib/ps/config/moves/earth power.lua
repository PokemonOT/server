MOVES["Earth Power"] = {
    description = "Earth Power deals damage and has a 10% chance of lowering the target's Special Defense by one stage.",
    makeJump = true,
    category = MOVE_CATEGORY.SPECIAL,
    clientIconId = 12080,
    iconId = 0,
    dType = DAMAGE_TYPE_GROUND,
    functionName = "EarthPower",
    type = SKILLS_TYPES.AREA,
    requiredEnergy = 100,
    requiredLevel = 45,
    damage = 9,
    damageType = ELEMENT_GROUND,
    effect = EFFECT_ROCK_EMERGE,
    projectile = nil,
    areaEffect = EFFECT_SAND_EXPLOSION,
    areaName = "bigArea",
    area = bigArea,
    cooldownTime = 21,
    cooldownStorage = 15176
}