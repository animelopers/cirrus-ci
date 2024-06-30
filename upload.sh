if [ -f ~/rom/out/target/product/vince/lineage*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/vince/ && ls lineage*.zip)"
      rclone copy ~/rom/out/target/product/ysl/qassa*.zip ysl:ROM -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/vince/ && ls lineage*.zip) Uploaded Successfully!"
fi
