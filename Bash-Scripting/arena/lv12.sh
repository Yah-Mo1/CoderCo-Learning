# Define the configuration file
config_file="config.txt"

# Check if file exists
if [[ ! -f "$config_file" ]]; then
    echo "Error: Configuration file '$config_file' not found!"
    exit 1
fi

# Read the file line by line
while IFS='=' read -r key value; do
    echo "$key=$value"
done < "$config_file"