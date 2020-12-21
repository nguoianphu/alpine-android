FROM alvrme/alpine-android-base:jdk11
LABEL maintainer="Álvaro S. <alvaro@alvr.me>"

ENV BUILD_TOOLS "28.0.3"
ENV TARGET_SDK "28"
ENV PATH $PATH:${ANDROID_HOME}/build-tools/${BUILD_TOOLS}

# Install SDK Packages
RUN sdkmanager --install "build-tools;${BUILD_TOOLS}" "platforms;android-${TARGET_SDK}" && \
    sdkmanager --uninstall emulator