#!/bin/sh

# http://192.168.40.58:7320/group/control_panel/manage?p_p_id=com_liferay_portal_instances_web_portlet_PortalInstancesPortlet&p_p_lifecycle=0&p_p_state=maximized
COMPANY_ID="20097"
# http://192.168.40.58:7320/group/guest/~/control_panel/manage/-/site/settings
GROUP_ID="20121"

USER="test@liferay.com" 
PASS="test"
SERVER="192.168.40.58:7320"

################################
## tag
################################
curl http://$SERVER/api/jsonws/assettag/add-tag \
  -u $USER:$PASS \
  -d groupId=$GROUP_ID \
  -d name='barcelona'

curl http://$SERVER/api/jsonws/assettag/add-tag \
  -u $USER:$PASS \
  -d groupId=$GROUP_ID \
  -d name='atleticodemadrid'

curl http://$SERVER/api/jsonws/assettag/add-tag \
  -u $USER:$PASS \
  -d groupId=$GROUP_ID \
  -d name='realmadrid'

curl http://$SERVER/api/jsonws/assettag/add-tag \
  -u $USER:$PASS \
  -d groupId=$GROUP_ID \
  -d name='valencia'

################################
## web-content
################################
curl http://$SERVER/api/jsonws/journal.journalarticle/add-article \
  -u $USER:$PASS \
  -d groupId=$GROUP_ID \
  -d folderId=0 \
  -d titleMap='{"en_US":"atletico de madrid"}' \
  -d descriptionMap='{}' \
  -d content='<?xml version="1.0"?><root available-locales="en_US" default-locale="en_US"><dynamic-element name="content" type="text_area" index-type="text" instance-id="tdml"><dynamic-content language-id="en_US"><![CDATA[: atletico de madrid]]></dynamic-content></dynamic-element></root>' \
  -d ddmStructureKey='BASIC-WEB-CONTENT' \
  -d ddmTemplateKey='' \
  -d assetTagNames="atleticodemadrid"

curl http://$SERVER/api/jsonws/journal.journalarticle/add-article \
  -u $USER:$PASS \
  -d groupId=$GROUP_ID \
  -d folderId=0 \
  -d titleMap='{"en_US":"real madrid"}' \
  -d descriptionMap='{}' \
  -d content='<?xml version="1.0"?><root available-locales="en_US" default-locale="en_US"><dynamic-element name="content" type="text_area" index-type="text" instance-id="tdml"><dynamic-content language-id="en_US"><![CDATA[: real madrid]]></dynamic-content></dynamic-element></root>' \
  -d ddmStructureKey='BASIC-WEB-CONTENT' \
  -d ddmTemplateKey='' \
  -d assetTagNames="realmadrid"

curl http://$SERVER/api/jsonws/journal.journalarticle/add-article \
  -u $USER:$PASS \
  -d groupId=$GROUP_ID \
  -d folderId=0 \
  -d titleMap='{"en_US":"valencia"}' \
  -d descriptionMap='{}' \
  -d content='<?xml version="1.0"?><root available-locales="en_US" default-locale="en_US"><dynamic-element name="content" type="text_area" index-type="text" instance-id="tdml"><dynamic-content language-id="en_US"><![CDATA[: valencia]]></dynamic-content></dynamic-element></root>' \
  -d ddmStructureKey='BASIC-WEB-CONTENT' \
  -d ddmTemplateKey='' \
  -d assetTagNames="valencia"

curl http://$SERVER/api/jsonws/journal.journalarticle/add-article \
  -u $USER:$PASS \
  -d groupId=$GROUP_ID \
  -d folderId=0 \
  -d titleMap='{"en_US":"barcelona"}' \
  -d descriptionMap='{}' \
  -d content='<?xml version="1.0"?><root available-locales="en_US" default-locale="en_US"><dynamic-element name="content" type="text_area" index-type="text" instance-id="tdml"><dynamic-content language-id="en_US"><![CDATA[: barcelona]]></dynamic-content></dynamic-element></root>' \
  -d ddmStructureKey='BASIC-WEB-CONTENT' \
  -d ddmTemplateKey='' \
  -d assetTagNames="barcelona"

################################
## user
################################

