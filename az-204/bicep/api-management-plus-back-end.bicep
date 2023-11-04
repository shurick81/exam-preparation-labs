param location string = resourceGroup().location
param tenantId string = subscription().tenantId

resource appServicePlan 'Microsoft.Web/serverfarms@2022-09-01' = {
  name: '00'
  location: location
  sku: {
    name: 'F1'
  }
}

resource webApp 'Microsoft.Web/sites@2022-09-01' = {
  name: 'api-management-plus-back-end-00'
  kind: 'app'
  location: location
  properties: {
    httpsOnly: true
    serverFarmId: appServicePlan.id
  }
}

resource apiManagementService 'Microsoft.ApiManagement/service@2022-08-01' = {
  name: 'a00'
  location: location
  sku: {
    name: 'Consumption'
    capacity: 0
  }
  properties: {
    publisherEmail: 'alexander@sapozhkov.net'
    publisherName: 'Aleks'
  }
  identity: {
    type: 'systemAssigned'
  }
}

resource kv 'Microsoft.KeyVault/vaults@2022-07-01' = {
  name: 'a00'
  location: location
  properties: {
    tenantId: tenantId
    enableSoftDelete: false
    accessPolicies: [
      {
        objectId: apiManagementService.identity.principalId
        tenantId: tenantId
        permissions: {
          secrets: ['list','get']
          certificates: ['list','get']
        }
      }
    ]
    sku: {
      name: 'standard'
      family: 'A'
    }
  }
}
