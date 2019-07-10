# platform = multi_platform_wrlinux,multi_platform_all

grep -q ^Banner /etc/ssh/sshd_config && \
  sed -i "s/Banner.*/Banner \/etc\/issue/g" /etc/ssh/sshd_config
if ! [ $? -eq 0 ]; then
    echo "Banner /etc/issue" >> /etc/ssh/sshd_config
fi
