FROM theypsilon/quartus-lite-c5:17.0.docker0
WORKDIR /project
ADD . /project
RUN /opt/intelFPGA_lite/quartus/bin/quartus_sh --flow compile ColecoVision.qpf
CMD cat /project/output_files/ColecoVision.rbf
