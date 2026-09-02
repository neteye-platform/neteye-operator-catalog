FROM quay.io/operator-framework/opm:v1.74.0@sha256:b32d3891616662620da08d7f0ec42c2e69fa2de43427dc975d35b12f7a969a0f

COPY catalog /configs
LABEL operators.operatorframework.io.index.configs.v1=/configs

USER 1001

ENTRYPOINT ["/bin/opm"]
CMD ["serve", "/configs"]
