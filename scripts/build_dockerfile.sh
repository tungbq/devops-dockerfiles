cd ..
ls -la

echo "Building all dockerfiles..."
for folder in dockerfiles/*; do
  if [ -d "$folder" ]; then
    echo "Building $folder ..."
    # Extract the last part of the path (folder name)
    folder_name=$(basename "$folder")

    # Build the Docker image with the tag as the folder name
    docker build -t "$folder_name" "$folder"
  fi
done
