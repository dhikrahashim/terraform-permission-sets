#import {
#    id = "d-9067e104b3/b4a86468-f041-704b-0684-4e92efbb652b"
#    to = aws_identitystore_user.sagerx
#}


resource "aws_identitystore_user" "sagerx" {
    identity_store_id   =  "d-9067e104b3"
    display_name = "developer ro"
    user_name    = "developer-ro"
    name {
        given_name  = "developer"
        family_name = "ro"
    }
    emails {
        value = "hashimvayalar@gmail.com"
    }
}
/*
import {
  to = aws_identitystore_group.this
  id = "d-9067e104b3/d4a8c498-d0d1-7027-7d81-79be1d8cbf45"
}
*/
resource "aws_identitystore_group" "this" {
  display_name      = "sagerx-group"
  identity_store_id = "d-9067e104b3"
}
/*
import {
  to = aws_ssoadmin_permission_set.example
  id = "arn:aws:sso:::permissionSet/ssoins-7223c4513e5232c0/ps-2f06d6f84df0d451,arn:aws:sso:::instance/ssoins-7223c4513e5232c0"
}
*/

data "aws_ssoadmin_instances" "example" {}

resource "aws_ssoadmin_permission_set" "example" {
  name             = "ReadOnlyAccess"
  instance_arn     = "arn:aws:sso:::instance/ssoins-7223c4513e5232c0"
  session_duration = "PT1H"
}