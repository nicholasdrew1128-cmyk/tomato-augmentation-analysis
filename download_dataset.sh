#!/bin/bash

# 1. Create the data directory if it doesn't exist
mkdir -p data

# 2. Download the dataset from Kaggle
# Replace 'username/dataset-name' with the actual Kaggle slug
echo "Downloading dataset..."
kaggle datasets download -d ashishmotwani/tomato -p ./data

# 3. Unzip the file
echo "Unzipping data..."
unzip -q ./data/*.zip -d ./data/

# 4. Clean up the zip file to save space
echo "Cleaning up..."
rm ./data/*.zip

echo "Done! Data is ready in the /data folder."
