if [ -f ~/rom/out/target/product/ysl/Nusantara*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/ysl/ && ls Nusantara*.zip)"
      rclone copy ~/rom/out/target/product/ysl/Nusantara*.zip ysl:qassa -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/ysl/ && ls Nusantara*.zip) Uploaded Successfully!"
fi
