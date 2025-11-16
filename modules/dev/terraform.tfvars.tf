locals {
  rg_map = {
    rg1 = {
      rg_name  = "Dev-RG-01"
      location = "East US"
    }
  }
  st_new = {
    st1 = {
      st_name              = "devstorageacct016786565875"
      rg_name              = "Dev-RG-01"
      location             = "East US"
      
    }
  }
  acr_name = {
    acr1 = {
      acr_name             = "manacr"
      rg_name              = "Dev-RG-01"
      location             = "East US"
  }
  
}
aks_new = {
  aks1 = {
    aks_name = "man-aks"
    location = "East US"
    rg_name  = "Dev-RG-01"
    
  }
}
}