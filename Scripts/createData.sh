#!/bin/sh

COMPANY_ID="20096"
GROUP_ID="20119"
USER="test@liferay.com" 
PASS="test"

################################
## user
################################
curl http://localhost:8080/api/jsonws/user/add-user \
  -u $USER:$PASS \
  -d companyId=$COMPANY_ID \
  -d autoPassword=false \
  -d password1=test \
  -d password2=test \
  -d autoScreenName=false \
  -d screenName="Ash" \
  -d emailAddress="ash@liferay.com" \
  -d facebookId=0 \
  -d openId= \
  -d locale= \
  -d firstName="Ash" \
  -d middleName= \
  -d lastName="Ketchum" \
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

curl http://localhost:8080/api/jsonws/user/add-user \
  -u $USER:$PASS \
  -d companyId=$COMPANY_ID \
  -d autoPassword=false \
  -d password1=test \
  -d password2=test \
  -d autoScreenName=false \
  -d screenName="Senna" \
  -d emailAddress="senna@liferay.com" \
  -d facebookId=0 \
  -d openId= \
  -d locale= \
  -d firstName="Ayrton" \
  -d middleName= \
  -d lastName="Senna" \
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
## tag
################################
curl http://localhost:8080/api/jsonws/assettag/add-tag \
  -u $USER:$PASS \
  -d groupId=$GROUP_ID \
  -d name='f1'

curl http://localhost:8080/api/jsonws/assettag/add-tag \
  -u $USER:$PASS \
  -d groupId=$GROUP_ID \
  -d name='pokemon'

