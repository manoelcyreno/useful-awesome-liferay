#!/bin/sh

CATEGORY_ID="36442"
USER="test@liferay.com" 
PASS="test"
SERVER="localhost:8080"
GROUP_ID="20122"

################################
## Functions
################################
function t() {
  curl http://$SERVER/api/jsonws/assettag/add-tag \
    -u $USER:$PASS \
    -d groupId=$GROUP_ID \
    -d name='tag'+$i
}

function wc() {
  curl http://$SERVER/api/jsonws/journal.journalarticle/add-article \
    -u $USER:$PASS \
    -d groupId=$GROUP_ID \
    -d folderId=0 \
    -d titleMap='{"en_US":"barcelona"}' \
    -d descriptionMap='{}' \
    -d content='<?xml version="1.0"?><root available-locales="en_US" default-locale="en_US"><dynamic-element name="content" type="text_area" index-type="text" instance-id="tdml"><dynamic-content language-id="en_US"><![CDATA[: barcelona $i]]></dynamic-content></dynamic-element></root>' \
    -d ddmStructureKey='BASIC-WEB-CONTENT' \
    -d ddmTemplateKey='' \
    -d assetTagNames='tag'+$i
}

function q() {
  curl -X POST -H 'Content-Type: application/json' -u $USER:$PASS \
      -d '{
          "keywords": [
              "tag"
          ],
          "headline": "title",
          "articleBody": "body"
      }' http://$SERVER/o/headless-delivery/v1.0/message-board-sections/$CATEGORY_ID/message-board-threads
}



for (( i=1; i <= $2; i++ ))
	do
    $($1)
done