curl http://$SERVER/api/jsonws/user/add-user \
  -u $USER:$PASS \
  -d companyId=$COMPANY_ID \
  -d autoPassword=false \
  -d password1=test \
  -d password2=test \
  -d autoScreenName=false \
  -d screenName="simeone" \
  -d emailAddress="diego.simeone@liferay.com" \
  -d facebookId=0 \
  -d openId= \
  -d locale= \
  -d firstName="diego" \
  -d middleName= \
  -d lastName="simeone" \
  -d prefixId=0 \
  -d suffixId=0 \
  -d male=true \
  -d birthdayMonth=8 \
  -d birthdayDay=21 \
  -d birthdayYear=1988 \
  -d jobTitle= \
  -d groupIds= \
  -d organizationIds= \
  -d roleIds= \
  -d userGroupIds= \
  -d sendEmail=false

curl http://$SERVER/api/jsonws/user/add-user \
  -u $USER:$PASS \
  -d companyId=$COMPANY_ID \
  -d autoPassword=false \
  -d password1=test \
  -d password2=test \
  -d autoScreenName=false \
  -d screenName="R10" \
  -d emailAddress="ronaldinho.gaucho@liferay.com" \
  -d facebookId=0 \
  -d openId= \
  -d locale= \
  -d firstName="ronaldinho" \
  -d middleName= \
  -d lastName="gaucho" \
  -d prefixId=0 \
  -d suffixId=0 \
  -d male=true \
  -d birthdayMonth=8 \
  -d birthdayDay=21 \
  -d birthdayYear=1988 \
  -d jobTitle= \
  -d groupIds= \
  -d organizationIds= \
  -d roleIds= \
  -d userGroupIds= \
  -d sendEmail=false

curl http://$SERVER/api/jsonws/user/add-user \
  -u $USER:$PASS \
  -d companyId=$COMPANY_ID \
  -d autoPassword=false \
  -d password1=test \
  -d password2=test \
  -d autoScreenName=false \
  -d screenName="villa" \
  -d emailAddress="david.villa@liferay.com" \
  -d facebookId=0 \
  -d openId= \
  -d locale= \
  -d firstName="david" \
  -d middleName= \
  -d lastName="villa" \
  -d prefixId=0 \
  -d suffixId=0 \
  -d male=true \
  -d birthdayMonth=8 \
  -d birthdayDay=21 \
  -d birthdayYear=1988 \
  -d jobTitle= \
  -d groupIds= \
  -d organizationIds= \
  -d roleIds= \
  -d userGroupIds= \
  -d sendEmail=false

curl http://$SERVER/api/jsonws/user/add-user \
  -u $USER:$PASS \
  -d companyId=$COMPANY_ID \
  -d autoPassword=false \
  -d password1=test \
  -d password2=test \
  -d autoScreenName=false \
  -d screenName="Zizu" \
  -d emailAddress="zinedine.zidane@liferay.com" \
  -d facebookId=0 \
  -d openId= \
  -d locale= \
  -d firstName="zinedine" \
  -d middleName= \
  -d lastName="zidane" \
  -d prefixId=0 \
  -d suffixId=0 \
  -d male=true \
  -d birthdayMonth=8 \
  -d birthdayDay=21 \
  -d birthdayYear=1988 \
  -d jobTitle= \
  -d groupIds= \
  -d organizationIds= \
  -d roleIds= \
  -d userGroupIds= \
  -d sendEmail=false

################################
##blog content
################################
#curl http://$SERVER/api/jsonws/blogs.blogsentry/add-entry \
#  -u $USER:$PASS \
#  -d title="title$i" \
#  -d subtitle="subtitle$i" \
#  -d urlTitle='' \
#  -d description="description$i" \
#  -d content="content$i" \
#  -d displayDateMonth=1 \
#  -d displayDateDay=1 \
#  -d displayDateYear=1 \
#  -d displayDateHour=1 \
#  -d displayDateMinute=1 \
#  -d allowPingbacks=false \
#  -d allowTrackbacks=false \
#  -d trackbacks="[]" \
#  -d coverImageCaption='' \
#  -d -coverImageImageSelector= \
#  -d -smallImageImageSelector=
