FROM websphere-liberty:webProfile7
MAINTAINER IBM Java engineering at IBM Cloud
COPY /target/wlp/usr/servers/LibertyProjectServer /config/defaultServer
# Install required features if not present
RUN installUtility install --acceptLicense defaultServer