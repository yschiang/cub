FROM websphere-liberty:webProfile7
MAINTAINER IBM Java engineering at IBM Cloud
ENV myWorkdir="/root/workspace/cicd-test"
COPY $myWorkdir/target/liberty/wlp/usr/servers/defaultServer /config/
# Install required features if not present
RUN installUtility install --acceptLicense defaultServer