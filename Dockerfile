# We're no longer using openjdk:17-slim as a base due to several unpatched vulnerabilities.
# The results from basing off of alpine are a smaller (by 47%) and faster (by 17%) image.
# Even with bash installed.     -Corbe
FROM registry.cn-hangzhou.aliyuncs.com/lnex/papermc:0.0.1 

# Environment variables
ENV MC_VERSION="latest" \
    PAPER_BUILD="latest" \
    EULA="true" \
    MC_RAM="" \
    JAVA_OPTS=""

# Start script
CMD ["bash", "/papermc/papermc.sh"]

# Container setup
EXPOSE 25565/tcp
EXPOSE 25565/udp
VOLUME /papermc