################################
## display page template
################################
curl 'http://localhost:8080/group/guest/~/control_panel/manage?p_p_id=com_liferay_layout_admin_web_portlet_GroupPagesPortlet&p_p_lifecycle=1&p_p_state=maximized&p_p_mode=view&_com_liferay_layout_admin_web_portlet_GroupPagesPortlet_javax.portlet.action=%2Flayout%2Fadd_layout_page_template_entry&_com_liferay_layout_admin_web_portlet_GroupPagesPortlet_mvcRenderCommandName=%2Flayout%2Fedit_layout_page_template_entry&_com_liferay_layout_admin_web_portlet_GroupPagesPortlet_backURL=%2Fgroup%2Fguest%2F%7E%2Fcontrol_panel%2Fmanage%3Fp_p_id%3Dcom_liferay_layout_admin_web_portlet_GroupPagesPortlet%26p_p_lifecycle%3D0%26p_p_state%3Dmaximized%26p_p_mode%3Dview%26_com_liferay_layout_admin_web_portlet_GroupPagesPortlet_tabs1%3Ddisplay-page-templates%26_com_liferay_layout_admin_web_portlet_GroupPagesPortlet_privateLayout%3Dfalse%26_com_liferay_layout_admin_web_portlet_GroupPagesPortlet_displayStyle%3Dmiller-columns%26p_p_auth%3Du492CH65&_com_liferay_layout_admin_web_portlet_GroupPagesPortlet_type=1&p_auth=S6BFvJUc&p_p_auth=u492CH65' -H 'Sec-Fetch-Mode: cors' -H 'Sec-Fetch-Site: same-origin' -H 'Origin: http://localhost:8080' -H 'Accept-Encoding: gzip, deflate, br' -H 'x-csrf-token: S6BFvJUc' -H 'Accept-Language: en-US,en;q=0.9,pt-BR;q=0.8,pt;q=0.7' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36' -H 'Content-Type: multipart/form-data; boundary=----WebKitFormBoundaryAiEz6hpPkmAAzNDf' -H 'Accept: */*' -H 'Referer: http://localhost:8080/group/guest/~/control_panel/manage?p_p_id=com_liferay_layout_admin_web_portlet_GroupPagesPortlet&p_p_lifecycle=0&p_p_state=maximized&p_p_mode=view&_com_liferay_layout_admin_web_portlet_GroupPagesPortlet_tabs1=display-page-templates&_com_liferay_layout_admin_web_portlet_GroupPagesPortlet_privateLayout=false&_com_liferay_layout_admin_web_portlet_GroupPagesPortlet_displayStyle=miller-columns&p_p_auth=u492CH65' -H 'Cookie: COOKIE_SUPPORT=true; LFR_SESSION_STATE_37290=1564659578952; LFR_SESSION_STATE_20103=1564660015460; LFR_SESSION_STATE_20128=1564660660905; LFR_SESSION_STATE_37237=1564661579254; LFR_SESSION_STATE_37326=1564996108792; LFR_SESSION_STATE_37343=1565015401122; LFR_SESSION_STATE_37607=expired; LFR_SESSION_STATE_37347=expired; LFR_SESSION_STATE_37349=1565692931106; LFR_SESSION_STATE_37382=1565893176325; LFR_SESSION_STATE_37452=1565893744367; LFR_SESSION_STATE_20101=1565968606737; LFR_SESSION_STATE_37323=1566201701273; LFR_SESSION_STATE_37353=expired; LFR_SESSION_STATE_37901=1566305280013; LFR_SESSION_STATE_37373=1566468113262; LFR_SESSION_STATE_37401=1566556967095; LFR_SESSION_STATE_37356=expired; LFR_SESSION_STATE_37346=expired; LFR_SESSION_STATE_37363=1566980977058; LFR_SESSION_STATE_37354=1566989282770; LFR_SESSION_STATE_37359=1567069117281; GUEST_LANGUAGE_ID=en_US; ac_client_user_id=c2343d10-ca3d-11e9-9a53-63accebbc6cd; COMPANY_ID='$COMPANY_ID'; LFR_SESSION_STATE_37411=1567070247575; LFR_SESSION_STATE_37344=1567149479395; LFR_SESSION_STATE_37253=1567412145363; LFR_SESSION_STATE_37227=1567495519280; JSESSIONID=FAC5D49DCE0E3E9AA4D1C78B8697F043; ID=4877674c522f7448535375367a48415359444f5245773d3d; LFR_SESSION_STATE_20100=1567495883636; LFR_SESSION_STATE_20125=1567496521185' -H 'Connection: keep-alive' --data-binary $'------WebKitFormBoundaryAiEz6hpPkmAAzNDf\r\nContent-Disposition: form-data; name="_com_liferay_layout_admin_web_portlet_GroupPagesPortlet_name"\r\n\r\ndpt\r\n------WebKitFormBoundaryAiEz6hpPkmAAzNDf--\r\n' --compressed

curl 'http://localhost:8080/group/guest/~/control_panel/manage?p_p_id=com_liferay_layout_admin_web_portlet_GroupPagesPortlet&p_p_lifecycle=0&p_p_state=maximized&p_p_mode=view&_com_liferay_layout_admin_web_portlet_GroupPagesPortlet_tabs1=display-page-templates&_com_liferay_layout_admin_web_portlet_GroupPagesPortlet_privateLayout=false&_com_liferay_layout_admin_web_portlet_GroupPagesPortlet_displayStyle=miller-columns&p_p_auth=u492CH65' -H 'Sec-Fetch-Mode: cors' -H 'Sec-Fetch-Site: same-origin' -H 'Accept-Encoding: gzip, deflate, br' -H 'Accept-Language: en-US,en;q=0.9,pt-BR;q=0.8,pt;q=0.7' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36' -H 'Accept: */*' -H 'Referer: http://localhost:8080/group/guest/~/control_panel/manage?p_p_id=com_liferay_layout_admin_web_portlet_GroupPagesPortlet&p_p_lifecycle=0&p_p_state=maximized&p_p_mode=view&_com_liferay_layout_admin_web_portlet_GroupPagesPortlet_tabs1=display-page-templates&_com_liferay_layout_admin_web_portlet_GroupPagesPortlet_privateLayout=false&_com_liferay_layout_admin_web_portlet_GroupPagesPortlet_displayStyle=miller-columns&p_p_auth=u492CH65' -H 'X-Requested-With: XMLHttpRequest' -H 'Cookie: COOKIE_SUPPORT=true; LFR_SESSION_STATE_37290=1564659578952; LFR_SESSION_STATE_20103=1564660015460; LFR_SESSION_STATE_20128=1564660660905; LFR_SESSION_STATE_37237=1564661579254; LFR_SESSION_STATE_37326=1564996108792; LFR_SESSION_STATE_37343=1565015401122; LFR_SESSION_STATE_37607=expired; LFR_SESSION_STATE_37347=expired; LFR_SESSION_STATE_37349=1565692931106; LFR_SESSION_STATE_37382=1565893176325; LFR_SESSION_STATE_37452=1565893744367; LFR_SESSION_STATE_20101=1565968606737; LFR_SESSION_STATE_37323=1566201701273; LFR_SESSION_STATE_37353=expired; LFR_SESSION_STATE_37901=1566305280013; LFR_SESSION_STATE_37373=1566468113262; LFR_SESSION_STATE_37401=1566556967095; LFR_SESSION_STATE_37356=expired; LFR_SESSION_STATE_37346=expired; LFR_SESSION_STATE_37363=1566980977058; LFR_SESSION_STATE_37354=1566989282770; LFR_SESSION_STATE_37359=1567069117281; GUEST_LANGUAGE_ID=en_US; ac_client_user_id=c2343d10-ca3d-11e9-9a53-63accebbc6cd; COMPANY_ID='$COMPANY_ID'; LFR_SESSION_STATE_37411=1567070247575; LFR_SESSION_STATE_37344=1567149479395; LFR_SESSION_STATE_37253=1567412145363; LFR_SESSION_STATE_37227=1567495519280; JSESSIONID=FAC5D49DCE0E3E9AA4D1C78B8697F043; ID=4877674c522f7448535375367a48415359444f5245773d3d; LFR_SESSION_STATE_20100=1567495883636; LFR_SESSION_STATE_20125=1567496820823' -H 'Connection: keep-alive' -H 'X-PJAX: true' --compressed

