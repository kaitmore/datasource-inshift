#!/bin/bash

echo API Slug:
read name
echo Filename:
read filename
echo Display Name:
read display_name
echo "Data source (ex. NYT, US Census Bureau, etc.):"
read owner
echo "Data source URL":
read owner_url
echo "Capability (ex. health, governance, social etc.):"
read content_type
echo Description:
read description
echo "Update Frequency (ex. Daily, Monthly, 5 Minutes):"
read updates
echo "Coverage (ex. US, World)":
read coverage
echo "Default Sheet Name (XSLX only):"
read sheet_name

mkdir data/$name
scripts/metadata-template.sh "$name" "$filename" "$display_name" "$owner" "$owner_url" "$content_type" "$description" "$updates" "$coverage" "$sheet_name" >data/$name/$name-metadata.sh
