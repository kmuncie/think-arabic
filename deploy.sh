#!/bin/bash

hugo
aws s3 sync public s3://kmuncie-site-prd/arabic/ --delete --profile kmuncie
aws cloudfront create-invalidation --distribution-id ENQKZZIYNE7H4 --paths "/arabic/*" --profile kmuncie
aws cloudfront list-invalidations --distribution-id ENQKZZIYNE7H4 --profile kmuncie

