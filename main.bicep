targetScope = 'subscription'

param resourceGroupName string = 'testRG'
param resourceGroupLocation string = 'westeurope'
param pillar string = 'M Cloud'
param usage string = 'Learn'
param resourceTags object = {
  Pillar: pillar
  Usage: usage
}

resource rg 'Microsoft.Resources/resourceGroups@2021-01-01' = {
  name: resourceGroupName
  location: resourceGroupLocation
  tags: resourceTags
}
