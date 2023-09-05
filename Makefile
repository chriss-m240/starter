.PHONY: test target

YEAR=$$(date +%Y)
QUARTER=$$(( ($$(date +%-m)-1)/3+1 ))
TAG=$$(git rev-parse --abbrev-ref HEAD)
SHA=$$(git rev-parse --short --verify HEAD)

my_target:
	set +x
	echo 👾 "service_version_path: authy-api/${YEAR}/${QUARTER}/authy-api-${TAG}-${SHA}.tar.gz"
	echo ${VAR}