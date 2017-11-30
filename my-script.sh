#!/bin/sh

#get pull from oid-back-channel-logout and build it
git clone https://github.com/piraveena/identity-inbound-auth-oauth.git
cd identity-inbound-auth-oauth
git checkout oidc-back-channel-logout
mvn clean install

git clone https://github.com/piraveena/product-is.git
cd product-is
git checkout feature-oidc-back-channel-logout
mvn clean install

echo Register http://playground.com/logout as back-channel-logout url via management console. 
