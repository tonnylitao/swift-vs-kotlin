var playerInformation = (health: 10, energy: 20)

balance(&playerInformation.health, &playerInformation.energy)

// Error: conflicting access to properties of playerInformation