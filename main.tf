provider "ciscofdm" {
  api_url = "192.168.128.30"
  username = "admin"
  password = "Admin123"
  ssl_no_verify = true 
}

#resource "ciscofdm_dummy" "my-server" {
#  address = "1.2.3.4"
#}

#resource "ciscofdm_networkobject" "myobject" {
#  name = "GS-Terraform"
#  subtype = "HOST"
#  value = "2.2.2.3"
#}

#resource "ciscofdm_networkobjectgroup" "mygroup" {
#  name = "NetworkGroupGS"
#  objects {
#     netname = "any-ipv6"
#     type = "networkobject"
#  }
#  objects {
#     netname = "any-ipv4"
#     type = "networkobject"
#  }
#  type = "networkobjectgroup"
#}
#resource "ciscofdm_portobject" "GSPORT_4444" {
#  name = "GSPORT 4444-5000"
#  layer4 = "TCP"
#  port = "4444"
#}
#resource "ciscofdm_portobjectgroup" "myportobjectgroup" {
#  name = "GSPORTGROUP"
#  description = "My Port Group"
#  type = "portobjectgroup"
#  objects {
#    name = "FTP"
#    type = "tcpportobject"
#  }
#  objects {
#    name = "GTP_PORTS-2123"
#    type = "tcpportobject"
#  }
#}
resource "ciscofdm_accessrule" "myaccessrules" {
  name = "GSTERRAFORMRULE001"
  ruleaction = "PERMIT"  
  intrusionpolicy = {
    name = "Connectivity Over Security"
    type = "intrusionpolicy"
  }
}
