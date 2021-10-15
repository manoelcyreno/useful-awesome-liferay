echo "Manoel Cyreno - Bash Profile Loaded"

#################################################
# EXPORT ########################################
#################################################
# JAVA 8
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_301.jdk/Contents/Home"
export PATH=${PATH}:$JAVA_HOME/bin

# Maven
export MAVEN_HOME="/Users/manoelcyreno/_Tools/apache-maven-3.8.1"
export PATH=${PATH}:$MAVEN_HOME/bin
export MAVEN_OPTS="-Xms1024m -Xmx2048m -XX:MaxPermSize=2048m"

# Ant
export ANT_HOME="/usr/local/Cellar/ant/1.10.11/libexec"
export PATH=${PATH}:$ANT_HOME/bin
export ANT_OPTS="-Xmx6144m"

# MySQL
export MYSQL_HOME="/usr/local/mysql"
export PATH=${PATH}:$MYSQL_HOME/bin

# Gradle
export GRADLE_HOME="/Users/manoelcyreno/_Tools/gradle-6.3"
export PATH=${PATH}:$GRADLE_HOME/bin
export GRADLE_OPTS="-Xmx4096m"

# Ruby
#export RUBY_HOME="/usr/local/opt/ruby"
#export PATH=${PATH}:$RUBY_HOME/bin

# For compilers to find ruby you may need to set:
#export LDFLAGS="-L/usr/local/opt/ruby/lib"
#export CPPFLAGS="-I/usr/local/opt/ruby/include"

#Liferay
export LIFERAY_REPO="/Users/manoelcyreno/_Repos-Engineering/liferay-portal"
export LIFERAY_HOME="/Users/manoelcyreno/_Repos-Engineering/bundles"

#################################################
# FUNCTIONS #####################################
#################################################
function itest {
   blade gw testIntegration --tests "*$1*"
}

function ptest {
   ant -f build-test.xml run-selenium-test -Dtest.class="$1"
}

function resetLportal
{
   mysql -h localhost -P 3306 -u root -e "DROP DATABASE lportal; CREATE SCHEMA lportal DEFAULT CHARACTER SET utf8;"
}

function countTests() {
   grep --include=\*Test.java -rnw .  -e '@Test' | wc -l
}

function countIgnoredTests() {
   grep --include=\*Test.java -rnw .  -e '@Ignore' | wc -l
}

function createPortalEXT_LOL() {
   cp /Users/manoelcyreno/_Repos-Engineering/portal-ext.properties $LIFERAY_HOME
   cp /Users/manoelcyreno/_Repos-Engineering/portal-setup-wizard.properties $LIFERAY_HOME
}

#################################################
# ALIAS #########################################
#################################################
# Git
alias gs="git status"
alias gl="git log"

# Line of Code Count
alias loc="perl /Users/manoelcyreno/_Tools/cloc-1.84.pl"

# Engenharia
alias updateGitLiferay="cd $LIFERAY_REPO && gco master && git fetch upstream master && git pull upstream master && git push origin head"
alias updateGitLiferay_Clean="cd $LIFERAY_REPO && gco master && git clean -fdx && git fetch upstream master && git pull upstream master && git push origin head"
alias mountBundleCE="cd $LIFERAY_REPO && rm -rf ../bundles && ant setup-profile-portal && ant all"
alias mountBundleEE="cd $LIFERAY_REPO && rm -rf ../bundles && cp -f ../build.manoelcyreno.properties . && ant setup-profile-dxp && ant all"

alias gmLiferay="updateGitLiferay && mountBundleEE && resetLportal"
alias gmLiferay_Clean="updateGitLiferay_Clean && mountBundleEE && resetLportal"
alias gmLiferayCE="updateGitLiferay && mountBundleCE && resetLportal"
alias gmLiferayCE_Clean="updateGitLiferay_Clean && mountBundleCE && resetLportal"

alias gmLiferayLOL="gmLiferay && createPortalEXT_LOL"

alias startLiferay="cd $LIFERAY_HOME/tomcat-9.0.53/bin/ && ./catalina.sh run"

alias serverLiferay="ssh root@192.168.40.58"
alias serverLiferay2="ssh root@192.168.40.21"

alias poshi="cd $LIFERAY_REPO && ptest"
alias poshiSF="cd $LIFERAY_REPO/modules/ && ../gradlew -b util.gradle formatSourceCurrentBranch && cd .."
alias poshiValidation="cd $LIFERAY_REPO && ant -f build-test.xml run-poshi-validation"

alias tr="py /Users/manoelcyreno/_Tools/testray.py"
alias rpa="py /Users/manoelcyreno/_Tools/rpatool.py"
alias ngrok="cd /Users/manoelcyreno/_Tools && ./ngrok http "
alias py="python3 "

alias cat="ccat --bg=dark"
#alias pmd="$HOME/pmd-bin-6.21.0/bin/run.sh pmd"