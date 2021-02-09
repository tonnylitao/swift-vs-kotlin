if (!component.isSyncing &&
    !hasAnyKotlinRuntimeInScope(module)
) {
    createKotlinNotConfiguredPanel(module)
}
