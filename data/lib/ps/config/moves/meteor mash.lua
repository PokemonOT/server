MOVES["Meteor Mash"] = {
    description = "Meteor Mash deals damage and has a 20% chance of raising the user's Attack by one stage.",
    makeContact = true,
    makePunch = true,
    category = MOVE_CATEGORY.PHYSICAL,
    clientIconId = 11795,
    iconId = 13421,
    dType = DAMAGE_TYPE_STEEL,
    functionName = "MeteorMash",
    type = SKILLS_TYPES.AREA,
    requiredEnergy = 100,
    requiredLevel = 35,
    damage = 90,
    damageType = ELEMENT_STEEL,
    effect = EFFECT_PUNCH,
    areaEffect = EFFECT_CONFUSE_STARS,
    projectile = PROJECTILE_STARS,
    areaName = "bigArea",
    area = bigArea,
    cooldownTime = 23,
    cooldownStorage = 15104
}