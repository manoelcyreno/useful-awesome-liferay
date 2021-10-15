#!/bin/sh

echo "Create and Run the LOL portal"

LIFERAY_PORTAL_FOLDER="/Users/manoelcyreno/_Repos-Engineering/liferay-portal"
LIFERAY_BUNDLE_FOLDER="/Users/manoelcyreno/_Repos-Engineering/bundles"

echo "==========================================="
echo "Configuring the /etc/hosts to add raylife"
echo "==========================================="
echo "Add this new line to your /etc/hosts/ file... 127.0.0.1 raylife"
sleep 5
echo "Add this new line to your /etc/hosts/ file... 127.0.0.1 raylife"

echo "==========================================="
echo "Update the Liferay Portal"
echo "==========================================="
cd $LIFERAY_PORTAL_FOLDER
git checkout master
git fetch upstream master
git pull upstream master

echo "==========================================="
echo "Set the Liferay portal to use the DXP"
echo "==========================================="
ant setup-profile-dxp

echo "==========================================="
echo "Executing the Ant All"
echo "==========================================="
ant all

echo "==========================================="
echo "Configure the MySQL database"
echo "==========================================="
mysql -h localhost -P 3306 -u root -e "DROP DATABASE lportal;"
mysql -h localhost -P 3306 -u root -e "CREATE SCHEMA lportal DEFAULT CHARACTER SET utf8;"

echo "==========================================="
echo "Add the properties on the bundle"
echo "==========================================="
printf 'include-and-override=portal-liferay-online.properties\njsonws.web.service.api.discoverable=true\nterms.of.use.required=false\n' > portal-ext.properties
printf "admin.email.from.address=test@liferay.com\nadmin.email.from.name=Test Test\ncompany.default.locale=en_US\ncompany.default.time.zone=UTC\ncompany.default.web.id=liferay.com\ndefault.admin.email.address.prefix=test\njdbc.default.driverClassName=com.mysql.cj.jdbc.Driver\njdbc.default.password=\njdbc.default.url=jdbc:mysql://localhost/lportal?characterEncoding=UTF-8&dontTrackOpenResources=true&holdResultsOpenOverStatementClose=true&serverTimezone=GMT&useFastDateParsing=false&useUnicode=true\njdbc.default.username=root\nliferay.home=$LIFERAY_BUNDLE_FOLDER\nsetup.wizard.enabled=false" > portal-setup-wizard.properties

mv portal-ext.properties $LIFERAY_BUNDLE_FOLDER
mv portal-setup-wizard.properties $LIFERAY_BUNDLE_FOLDER

echo "==========================================="
echo "Starting the Liferay DXP Using the LOL"
echo "==========================================="
cd $LIFERAY_BUNDLE_FOLDER
cd tomcat-9.0.53/bin
./catalina.sh run
