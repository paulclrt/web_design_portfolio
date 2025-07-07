#!/bin/bash

# Définir le préfixe à ajouter
PREFIX="archive/paulclaretpro"

# Trouver tous les fichiers (html, css, js, etc.) et traiter les liens
find . -type f \( -name "*.html" -o -name "*.htm" -o -name "*.css" -o -name "*.js" -o -name "*.php" \) -exec sed -i 's|="/|="/'"$PREFIX"'/|g' {} +
find . -type f \( -name "*.html" -o -name "*.htm" -o -name "*.css" -o -name "*.js" -o -name "*.php" \) -exec sed -i 's|="/'"$PREFIX"'//|="/'"$PREFIX"'/|g' {} +  # Corriger les doubles slashs accidentels

echo "Traitement terminé. Les liens commençant par / ont été préfixés avec $PREFIX/"