################################
## web content
################################
curl http://localhost:8080/api/jsonws/journal.journalarticle/add-article \
  -u manoel.cyreno@liferay.com:test \
  -d groupId=20119 \
  -d folderId=0 \
  -d titleMap='{"en_US":"charmander"}' \
  -d descriptionMap='{}' \
  -d content='<?xml version="1.0"?><root available-locales="en_US" default-locale="en_US"><dynamic-element name="content" type="text_area" index-type="text" instance-id="tdml"><dynamic-content language-id="en_US"><![CDATA[fire]]></dynamic-content></dynamic-element></root>' \
  -d ddmStructureKey='BASIC-WEB-CONTENT' \
  -d ddmTemplateKey='BASIC-WEB-CONTENT' \
  -d assetTagNames="pokemon"
  -d defaultDisplayPageNameContainer="dpt"

curl 'http://localhost:8080/group/guest/~/control_panel/manage?p_p_id=com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet&p_p_lifecycle=1&p_p_state=pop_up&_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_javax.portlet.action=updateRolePermissions&_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_mvcPath=%2Fedit_permissions.jsp&_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_cur=0&_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_delta=0&_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_returnToFullPageURL=&_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_portletConfiguration=true&_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_portletResource=com_liferay_journal_web_portlet_JournalPortlet&_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_modelResource=com.liferay.journal.model.JournalArticle&_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_modelResourceDescription=pikachu&_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_resourceGroupId=20119&_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_resourcePrimKey=37307&_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_roleTypes=&_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_bodyCssClass=dialog-iframe-popup%20dialog-with-footer' -H 'Sec-Fetch-Mode: cors' -H 'Sec-Fetch-Site: same-origin' -H 'Origin: http://localhost:8080' -H 'Accept-Encoding: gzip, deflate, br' -H 'Accept-Language: en-US,en;q=0.9,pt-BR;q=0.8,pt;q=0.7' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36' -H 'Content-Type: multipart/form-data; boundary=----WebKitFormBoundaryXmBAVkSng14Lgqxs' -H 'Accept: */*' -H 'Referer: http://localhost:8080/group/guest/~/control_panel/manage?p_p_id=com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet&p_p_lifecycle=0&p_p_state=pop_up&_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_mvcPath=%2Fedit_permissions.jsp&_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_portletConfiguration=true&_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_portletResource=com_liferay_journal_web_portlet_JournalPortlet&_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_modelResource=com.liferay.journal.model.JournalArticle&_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_modelResourceDescription=pikachu&_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_resourceGroupId=20119&_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_resourcePrimKey=37307&_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_bodyCssClass=dialog-iframe-popup%20dialog-with-footer' -H 'X-Requested-With: XMLHttpRequest' -H 'Cookie: COOKIE_SUPPORT=true; LFR_SESSION_STATE_37290=1564659578952; LFR_SESSION_STATE_20103=1564660015460; LFR_SESSION_STATE_20128=1564660660905; LFR_SESSION_STATE_37237=1564661579254; LFR_SESSION_STATE_37326=1564996108792; LFR_SESSION_STATE_37343=1565015401122; LFR_SESSION_STATE_37607=expired; LFR_SESSION_STATE_37347=expired; LFR_SESSION_STATE_37349=1565692931106; LFR_SESSION_STATE_37382=1565893176325; LFR_SESSION_STATE_37452=1565893744367; LFR_SESSION_STATE_20101=1565968606737; LFR_SESSION_STATE_37323=1566201701273; LFR_SESSION_STATE_37353=expired; LFR_SESSION_STATE_37901=1566305280013; LFR_SESSION_STATE_37373=1566468113262; LFR_SESSION_STATE_37401=1566556967095; LFR_SESSION_STATE_37356=expired; LFR_SESSION_STATE_37346=expired; LFR_SESSION_STATE_37363=1566980977058; LFR_SESSION_STATE_37354=1566989282770; LFR_SESSION_STATE_37359=1567069117281; GUEST_LANGUAGE_ID=en_US; ac_client_user_id=c2343d10-ca3d-11e9-9a53-63accebbc6cd; COMPANY_ID=20096; LFR_SESSION_STATE_37411=1567070247575; LFR_SESSION_STATE_37344=1567149479395; LFR_SESSION_STATE_37253=1567412145363; LFR_SESSION_STATE_37227=1567495519280; JSESSIONID=FAC5D49DCE0E3E9AA4D1C78B8697F043; ID=4877674c522f7448535375367a48415359444f5245773d3d; LFR_SESSION_STATE_20100=1567495883636; LFR_SESSION_STATE_20125=1567497450006' -H 'Connection: keep-alive' -H 'X-PJAX: true' --data-binary $'------WebKitFormBoundaryXmBAVkSng14Lgqxs\r\nContent-Disposition: form-data; name="_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_formDate"\r\n\r\n1567497449654\r\n------WebKitFormBoundaryXmBAVkSng14Lgqxs\r\nContent-Disposition: form-data; name="_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_resourceId"\r\n\r\n0\r\n------WebKitFormBoundaryXmBAVkSng14Lgqxs\r\nContent-Disposition: form-data; name="_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_20104_ACTION_VIEW"\r\n\r\non\r\n------WebKitFormBoundaryXmBAVkSng14Lgqxs\r\nContent-Disposition: form-data; name="_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_20104_ACTION_ADD_DISCUSSION"\r\n\r\non\r\n------WebKitFormBoundaryXmBAVkSng14Lgqxs\r\nContent-Disposition: form-data; name="_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_20105_ACTION_UPDATE_DISCUSSION"\r\n\r\non\r\n------WebKitFormBoundaryXmBAVkSng14Lgqxs\r\nContent-Disposition: form-data; name="_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_20105_ACTION_DELETE"\r\n\r\non\r\n------WebKitFormBoundaryXmBAVkSng14Lgqxs\r\nContent-Disposition: form-data; name="_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_20105_ACTION_PERMISSIONS"\r\n\r\non\r\n------WebKitFormBoundaryXmBAVkSng14Lgqxs\r\nContent-Disposition: form-data; name="_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_20105_ACTION_EXPIRE"\r\n\r\non\r\n------WebKitFormBoundaryXmBAVkSng14Lgqxs\r\nContent-Disposition: form-data; name="_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_20105_ACTION_DELETE_DISCUSSION"\r\n\r\non\r\n------WebKitFormBoundaryXmBAVkSng14Lgqxs\r\nContent-Disposition: form-data; name="_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_20105_ACTION_UPDATE"\r\n\r\non\r\n------WebKitFormBoundaryXmBAVkSng14Lgqxs\r\nContent-Disposition: form-data; name="_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_20105_ACTION_SUBSCRIBE"\r\n\r\non\r\n------WebKitFormBoundaryXmBAVkSng14Lgqxs\r\nContent-Disposition: form-data; name="_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_20105_ACTION_VIEW"\r\n\r\non\r\n------WebKitFormBoundaryXmBAVkSng14Lgqxs\r\nContent-Disposition: form-data; name="_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_20105_ACTION_ADD_DISCUSSION"\r\n\r\non\r\n------WebKitFormBoundaryXmBAVkSng14Lgqxs\r\nContent-Disposition: form-data; name="_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_20112_ACTION_VIEW"\r\n\r\non\r\n------WebKitFormBoundaryXmBAVkSng14Lgqxs\r\nContent-Disposition: form-data; name="_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_20112_ACTION_ADD_DISCUSSION"\r\n\r\non\r\n------WebKitFormBoundaryXmBAVkSng14Lgqxs\r\nContent-Disposition: form-data; name="_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_rolesSearchContainerPrimaryKeys"\r\n\r\n20103,20104,20105,27321,20106,27318,20112,20107\r\n------WebKitFormBoundaryXmBAVkSng14Lgqxs\r\nContent-Disposition: form-data; name="p_auth"\r\n\r\nS6BFvJUc\r\n------WebKitFormBoundaryXmBAVkSng14Lgqxs\r\nContent-Disposition: form-data; name="_com_liferay_portlet_configuration_web_portlet_PortletConfigurationPortlet_saveButton"\r\n\r\n\r\n------WebKitFormBoundaryXmBAVkSng14Lgqxs--\r\n' --compressed

{"DDMStructureKey":"BASIC-WEB-CONTENT","DDMTemplateKey":"BASIC-WEB-CONTENT","articleId":"37326","classNameId":"0","classPK":"0","companyId":"20096","content":"<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n\t<dynamic-element name=\"content\" type=\"text_area\" index-type=\"text\" instance-id=\"tdml\">\n\t\t<dynamic-content language-id=\"en_US\"><![CDATA[fire]]><\/dynamic-content>\n\t<\/dynamic-element>\n<\/root>","createDate":1567497283968,"defaultLanguageId":"en_US","displayDate":1567497240000,"expirationDate":null,"folderId":"0","groupId":"20119","id":"37327","indexable":true,"lastPublishDate":null,"layoutUuid":"","modifiedDate":1567497283989,"mvccVersion":"1","resourcePrimKey":"37328","reviewDate":null,"smallImage":false,"smallImageId":"37330","smallImageURL":"","status":0,"statusByUserId":"20125","statusByUserName":"Manoel Cyreno","statusDate":1567497283989,"treePath":"\/","urlTitle":"charmander","userId":"20125","userName":"Manoel Cyreno","uuid":"0b8fa077-42c1-0bda-8787-22b1c389ca7f","version":1.0}%                            ➜  ~
