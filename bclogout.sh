#!/bin/sh

mkdir bclogout
cd bclogout

git clone https://github.com/wso2-extensions/identity-inbound-auth-oauth.git
cd identity-inbound-auth-oauth
git checkout feature-oidc-backchannel-logout
mvn clean install -Dmaven.test.skip=true

cd -

git clone https://github.com/piraveena/product-is.git
cd product-is
git checkout oidc-back-channel-logout
mvn clean install -Dmaven.test.skip=true 
