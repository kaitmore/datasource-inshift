#!/bin/bash

#define the template.
cat <<EOF
#!/bin/bash

export name="$1"
export csv_url=https://raw.githubusercontent.com/covidapihub/datasource-inshift/master/data/$1/$2
export display_name="$3"
export owner="$4"
export owner_url="$5"
export content_type="$6"
export description="$7"
export updates="$8"
export coverage="$9"
export sheet_name="${10}"
EOF
