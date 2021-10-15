#!/bin/sh

# http://192.168.40.58:7320/group/control_panel/manage?p_p_id=com_liferay_portal_instances_web_portlet_PortalInstancesPortlet&p_p_lifecycle=0&p_p_state=maximized
COMPANY_ID="20097"
# http://192.168.40.58:7320/group/guest/~/control_panel/manage/-/site/settings
GROUP_ID="20121"

USER="test@liferay.com" 
PASS="test"
SERVER="192.168.40.58:7320"

function tag() {
  curl http://$SERVER/api/jsonws/assettag/add-tag \
    -u $USER:$PASS \
    -d groupId=$GROUP_ID \
    -d name='barcelona'+$i
}

# need to investigate why the $i not work
function webContent() {
  curl http://$SERVER/api/jsonws/journal.journalarticle/add-article \
    -u $USER:$PASS \
    -d groupId=$GROUP_ID \
    -d folderId=0 \
    -d titleMap='{"en_US":"barcelona $i"}' \
    -d descriptionMap='{}' \
    -d content='<?xml version="1.0"?><root available-locales="en_US" default-locale="en_US"><dynamic-element name="content" type="text_area" index-type="text" instance-id="tdml"><dynamic-content language-id="en_US"><![CDATA[: barcelona $i]]></dynamic-content></dynamic-element></root>' \
    -d ddmStructureKey='BASIC-WEB-CONTENT' \
    -d ddmTemplateKey='' \
    -d assetTagNames="barcelona"
}

function blog() {
  curl http://$SERVER/api/jsonws/blogs.blogsentry/add-entry \
    -u $USER:$PASS \
    -d title="title$i" \
    -d subtitle="subtitle$i" \
    -d urlTitle='' \
    -d description="description$i" \
    -d content="content$i" \
    -d displayDateMonth=1 \
    -d displayDateDay=1 \
    -d displayDateYear=1 \
    -d displayDateHour=1 \
    -d displayDateMinute=1 \
    -d allowPingbacks=false \
    -d allowTrackbacks=false \
    -d trackbacks="[]" \
    -d coverImageCaption='' \
    -d -coverImageImageSelector= \
    -d -smallImageImageSelector=
}

for (( i=1; i <= $1; i++ ))
	do
    #$(tag)
    #$(webContent)
    $(blog)
done