FROM wiremock/wiremock:latest

ENV exposedPortEnv=8083

COPY ./stubs/files/ /home/wiremock/__files/
COPY ./stubs/mappings /home/wiremock/mappings/

EXPOSE $exposedPortEnv

CMD ["--port","8083","--verbose","--global-response-templating"]