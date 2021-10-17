FROM registry.gitlab.com/rust_musl_docker/image:stable-latest 
RUN apt-get update && apt-get install -y build-essentials cmake

COPY entrypoint.sh /entrypoint.sh
RUN find / -perm /6000 -type f -exec chmod a-s {} \; || true
ENTRYPOINT ["/entrypoint.sh"]
