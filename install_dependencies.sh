#! /bin/bash

#brew install gopass

#brew install jq

#brew install tfenv

#brew install awscli

#brew install bash

#brew install localstack

#brew install kubectl

#brew install aws-iam-authenticator

echo "___________________________________________________"
echo -e "\ngopass version            $(gopass --version)"
echo -e "\njq version                $(jq --version)"
echo -e "\ntfenv version             $(tfenv --version)"
echo -e "\nawscli version            $(aws --version)"
echo -e "\nbash version              $(bash --version)"
echo -e "\nlocalstack ver            $(localstack -v)"
echo -e "\nkubectl version           $(kubectl version --client)"
echo -e "\naws-iam-authenticator ver $(aws-iam-authenticator version)"
echo "___________________________________________________"

echo "enter your ocn username"
read username
cd;
samlFile=".samplesaml2aws";
touch $samlFile;

echo "[default]
app_id               =
url                  = https://adfs.ottogroup.com
username             = $username
provider             = ADFS2
mfa                  = Authenticator
skip_verify          = false
timeout              = 0
aws_urn              = urn:amazon:webservices
aws_session_duration = 3600
aws_profile          =
resource_id          =
subdomain            =
role_arn             =
region               =
http_attempts_count  =
http_retry_delay     =" > $samlFile

echo -e "saml2aws config is done with below config\n"
cat $samlFile;
YELLOW='\033[1;33m'
NC='\033[0m'
echo -e "${YELLOW}"
echo "1. install docker dashboard"
echo "2. upgrade java to java 13"
echo "3. download saml2aws from https://github.com/otto-ec/logistics_saml2aws_patched/releases"
echo -e "${NC}"
