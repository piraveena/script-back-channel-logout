#!/bin/sh
mkdir bclogout
cd bclogout

git clone https://github.com/wso2-extensions/identity-inbound-auth-oauth.git
cd identity-inbound-auth-oauth
git checkout origin/feature-oidc-back-channel-logout
mvn clean install -Dmaven.test.skip=true

cd -

git clone https://github.com/wso2/product-is.git
cd product-is
git checkout origin/feature-oidc-back-channel-logout
mvn clean install -Dmaven.test.skip=true

echo Register http://playground2/logout as back-channel-logout url via management console. 
