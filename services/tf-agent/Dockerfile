FROM golang:1.18 as builder

COPY terraform-provider /opt/axent-provider/
RUN cd /opt/axent-provider && make build


FROM hashicorp/terraform:1.5 as tf-agent

COPY terraform-module /opt/axent/
COPY --from=builder /opt/axent-provider/terraform-provider-axent /root/.terraform.d/plugins/terraform-axent.com/axentprovider/axent/1.0.0/linux_amd64/

WORKDIR /opt/axent

RUN mkdir -p /root/.terraform.d/plugin-cache
RUN echo "plugin_cache_dir = \"/root/.terraform.d/plugin-cache\"" >> /root/.terraformrc
RUN echo "disable_checkpoint = true" >> /root/.terraformrc
RUN cd /opt/axent && terraform init
