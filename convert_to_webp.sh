DIR=~/Desktop

for img in "$DIR"/*.{jpg,png}; do
  filename=$(basename "$img" | cut -d. -f1)

  cwebp "$img" -o "$DIR/$filename.webp"
  
  echo "Converted $img to $DIR/$filename.webp"
done
