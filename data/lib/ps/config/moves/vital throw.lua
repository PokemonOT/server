MOVES["Vital Throw"] = {
    description = "Vital Throw deals damage and ignores changes to the Accuracy and Evasion stats.",
    makeContact = true,
    category = MOVE_CATEGORY.PHYSICAL,
    clientIconId = 12098,
    iconId = 0,
    dType = DAMAGE_TYPE_FIGHTING,
    functionName = "VitalThrow",
    type = SKILLS_TYPES.TARGET,
    requiredEnergy = 70,
    requiredLevel = 30,
    damage = 70,
    damageType = ELEMENT_FIGHT,
    effect = EFFECT_MULTIPLE_BLOW,
    projectile = PROJECTILE_ROCK,
    maxDistance = 5,
    cooldownTime = 11,
    cooldownStorage = 15194,
    ignoreEvasion = true,
    ignoreAccuracy = true
}