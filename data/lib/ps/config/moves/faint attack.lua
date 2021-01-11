MOVES["Faint Attack"] = {
    description = "Faint Attack deals damage and ignores changes to the Accuracy and Evasion stats.",
    ignoreEvasion = true,
    makeContact = true,
    category = MOVE_CATEGORY.PHYSICAL,
    clientIconId = 16672,
    iconId = 0,
    dType = DAMAGE_TYPE_DARK,
    functionName = "FaintAttack",
    type = SKILLS_TYPES.TARGET,
    requiredEnergy = 60,
    requiredLevel = 15,
    damage = 60,
    damageType = ELEMENT_DARK,
    effect = EFFECT_PURPLE_SCRATCH,
    projectile = PROJECTILE_GRAVEL,
    maxDistance = 6,
    cooldownTime = 9,
    cooldownStorage = 15302
}