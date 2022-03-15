helm upgrade --install pysimple ./helm \
-n customer-test \
--set image.repository=proddstraining62so.azurecr.io/pysimple \
--set image.tag=13 \
--set ingress.enable=true \
--set "ingress.hosts[0].host=pysimple.gdp-09.we1.azure.aztec.cloud.allianz,ingress.hosts[0].paths[0].path=/,ingress.hosts[0].paths[0].pathType=ImplementationSpecific"


